import { create } from 'zustand';

/**
 * Trạng thái cuộc gọi:
 * - 'idle': Đang rảnh rỗi, không ở trong cuộc gọi
 * - 'calling': Đang khởi xướng cuộc gọi đi (đợi phía kia nghe)
 * - 'ringing': Đang nhận cuộc gọi đến (đang đổ chuông)
 * - 'connected': Đã kết nối thành công, đang trao đổi video/audio 2 chiều
 * - 'ended': Cuộc gọi vừa kết thúc (hiển thị thông báo trước khi quay về idle)
 */
export type CallStatus = 'idle' | 'calling' | 'ringing' | 'connected' | 'ended';

export interface RemoteUserInfo {
  _id: string;
  fullName: string;
  avatar?: string;
  username?: string;
}

interface CallState {
  callStatus: CallStatus;
  conversationId: string | null;
  remoteUserId: string | null;
  remoteUserInfo: RemoteUserInfo | null;
  localStream: MediaStream | null;
  remoteStream: MediaStream | null;
  isMuted: boolean;
  isCameraOff: boolean;
  endReason: string | null;

  startCalling: (conversationId: string, remoteUserId: string, remoteUserInfo: RemoteUserInfo) => void;
  setRinging: (conversationId: string, remoteUserId: string, remoteUserInfo: RemoteUserInfo) => void;
  setConnected: () => void;
  setEnded: (reason?: string) => void;
  resetCall: () => void;
  setLocalStream: (stream: MediaStream | null) => void;
  setRemoteStream: (stream: MediaStream | null) => void;
  toggleMute: () => void;
  toggleCamera: () => void;
}

/**
 * Zustand Store quản lý trạng thái giao diện & media stream của tính năng cuộc gọi video
 */
export const useCallStore = create<CallState>((set) => ({
  callStatus: 'idle',
  conversationId: null,
  remoteUserId: null,
  remoteUserInfo: null,
  localStream: null,
  remoteStream: null,
  isMuted: false,
  isCameraOff: false,
  endReason: null,

  // Bắt đầu gọi đi (Caller)
  startCalling: (conversationId, remoteUserId, remoteUserInfo) =>
    set({
      callStatus: 'calling',
      conversationId,
      remoteUserId,
      remoteUserInfo,
      endReason: null,
      isMuted: false,
      isCameraOff: false,
    }),

  // Nhận được cuộc gọi đến (Callee)
  setRinging: (conversationId, remoteUserId, remoteUserInfo) =>
    set({
      callStatus: 'ringing',
      conversationId,
      remoteUserId,
      remoteUserInfo,
      endReason: null,
      isMuted: false,
      isCameraOff: false,
    }),

  // Chuyển sang trạng thái đã kết nối thành công
  setConnected: () =>
    set({
      callStatus: 'connected',
    }),

  // Kết thúc cuộc gọi và ghi nhận lý do
  setEnded: (reason = 'Cuộc gọi kết thúc') =>
    set({
      callStatus: 'ended',
      endReason: reason,
    }),

  // Đặt lại toàn bộ trạng thái về ban đầu (Idle)
  resetCall: () =>
    set({
      callStatus: 'idle',
      conversationId: null,
      remoteUserId: null,
      remoteUserInfo: null,
      localStream: null,
      remoteStream: null,
      isMuted: false,
      isCameraOff: false,
      endReason: null,
    }),

  // Lưu trữ luồng MediaStream địa phương (Microphone/Camera của máy mình)
  setLocalStream: (localStream) => set({ localStream }),

  // Lưu trữ luồng MediaStream đối phương (Microphone/Camera của máy bạn)
  setRemoteStream: (remoteStream) => set({ remoteStream }),

  // Bật/tắt trạng thái Mute microphone
  toggleMute: () =>
    set((state) => {
      const newMuted = !state.isMuted;
      if (state.localStream) {
        state.localStream.getAudioTracks().forEach((track) => {
          track.enabled = !newMuted;
        });
      }
      return { isMuted: newMuted };
    }),

  // Bật/tắt trạng thái Tắt camera
  toggleCamera: () =>
    set((state) => {
      const newCamOff = !state.isCameraOff;
      if (state.localStream) {
        state.localStream.getVideoTracks().forEach((track) => {
          track.enabled = !newCamOff;
        });
      }
      return { isCameraOff: newCamOff };
    }),
}));

