import { getSocket } from '../../../lib/socket';
import { useCallStore } from '../callStore';
import type { RemoteUserInfo } from '../callStore';
import { toast } from 'sonner';

const ICE_SERVERS: RTCConfiguration = {
  iceServers: [
    { urls: 'stun:stun.l.google.com:19302' },
    { urls: 'stun:stun1.l.google.com:19302' },
    { urls: 'stun:stun2.l.google.com:19302' },
    { urls: 'stun:stun3.l.google.com:19302' },
    { urls: 'stun:stun4.l.google.com:19302' },
  ],
};

// Singleton WebRTC instances cho toàn bộ ứng dụng
let pcInstance: RTCPeerConnection | null = null;
let pendingCandidates: RTCIceCandidateInit[] = [];
let pendingOffer: RTCSessionDescriptionInit | null = null;

// Helper dọn dẹp WebRTC & Streams
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

  const { localStream } = useCallStore.getState();
  if (localStream) {
    localStream.getTracks().forEach((track) => track.stop());
  }

  useCallStore.getState().setLocalStream(null);
  useCallStore.getState().setRemoteStream(null);
};

// Helper xử lý các ICE candidate chưa được nạp
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

// 4. Kết thúc cuộc gọi chủ động (Cúp máy)
export const endCall = (reason = 'Cuộc gọi kết thúc') => {
  const { remoteUserId } = useCallStore.getState();
  if (remoteUserId) {
    const socket = getSocket();
    socket?.emit('call:end', {
      toUserId: remoteUserId,
    });
  }
  cleanupWebRTC();
  useCallStore.getState().setEnded(reason);
  setTimeout(() => useCallStore.getState().resetCall(), 1500);
};

// 3. Từ chối cuộc gọi (Callee từ chối)
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

// Tạo RTCPeerConnection instance
const createPeerConnection = (targetUserId: string, localStream: MediaStream) => {
  if (pcInstance) {
    pcInstance.close();
    pcInstance = null;
  }

  const pc = new RTCPeerConnection(ICE_SERVERS);
  pcInstance = pc;

  // Add local tracks
  localStream.getTracks().forEach((track) => {
    pc.addTrack(track, localStream);
  });

  // Handle ICE Candidates
  pc.onicecandidate = (event) => {
    if (event.candidate) {
      const socket = getSocket();
      socket?.emit('call:signal', {
        toUserId: targetUserId,
        signalData: { candidate: event.candidate },
      });
    }
  };

  // Handle incoming Remote Stream Tracks
  const remoteStream = new MediaStream();
  useCallStore.getState().setRemoteStream(remoteStream);

  pc.ontrack = (event) => {
    event.streams[0]?.getTracks().forEach((track) => {
      remoteStream.addTrack(track);
    });
  };

  // Handle Connection state changes
  pc.onconnectionstatechange = () => {
    console.log('📶 WebRTC connectionState:', pc.connectionState);
    if (pc.connectionState === 'failed') {
      toast.error('Kết nối cuộc gọi đã bị ngắt');
      endCall('Mất kết nối mạng');
    }
  };

  return pc;
};

// 1. Khởi xướng cuộc gọi (Caller)
export const initCall = async (
  targetConversationId: string,
  targetUserId: string,
  targetUserInfo: RemoteUserInfo
) => {
  try {
    cleanupWebRTC();
    const stream = await navigator.mediaDevices.getUserMedia({
      video: true,
      audio: true,
    });

    useCallStore.getState().setLocalStream(stream);
    useCallStore.getState().startCalling(targetConversationId, targetUserId, targetUserInfo);

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

// 2. Trả lời cuộc gọi (Callee chấp nhận)
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

    const socket = getSocket();
    socket?.emit('call:accept', {
      toUserId: remoteUserId,
      conversationId,
    });

    const pc = createPeerConnection(remoteUserId, stream);

    // Nếu có offer đã gửi trước đó từ caller
    if (pendingOffer) {
      await pc.setRemoteDescription(new RTCSessionDescription(pendingOffer));
      pendingOffer = null;
      await processPendingCandidates(pc);

      const answer = await pc.createAnswer();
      await pc.setLocalDescription(answer);

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

// 5. Xử lý các tín hiệu WebRTC signaling (call:signal)
export const handleSignalData = async (fromUserId: string, signalData: any) => {
  const socket = getSocket();

  // Trường hợp nhận được SDP Offer
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

  // Trường hợp nhận được SDP Answer
  else if (signalData.type === 'answer') {
    if (pcInstance && pcInstance.signalingState !== 'stable') {
      await pcInstance.setRemoteDescription(new RTCSessionDescription(signalData));
      await processPendingCandidates(pcInstance);
      useCallStore.getState().setConnected();
    }
  }

  // Trường hợp nhận được ICE Candidate
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

// 6. Xử lý khi phía caller nhận event `call:accepted`
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
