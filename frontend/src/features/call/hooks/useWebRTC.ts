import { getSocket } from '../../../lib/socket';
import { useCallStore } from '../callStore';
import type { RemoteUserInfo } from '../callStore';
import { toast } from 'sonner';

/**
 * Cấu hình danh sách STUN Server công cộng của Google
 * Giúp 2 thiết bị tự tìm địa chỉ IP public của nhau qua NAT/Firewall
 */
const ICE_SERVERS: RTCConfiguration = {
  iceServers: [
    { urls: 'stun:stun.l.google.com:19302' },
    { urls: 'stun:stun1.l.google.com:19302' },
    { urls: 'stun:stun2.l.google.com:19302' },
    { urls: 'stun:stun3.l.google.com:19302' },
    { urls: 'stun:stun4.l.google.com:19302' },
  ],
};

// Quản lý biến Singleton WebRTC cho toàn bộ phiên ứng dụng
let pcInstance: RTCPeerConnection | null = null;
let pendingCandidates: RTCIceCandidateInit[] = [];
let pendingOffer: RTCSessionDescriptionInit | null = null;

/**
 * Hàm dọn dẹp toàn bộ kết nối WebRTC & giải phóng thiết bị phần cứng (Camera/Mic)
 */
export const cleanupWebRTC = () => {
  if (pcInstance) {
    pcInstance.onicecandidate = null;
    pcInstance.ontrack = null;
    pcInstance.onconnectionstatechange = null;
    pcInstance.close();
    pcInstance = null;
  }
  pendingCandidates = [];
  pendingOffer = null;

  // Dừng vật lý các luồng Camera/Microphone của máy local
  const { localStream } = useCallStore.getState();
  if (localStream) {
    localStream.getTracks().forEach((track) => track.stop());
  }

  useCallStore.getState().setLocalStream(null);
  useCallStore.getState().setRemoteStream(null);
};

/**
 * Hàm hỗ trợ nạp các ICE Candidate đến trước khi remoteDescription được khởi tạo
 */
const processPendingCandidates = async (pc: RTCPeerConnection) => {
  if (pendingCandidates.length > 0 && pc.remoteDescription) {
    const candidates = [...pendingCandidates];
    pendingCandidates = [];
    for (const candidate of candidates) {
      try {
        await pc.addIceCandidate(new RTCIceCandidate(candidate));
      } catch (e) {
        console.error('⚠️ Lỗi khi thêm ICE Candidate đã dồn:', e);
      }
    }
  }
};

/**
 * 4. Chủ động Kết thúc cuộc gọi (Cúp máy)
 * @param reason Lý do kết thúc cuộc gọi
 */
export const endCall = (reason = 'Cuộc gọi kết thúc') => {
  const { remoteUserId } = useCallStore.getState();
  if (remoteUserId) {
    const socket = getSocket();
    // Báo cho phía còn lại qua socket rằng mình đã cúp máy
    socket?.emit('call:end', {
      toUserId: remoteUserId,
    });
  }
  cleanupWebRTC();
  useCallStore.getState().setEnded(reason);
  setTimeout(() => useCallStore.getState().resetCall(), 1500);
};

/**
 * 3. Từ chối cuộc gọi đến (Người nhận bấm Từ chối hoặc Báo bận)
 * @param reason Lý do từ chối ('declined' hoặc 'busy')
 */
export const rejectCall = (reason = 'declined') => {
  const { remoteUserId, conversationId } = useCallStore.getState();
  if (remoteUserId) {
    const socket = getSocket();
    socket?.emit('call:reject', {
      toUserId: remoteUserId,
      conversationId,
      reason,
    });
  }
  cleanupWebRTC();
  useCallStore.getState().setEnded(reason === 'busy' ? 'Đối phương đang bận' : 'Đã từ chối cuộc gọi');
  setTimeout(() => useCallStore.getState().resetCall(), 1500);
};

/**
 * Tạo kết nối RTCPeerConnection mới, gắn các Media Tracks địa phương & đăng ký sự kiện WebRTC
 */
const createPeerConnection = (targetUserId: string, localStream: MediaStream) => {
  if (pcInstance) {
    pcInstance.close();
    pcInstance = null;
  }

  const pc = new RTCPeerConnection(ICE_SERVERS);
  pcInstance = pc;

  // Gắn các track Camera và Microphone vào kết nối P2P
  localStream.getTracks().forEach((track) => {
    pc.addTrack(track, localStream);
  });

  // Khi tìm thấy địa chỉ ICE Candidate mới -> Gửi sang cho đối phương qua Socket
  pc.onicecandidate = (event) => {
    if (event.candidate) {
      const socket = getSocket();
      socket?.emit('call:signal', {
        toUserId: targetUserId,
        signalData: { candidate: event.candidate },
      });
    }
  };

  // Lắng nghe khi nhận được Stream Video/Audio từ đối phương
  const remoteStream = new MediaStream();
  useCallStore.getState().setRemoteStream(remoteStream);

  pc.ontrack = (event) => {
    event.streams[0]?.getTracks().forEach((track) => {
      remoteStream.addTrack(track);
    });
  };

  // Theo dõi trạng thái kết nối mạng của WebRTC
  pc.onconnectionstatechange = () => {
    console.log('📶 WebRTC connectionState:', pc.connectionState);
    if (pc.connectionState === 'failed') {
      toast.error('Kết nối cuộc gọi đã bị ngắt');
      endCall('Mất kết nối mạng');
    }
  };

  return pc;
};

/**
 * 1. Khởi xướng cuộc gọi (Phía Người gọi - Caller)
 * Mở Camera/Mic địa phương -> Đổi trạng thái 'calling' -> Bắn event Socket `call:invite` sang người nhận
 */
export const initCall = async (
  targetConversationId: string,
  targetUserId: string,
  targetUserInfo: RemoteUserInfo
) => {
  try {
    cleanupWebRTC();
    // Yêu cầu quyền mở Camera và Microphone từ trình duyệt
    const stream = await navigator.mediaDevices.getUserMedia({
      video: true,
      audio: true,
    });

    useCallStore.getState().setLocalStream(stream);
    useCallStore.getState().startCalling(targetConversationId, targetUserId, targetUserInfo);

    // Phát sự kiện mời gọi qua Socket
    const socket = getSocket();
    socket?.emit('call:invite', {
      toUserId: targetUserId,
      conversationId: targetConversationId,
      callerInfo: targetUserInfo,
    });
  } catch (err: any) {
    console.error('Lỗi khi truy cập camera/mic:', err);
    toast.error('Không thể truy cập camera hoặc microphone. Vui lòng kiểm tra quyền truy cập.');
    useCallStore.getState().resetCall();
  }
};

/**
 * 2. Trả lời cuộc gọi (Phía Người nhận - Callee)
 * Mở Camera/Mic -> Bắn event Socket `call:accept` -> Tạo Peer Connection & Phản hồi SDP Answer
 */
export const answerCall = async () => {
  const { remoteUserId, conversationId } = useCallStore.getState();
  if (!remoteUserId) return;

  try {
    const stream = await navigator.mediaDevices.getUserMedia({
      video: true,
      audio: true,
    });

    useCallStore.getState().setLocalStream(stream);
    useCallStore.getState().setConnected();

    // Thông báo cho Caller biết mình đã đồng ý nghe
    const socket = getSocket();
    socket?.emit('call:accept', {
      toUserId: remoteUserId,
      conversationId,
    });

    const pc = createPeerConnection(remoteUserId, stream);

    // Nếu đã nhận sẵn SDP Offer từ Caller trước đó
    if (pendingOffer) {
      await pc.setRemoteDescription(new RTCSessionDescription(pendingOffer));
      pendingOffer = null;
      await processPendingCandidates(pc);

      const answer = await pc.createAnswer();
      await pc.setLocalDescription(answer);

      // Gửi SDP Answer phản hồi cho Caller
      socket?.emit('call:signal', {
        toUserId: remoteUserId,
        signalData: answer,
      });
    }
  } catch (err: any) {
    console.error('Lỗi khi chấp nhận cuộc gọi:', err);
    toast.error('Không thể mở camera hoặc microphone để trả lời cuộc gọi.');
    rejectCall();
  }
};

/**
 * 5. Xử lý các tín hiệu WebRTC Signaling truyền tới qua Socket (`call:signal`)
 * Bao gồm SDP Offer, SDP Answer và ICE Candidate
 */
export const handleSignalData = async (fromUserId: string, signalData: any) => {
  const socket = getSocket();

  // Nhận SDP Offer từ Caller
  if (signalData.type === 'offer') {
    if (!pcInstance) {
      pendingOffer = signalData;
    } else {
      await pcInstance.setRemoteDescription(new RTCSessionDescription(signalData));
      await processPendingCandidates(pcInstance);

      const answer = await pcInstance.createAnswer();
      await pcInstance.setLocalDescription(answer);

      socket?.emit('call:signal', {
        toUserId: fromUserId,
        signalData: answer,
      });
    }
  }

  // Nhận SDP Answer từ Callee
  else if (signalData.type === 'answer') {
    if (pcInstance && pcInstance.signalingState !== 'stable') {
      await pcInstance.setRemoteDescription(new RTCSessionDescription(signalData));
      await processPendingCandidates(pcInstance);
      useCallStore.getState().setConnected();
    }
  }

  // Nhận ICE Candidate
  else if (signalData.candidate) {
    if (pcInstance && pcInstance.remoteDescription) {
      try {
        await pcInstance.addIceCandidate(new RTCIceCandidate(signalData.candidate));
      } catch (e) {
        console.error('Lỗi thêm ICE Candidate:', e);
      }
    } else {
      pendingCandidates.push(signalData.candidate);
    }
  }
};

/**
 * 6. Xử lý phía Caller khi nhận được event `call:accepted` từ Callee
 * Tiến hành tạo SDP Offer và gửi sang cho Callee qua Socket `call:signal`
 */
export const handleCallAccepted = async (targetUserId: string) => {
  const { localStream } = useCallStore.getState();
  if (!localStream) return;

  const pc = createPeerConnection(targetUserId, localStream);
  const offer = await pc.createOffer();
  await pc.setLocalDescription(offer);

  const socket = getSocket();
  socket?.emit('call:signal', {
    toUserId: targetUserId,
    signalData: offer,
  });
};

/**
 * Custom Hook xuất các hàm điều khiển cuộc gọi WebRTC
 */
export const useWebRTC = () => {
  return {
    initCall,
    answerCall,
    rejectCall,
    endCall,
    handleSignalData,
    handleCallAccepted,
    cleanupWebRTC,
  };
};

