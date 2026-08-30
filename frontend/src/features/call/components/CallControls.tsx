import { useCallStore } from '../callStore';
import { Mic, MicOff, Video, VideoOff, PhoneOff } from 'lucide-react';
import { Button } from '../../../components/ui/button';

interface CallControlsProps {
  onEndCall: () => void;
}

/**
 * Component Thanh công cụ điều khiển cuộc gọi (Mute Mic, Tắt Camera, Cúp máy)
 */
export const CallControls = ({ onEndCall }: CallControlsProps) => {
  const { isMuted, isCameraOff, toggleMute, toggleCamera } = useCallStore();

  return (
    <div className="flex items-center justify-center gap-4 bg-background/80 backdrop-blur-md px-6 py-3 rounded-full border border-border/50 shadow-2xl">
      {/* 1. Nút Bật/Tắt Microphone (Mute/Unmute) */}
      <Button
        onClick={toggleMute}
        variant={isMuted ? 'destructive' : 'secondary'}
        size="icon"
        className="w-12 h-12 rounded-full transition-transform hover:scale-105 active:scale-95"
        title={isMuted ? 'Bật micro' : 'Tắt micro'}
      >
        {isMuted ? <MicOff className="w-5 h-5" /> : <Mic className="w-5 h-5" />}
      </Button>

      {/* 2. Nút Bật/Tắt Camera (Video On/Off) */}
      <Button
        onClick={toggleCamera}
        variant={isCameraOff ? 'destructive' : 'secondary'}
        size="icon"
        className="w-12 h-12 rounded-full transition-transform hover:scale-105 active:scale-95"
        title={isCameraOff ? 'Bật camera' : 'Tắt camera'}
      >
        {isCameraOff ? <VideoOff className="w-5 h-5" /> : <Video className="w-5 h-5" />}
      </Button>

      {/* 3. Nút Kết thúc cuộc gọi (Nút màu đỏ cúp máy) */}
      <Button
        onClick={onEndCall}
        size="icon"
        className="w-12 h-12 rounded-full bg-destructive text-destructive-foreground hover:bg-destructive/90 transition-transform hover:scale-105 active:scale-95 shadow-md"
        title="Kết thúc cuộc gọi"
      >
        <PhoneOff className="w-5 h-5" />
      </Button>
    </div>
  );
};

