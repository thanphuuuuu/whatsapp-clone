import { User } from '../models/user.model.js';
import { createNewMessage } from '../services/message.service.js';

// Quản lý thông tin cuộc gọi (userId -> CallSession)
const activeCallSessions = new Map();

// Helper định dạng giây thành text mm:ss (ví dụ: 02:15)
const formatDurationText = (seconds) => {
  if (!seconds || seconds <= 0) return '00:00';
  const mins = Math.floor(seconds / 60);
  const secs = seconds % 60;
  return `${mins.toString().padStart(2, '0')}:${secs.toString().padStart(2, '0')}`;
};

// Helper lưu tin nhắn nhật ký cuộc gọi vào DB và phát sóng tới room
const saveAndBroadcastCallMessage = async (
  io,
  { conversationId, callerId, callStatus, callDuration = 0 }
) => {
  try {
    let content = 'Cuộc gọi video';
    if (callStatus === 'missed') {
      content = 'Đã nhỡ cuộc gọi video';
    } else if (callStatus === 'declined') {
      content = 'Cuộc gọi video bị từ chối';
    } else if (callStatus === 'busy') {
      content = 'Cuộc gọi video bị bận';
    } else if (callStatus === 'completed') {
      content = `Cuộc gọi video (${formatDurationText(callDuration)})`;
    }

    const { message, conversation } = await createNewMessage({
      conversationId,
      senderId: callerId,
      type: 'call',
      content,
      callType: 'video',
      callStatus,
      callDuration,
    });

    // 1. Phát sóng tin nhắn cuộc gọi mới tới room
    io.to(`conversation:${conversationId}`).emit('message:new', {
      message,
      conversation,
    });

    // 2. Cập nhật sidebar conversation cho từng thành viên
    conversation.members.forEach((member) => {
      const memberId = member._id ? member._id.toString() : member.toString();
      io.to(`user:${memberId}`).emit('conversation:update', {
        conversation,
        message,
      });
    });
  } catch (err) {
    console.error('Lỗi khi lưu và phát sóng tin nhắn cuộc gọi:', err);
  }
};

export const setupCallSocket = (io, socket) => {
  const userId = socket.userId;

  // 1. Gửi lời mời cuộc gọi: call:invite -> send call:incoming to target
  socket.on('call:invite', async ({ toUserId, conversationId, callerInfo }) => {
    try {
      if (!toUserId || !conversationId) return;

      let callerData = callerInfo;
      if (!callerData) {
        const user = await User.findById(userId).select('fullName avatar username');
        callerData = {
          _id: userId,
          fullName: user?.fullName || 'Người dùng',
          avatar: user?.avatar || '',
          username: user?.username || '',
        };
      }

      // Khởi tạo phiên cuộc gọi
      const session = {
        callerId: userId,
        calleeId: toUserId,
        conversationId,
        startTime: Date.now(),
        connectTime: null,
        accepted: false,
      };

      activeCallSessions.set(userId, session);
      activeCallSessions.set(toUserId, session);

      // Gửi event tới người nhận
      io.to(`user:${toUserId}`).emit('call:incoming', {
        fromUserId: userId,
        conversationId,
        fromUserInfo: callerData,
      });
    } catch (error) {
      console.error('Lỗi khi gửi call:invite:', error);
    }
  });

  // 2. Chấp nhận cuộc gọi: call:accept
  socket.on('call:accept', ({ toUserId, conversationId }) => {
    if (!toUserId) return;
    const session = activeCallSessions.get(userId);
    if (session) {
      session.accepted = true;
      session.connectTime = Date.now();
    }

    io.to(`user:${toUserId}`).emit('call:accepted', {
      fromUserId: userId,
      conversationId,
    });
  });

  // 3. Từ chối cuộc gọi: call:reject
  socket.on('call:reject', async ({ toUserId, conversationId, reason }) => {
    if (!toUserId) return;
    const session = activeCallSessions.get(userId);

    if (session) {
      activeCallSessions.delete(session.callerId);
      activeCallSessions.delete(session.calleeId);

      const status = reason === 'busy' ? 'busy' : 'declined';
      await saveAndBroadcastCallMessage(io, {
        conversationId: session.conversationId,
        callerId: session.callerId,
        callStatus: status,
        callDuration: 0,
      });
    }

    io.to(`user:${toUserId}`).emit('call:rejected', {
      fromUserId: userId,
      conversationId,
      reason: reason || 'declined',
    });
  });

  // 4. Relay SDP offer/answer hoặc ICE candidate: call:signal
  socket.on('call:signal', ({ toUserId, signalData }) => {
    if (!toUserId || !signalData) return;

    io.to(`user:${toUserId}`).emit('call:signal', {
      fromUserId: userId,
      signalData,
    });
  });

  // 5. Kết thúc cuộc gọi (Cúp máy)
  socket.on('call:end', async ({ toUserId }) => {
    if (!toUserId) return;
    const session = activeCallSessions.get(userId);

    if (session) {
      activeCallSessions.delete(session.callerId);
      activeCallSessions.delete(session.calleeId);

      if (session.accepted && session.connectTime) {
        const duration = Math.max(1, Math.floor((Date.now() - session.connectTime) / 1000));
        await saveAndBroadcastCallMessage(io, {
          conversationId: session.conversationId,
          callerId: session.callerId,
          callStatus: 'completed',
          callDuration: duration,
        });
      } else {
        await saveAndBroadcastCallMessage(io, {
          conversationId: session.conversationId,
          callerId: session.callerId,
          callStatus: 'missed',
          callDuration: 0,
        });
      }
    }

    io.to(`user:${toUserId}`).emit('call:ended', {
      fromUserId: userId,
    });
  });

  // 6. Xử lý khi ngắt kết nối socket đột ngột trong khi đang gọi
  socket.on('disconnect', async () => {
    const session = activeCallSessions.get(userId);
    if (session) {
      activeCallSessions.delete(session.callerId);
      activeCallSessions.delete(session.calleeId);

      const otherUserId = session.callerId === userId ? session.calleeId : session.callerId;

      if (session.accepted && session.connectTime) {
        const duration = Math.max(1, Math.floor((Date.now() - session.connectTime) / 1000));
        await saveAndBroadcastCallMessage(io, {
          conversationId: session.conversationId,
          callerId: session.callerId,
          callStatus: 'completed',
          callDuration: duration,
        });
      } else {
        await saveAndBroadcastCallMessage(io, {
          conversationId: session.conversationId,
          callerId: session.callerId,
          callStatus: 'missed',
          callDuration: 0,
        });
      }

      io.to(`user:${otherUserId}`).emit('call:ended', {
        fromUserId: userId,
        reason: 'disconnected',
      });
    }
  });
};
