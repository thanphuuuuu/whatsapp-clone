import { create } from 'zustand';

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

  setConnected: () =>
    set({
      callStatus: 'connected',
    }),

  setEnded: (reason = 'Cuộc gọi kết thúc') =>
    set({
      callStatus: 'ended',
      endReason: reason,
    }),

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

  setLocalStream: (localStream) => set({ localStream }),

  setRemoteStream: (remoteStream) => set({ remoteStream }),

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
