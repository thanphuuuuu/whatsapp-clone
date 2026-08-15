import { createNewMessage } from '../services/message.service.js';

export const setupMessageSocket = (io, socket) => {
  const userId = socket.userId;

  // Client tham gia room conversation
  socket.on('conversation:join', ({ conversationId }) => {
    if (conversationId) {
      socket.join(`conversation:${conversationId}`);
    }
  });

  // Client rời room conversation
  socket.on('conversation:leave', ({ conversationId }) => {
    if (conversationId) {
      socket.leave(`conversation:${conversationId}`);
    }
  });

  // Client gửi tin nhắn realtime qua Socket
  socket.on(
    'message:send',
    async ({ conversationId, content, type, mediaUrl, fileName, fileSize }, callback) => {
      try {
        const { message, conversation } = await createNewMessage({
          conversationId,
          senderId: userId,
          content,
          type,
          mediaUrl,
          fileName,
          fileSize,
        });

        // 1. Phát sóng tin nhắn mới đến room cuộc trò chuyện
        io.to(`conversation:${conversationId}`).emit('message:new', {
          message,
          conversation,
        });

        // 2. Phát sóng cập nhật danh sách conversation cho từng thành viên
        conversation.members.forEach((member) => {
          const memberId = member._id ? member._id.toString() : member.toString();
          io.to(`user:${memberId}`).emit('conversation:update', {
            conversation,
            message,
          });
        });

        if (typeof callback === 'function') {
          callback({ status: 'ok', message });
        }
      } catch (error) {
        console.error('Lỗi khi gửi tin nhắn qua Socket:', error);
        if (typeof callback === 'function') {
          callback({ status: 'error', message: error.message });
        }
      }
    }
  );

  // Chỉ báo đang gõ (Typing Indicator)
  socket.on('typing:start', ({ conversationId }) => {
    if (conversationId) {
      socket.to(`conversation:${conversationId}`).emit('typing:start', {
        conversationId,
        userId,
      });
    }
  });

  socket.on('typing:stop', ({ conversationId }) => {
    if (conversationId) {
      socket.to(`conversation:${conversationId}`).emit('typing:stop', {
        conversationId,
        userId,
      });
    }
  });
};
