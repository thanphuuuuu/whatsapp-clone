import { useState, useEffect } from 'react';
import { X, User as UserIcon, Loader2, Save, Upload } from 'lucide-react';
import { useAuthStore } from '../../../store/authStore';
import { updateProfileApi } from '../../user/api';
import { UserAvatar } from '../../../components/shared/UserAvatar';
import { Button } from '../../../components/ui/button';
import { Input } from '../../../components/ui/input';
import { Label } from '../../../components/ui/label';
import { toast } from 'sonner';

interface ProfileModalProps {
  isOpen: boolean;
  onClose: () => void;
}

const PRESET_AVATARS = [
  'https://images.unsplash.com/photo-1534528741775-53994a69daeb?w=150&auto=format&fit=crop&q=80',
  'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?w=150&auto=format&fit=crop&q=80',
  'https://images.unsplash.com/photo-1494790108377-be9c29b29330?w=150&auto=format&fit=crop&q=80',
  'https://images.unsplash.com/photo-1500648767791-00dcc994a43e?w=150&auto=format&fit=crop&q=80',
  'https://images.unsplash.com/photo-1573496359142-b8d87734a5a2?w=150&auto=format&fit=crop&q=80',
];

export const ProfileModal = ({ isOpen, onClose }: ProfileModalProps) => {
  const { user, setUser } = useAuthStore();
  const [fullName, setFullName] = useState('');
  const [avatar, setAvatar] = useState('');
  const [loading, setLoading] = useState(false);

  useEffect(() => {
    if (user) {
      setFullName(user.fullName || '');
      setAvatar(user.avatar || '');
    }
  }, [user, isOpen]);

  if (!isOpen || !user) return null;

  const handleFileChange = (e: React.ChangeEvent<HTMLInputElement>) => {
    const file = e.target.files?.[0];
    if (!file) return;

    if (!file.type.startsWith('image/')) {
      toast.error('Vui lòng chọn tập tin ảnh hợp lệ (PNG, JPG, WebP...)');
      return;
    }

    if (file.size > 5 * 1024 * 1024) {
      toast.error('Dung lượng ảnh tối đa 5MB');
      return;
    }

    const reader = new FileReader();
    reader.onload = () => {
      if (typeof reader.result === 'string') {
        setAvatar(reader.result);
        toast.success('Đã tải ảnh lên từ thiết bị!');
      }
    };
    reader.readAsDataURL(file);
  };

  const handleSubmit = async (e: React.FormEvent) => {
    e.preventDefault();
    if (!fullName.trim()) {
      toast.error('Họ và tên không được để trống');
      return;
    }

    setLoading(true);
    try {
      const res = await updateProfileApi({ fullName, avatar });
      setUser(res.data.user);
      toast.success('Đã cập nhật thông tin cá nhân!');
      onClose();
    } catch (err: any) {
      toast.error(err.response?.data?.message || 'Lỗi khi cập nhật hồ sơ');
    } finally {
      setLoading(false);
    }
  };

  return (
    <div className="fixed inset-0 z-50 flex items-center justify-center p-4 bg-black/60 backdrop-blur-xs animate-in fade-in duration-200">
      <div className="w-full max-w-md bg-card border border-border rounded-2xl shadow-2xl overflow-hidden flex flex-col">
        {/* Header */}
        <div className="flex items-center justify-between px-6 py-4 border-b border-border bg-muted/30">
          <div className="flex items-center gap-2">
            <UserIcon className="w-5 h-5 text-primary" />
            <h2 className="text-lg font-bold text-foreground">Hồ sơ cá nhân</h2>
          </div>
          <button
            onClick={onClose}
            className="w-8 h-8 rounded-full flex items-center justify-center text-muted-foreground hover:text-foreground hover:bg-muted transition-colors"
          >
            <X className="w-4 h-4" />
          </button>
        </div>

        {/* Content Form */}
        <form onSubmit={handleSubmit} className="p-6 space-y-6">
          {/* Avatar Preview & File Selection */}
          <div className="flex flex-col items-center gap-3">
            <div className="relative group">
              <UserAvatar fullName={fullName} avatar={avatar} size="xl" />
              <label
                htmlFor="profile-avatar-upload"
                className="absolute inset-0 bg-black/40 rounded-full flex items-center justify-center text-white opacity-0 group-hover:opacity-100 cursor-pointer transition-opacity"
                title="Tải ảnh mới từ máy"
              >
                <Upload className="w-6 h-6" />
              </label>
            </div>

            <div className="flex items-center gap-2">
              <label
                htmlFor="profile-avatar-upload"
                className="cursor-pointer inline-flex items-center gap-1.5 px-3 py-1.5 rounded-lg bg-primary/10 text-primary hover:bg-primary/20 text-xs font-semibold transition-colors"
              >
                <Upload className="w-3.5 h-3.5" />
                <span>Tải ảnh từ thiết bị</span>
                <input
                  id="profile-avatar-upload"
                  type="file"
                  accept="image/*"
                  onChange={handleFileChange}
                  className="hidden"
                />
              </label>

              {avatar && (
                <button
                  type="button"
                  onClick={() => setAvatar('')}
                  className="text-xs text-muted-foreground hover:text-destructive transition-colors"
                >
                  Xóa ảnh
                </button>
              )}
            </div>

            {/* Presets option */}
            <div className="flex flex-col items-center gap-1 pt-1">
              <span className="text-[11px] text-muted-foreground">Hoặc chọn ảnh có sẵn:</span>
              <div className="flex items-center gap-2 pt-1">
                {PRESET_AVATARS.map((url, idx) => (
                  <button
                    key={idx}
                    type="button"
                    onClick={() => setAvatar(url)}
                    className={`w-8 h-8 rounded-full overflow-hidden border-2 transition-all ${
                      avatar === url ? 'border-primary scale-110' : 'border-transparent opacity-70 hover:opacity-100'
                    }`}
                  >
                    <img src={url} alt={`Preset ${idx}`} className="w-full h-full object-cover" />
                  </button>
                ))}
              </div>
            </div>
          </div>

          <div className="space-y-4">
            {/* Full Name */}
            <div className="space-y-1.5">
              <Label htmlFor="fullName">Họ và tên</Label>
              <Input
                id="fullName"
                type="text"
                value={fullName}
                onChange={(e) => setFullName(e.target.value)}
                placeholder="Nhập họ và tên..."
                required
              />
            </div>

            {/* Avatar URL */}
            <div className="space-y-1.5">
              <Label htmlFor="avatar">Đường dẫn ảnh đại diện (URL)</Label>
              <Input
                id="avatar"
                type="text"
                value={avatar}
                onChange={(e) => setAvatar(e.target.value)}
                placeholder="https://example.com/avatar.jpg"
              />
            </div>

            {/* Read-only fields */}
            <div className="grid grid-cols-2 gap-3 pt-2">
              <div className="space-y-1">
                <Label className="text-muted-foreground text-[11px]">Tên tài khoản</Label>
                <p className="text-xs font-semibold text-foreground bg-muted/40 p-2 rounded-md border border-border/50">
                  @{user.username}
                </p>
              </div>
              <div className="space-y-1">
                <Label className="text-muted-foreground text-[11px]">Email</Label>
                <p className="text-xs font-semibold text-foreground bg-muted/40 p-2 rounded-md border border-border/50 truncate">
                  {user.email || 'Chưa cập nhật'}
                </p>
              </div>
            </div>
          </div>

          {/* Action Button */}
          <div className="flex items-center justify-end gap-3 pt-2">
            <Button type="button" variant="outline" onClick={onClose} disabled={loading}>
              Hủy
            </Button>
            <Button type="submit" disabled={loading}>
              {loading ? (
                <>
                  <Loader2 className="w-4 h-4 mr-2 animate-spin" />
                  Đang lưu...
                </>
              ) : (
                <>
                  <Save className="w-4 h-4 mr-2" />
                  Lưu thay đổi
                </>
              )}
            </Button>
          </div>
        </form>
      </div>
    </div>
  );
};
