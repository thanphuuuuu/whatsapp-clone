import { useEffect, useRef } from 'react';
import { useCallStore } from '../callStore';
import { CallControls } from './CallControls';
import { UserAvatar } from '../../../components/shared/UserAvatar';
import { VideoOff } from 'lucide-react';

interface CallWindowProps {
  onEndCall: () => void;
}

export const CallWindow = ({ onEndCall }: CallWindowProps) => {
  const {
    callStatus,
    remoteUserInfo,
    localStream,
    remoteStream,
    isCameraOff,
    endReason,
  } = useCallStore();

  const localVideoRef = useRef<HTMLVideoElement | null>(null);
  const remoteVideoRef = useRef<HTMLVideoElement | null>(null);

  // Gắn stream vào các phần tử HTMLVideoElement
  useEffect(() => {
    if (localVideoRef.current && localStream) {
      localVideoRef.current.srcObject = localStream;
    }
  }, [localStream, callStatus]);

  useEffect(() => {
    if (remoteVideoRef.current && remoteStream) {
      remoteVideoRef.current.srcObject = remoteStream;
      remoteVideoRef.current.play().catch((err) => {
        console.error('Lỗi khi phát video/audio từ xa:', err);
      });
    }
  }, [remoteStream, callStatus]);

  if (callStatus === 'idle' || callStatus === 'ringing') return null;

  return (
    <div className="fixed inset-0 z-50 flex items-center justify-center bg-slate-950 text-white overflow-hidden animate-in fade-in duration-300">
      {/* 1. Main Background Remote Video Container */}
      <div className="relative w-full h-full flex items-center justify-center bg-zinc-900">
        {callStatus === 'connected' && remoteStream ? (
          <video
            ref={remoteVideoRef}
            autoPlay
            playsInline
            className="w-full h-full object-cover"
          />
        ) : (
          <div className="flex flex-col items-center space-y-6 text-center z-10 px-4">
            <UserAvatar
              fullName={remoteUserInfo?.fullName}
              avatar={remoteUserInfo?.avatar}
              size="lg"
              className="w-32 h-32 text-3xl border-4 border-primary/40 shadow-2xl animate-pulse"
            />
            <div>
              <h2 className="text-2xl font-bold">{remoteUserInfo?.fullName}</h2>
              <p className="text-sm text-zinc-400 mt-2">
                {callStatus === 'calling' && 'Đang gọi cuộc gọi video...'}
                {callStatus === 'ended' && (endReason || 'Cuộc gọi đã kết thúc')}
              </p>
            </div>
          </div>
        )}

        {/* 2. PIP Local Stream Container (nhỏ ở góc) */}
        {callStatus !== 'ended' && (
          <div className="absolute bottom-24 right-6 w-40 h-56 md:w-48 md:h-64 rounded-2xl overflow-hidden border-2 border-white/20 shadow-2xl bg-zinc-800 flex items-center justify-center z-20 transition-all">
            {!isCameraOff && localStream ? (
              <video
                ref={localVideoRef}
                autoPlay
                playsInline
                muted
                className="w-full h-full object-cover transform -scale-x-100"
              />
            ) : (
              <div className="flex flex-col items-center justify-center text-zinc-400 space-y-2 p-2">
                <VideoOff className="w-8 h-8 opacity-60" />
                <span className="text-[10px] font-medium text-center">Camera đang tắt</span>
              </div>
            )}
          </div>
        )}

        {/* 3. Call Header Info (Góc trên trái) */}
        <div className="absolute top-6 left-6 z-20 flex items-center space-x-3 bg-black/40 backdrop-blur-md px-4 py-2 rounded-full border border-white/10">
          <UserAvatar
            fullName={remoteUserInfo?.fullName}
            avatar={remoteUserInfo?.avatar}
            size="sm"
          />
          <div>
            <h3 className="text-sm font-semibold">{remoteUserInfo?.fullName}</h3>
            <span className="text-[11px] text-emerald-400 font-medium">
              {callStatus === 'connected' ? 'Đang gọi video' : 'Đang kết nối...'}
            </span>
          </div>
        </div>

        {/* 4. Bottom Controls Bar */}
        {callStatus !== 'ended' && (
          <div className="absolute bottom-8 left-1/2 -translate-x-1/2 z-30">
            <CallControls onEndCall={onEndCall} />
          </div>
        )}
      </div>
    </div>
  );
};
