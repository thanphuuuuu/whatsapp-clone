import { useCallStore } from '../callStore';
import { UserAvatar } from '../../../components/shared/UserAvatar';
import { PhoneCall, PhoneOff } from 'lucide-react';
import { Button } from '../../../components/ui/button';

interface IncomingCallModalProps {
  onAccept: () => void;
  onReject: () => void;
}

/**
 * Component Modal cuộc gọi đến (Incoming Call Modal)
 * Tự động hiển thị nổi đè lên ứng dụng khi `callStatus === 'ringing'`
 * Cung cấp 2 lựa chọn: Từ chối (onReject) và Chấp nhận (onAccept)
 */
export const IncomingCallModal = ({ onAccept, onReject }: IncomingCallModalProps) => {
  const { callStatus, remoteUserInfo } = useCallStore();

  // Chỉ hiển thị modal khi có cuộc gọi đến (đang rung chuông)
  if (callStatus !== 'ringing' || !remoteUserInfo) return null;

  return (
    <div className="fixed inset-0 z-50 flex items-center justify-center bg-black/60 backdrop-blur-md animate-in fade-in duration-200">
      <div className="bg-card border border-border w-full max-w-sm rounded-3xl p-6 shadow-2xl flex flex-col items-center text-center space-y-6 animate-in zoom-in-95 duration-200">
        {/* Avatar đối phương kèm hiệu ứng sóng âm (ping animation) */}
        <div className="relative">
          <div className="absolute inset-0 rounded-full bg-primary/20 animate-ping opacity-75" />
          <div className="relative z-10">
            <UserAvatar
              fullName={remoteUserInfo.fullName}
              avatar={remoteUserInfo.avatar}
              size="lg"
              className="w-24 h-24 text-2xl border-4 border-primary/30 shadow-lg"
            />
          </div>
        </div>

        {/* Thông tin đối phương đang gọi tới */}
        <div>
          <h3 className="text-xl font-bold text-foreground">{remoteUserInfo.fullName}</h3>
          <p className="text-sm text-primary font-medium mt-1 animate-pulse">
            Cuộc gọi video đến...
          </p>
        </div>

        {/* Hàng nút điều khiển: Từ chối / Chấp nhận */}
        <div className="flex items-center justify-center gap-8 w-full pt-2">
          {/* Nút Từ chối cuộc gọi */}
          <div className="flex flex-col items-center gap-1">
            <Button
              onClick={onReject}
              size="icon"
              className="w-14 h-14 rounded-full bg-destructive text-destructive-foreground hover:bg-destructive/90 shadow-lg transition-transform hover:scale-110 active:scale-95"
              title="Từ chối"
            >
              <PhoneOff className="w-6 h-6" />
            </Button>
            <span className="text-xs text-muted-foreground font-medium">Từ chối</span>
          </div>

          {/* Nút Chấp nhận cuộc gọi */}
          <div className="flex flex-col items-center gap-1">
            <Button
              onClick={onAccept}
              size="icon"
              className="w-14 h-14 rounded-full bg-success text-white hover:bg-success/90 shadow-lg transition-transform hover:scale-110 active:scale-95 animate-bounce"
              title="Chấp nhận"
            >
              <PhoneCall className="w-6 h-6" />
            </Button>
            <span className="text-xs text-success font-semibold">Chấp nhận</span>
          </div>
        </div>
      </div>
    </div>
  );
};

