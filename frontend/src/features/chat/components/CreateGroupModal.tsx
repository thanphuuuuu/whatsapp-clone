import { useState, useEffect } from 'react';
import { X, Users, Search, Check, Loader2, Upload } from 'lucide-react';
import { useFriendStore } from '../../../store/friendStore';
import { useChatStore } from '../../../store/chatStore';
import { getFriendsApi } from '../../friends/api';
import { createGroupConversationApi } from '../api';
import { UserAvatar } from '../../../components/shared/UserAvatar';
import { Input } from '../../../components/ui/input';
import { getSocket } from '../../../lib/socket';
import { toast } from 'sonner';

interface CreateGroupModalProps {
  isOpen: boolean;
  onClose: () => void;
}

export const CreateGroupModal = ({ isOpen, onClose }: CreateGroupModalProps) => {
  const { friends, setFriends } = useFriendStore();
  const { updateConversation, setActiveConversation } = useChatStore();

  const [groupName, setGroupName] = useState('');
  const [groupAvatar, setGroupAvatar] = useState('');
  const [selectedFriendIds, setSelectedFriendIds] = useState<string[]>([]);
  const [searchQuery, setSearchQuery] = useState('');
  const [isLoading, setIsLoading] = useState(false);
  const [isSubmitting, setIsSubmitting] = useState(false);

  useEffect(() => {
    if (isOpen) {
      loadFriends();
      setGroupName('');
      setGroupAvatar('');
      setSelectedFriendIds([]);
      setSearchQuery('');
    }
  }, [isOpen]);

  const loadFriends = async () => {
    try {
      setIsLoading(true);
      const res = await getFriendsApi();
      setFriends(res.data.friends);
    } catch (err) {
      console.error('Lỗi khi lấy danh sách bạn bè:', err);
    } finally {
      setIsLoading(false);
    }
  };

  const handleAvatarFileChange = (e: React.ChangeEvent<HTMLInputElement>) => {
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
        setGroupAvatar(reader.result);
        toast.success('Đã chọn ảnh đại diện nhóm!');
      }
    };
    reader.readAsDataURL(file);
  };

  if (!isOpen) return null;

  const toggleSelectFriend = (friendId: string) => {
    setSelectedFriendIds((prev) =>
      prev.includes(friendId)
        ? prev.filter((id) => id !== friendId)
        : [...prev, friendId]
    );
  };

  const filteredFriends = friends.filter((f) => {
    const q = searchQuery.toLowerCase();
    return (
      (f.fullName && f.fullName.toLowerCase().includes(q)) ||
      (f.username && f.username.toLowerCase().includes(q))
    );
  });

  const handleCreateGroup = async (e: React.FormEvent) => {
    e.preventDefault();

    if (!groupName.trim()) {
      toast.error('Vui lòng nhập tên nhóm');
      return;
    }

    if (selectedFriendIds.length < 2) {
      toast.error('Vui lòng chọn ít nhất 2 bạn bè để tạo nhóm');
      return;
    }

    try {
      setIsSubmitting(true);
      const res = await createGroupConversationApi({
        groupName: groupName.trim(),
        groupAvatar: groupAvatar || undefined,
        memberIds: selectedFriendIds,
      });

      const conversation = res.data.conversation;
      updateConversation(conversation);
      setActiveConversation(conversation);

      const socket = getSocket();
      if (socket) {
        socket.emit('conversation:join', { conversationId: conversation._id });
      }

      toast.success(`Đã tạo nhóm "${conversation.groupName}" thành công!`);
      onClose();
    } catch (err: any) {
      toast.error(err.response?.data?.message || 'Tạo nhóm thất bại');
    } finally {
      setIsSubmitting(false);
    }
  };

  return (
    <div className="fixed inset-0 z-50 bg-black/60 backdrop-blur-xs flex items-center justify-center p-4 animate-in fade-in duration-200">
      <div
        className="bg-card w-full max-w-md rounded-2xl border border-border shadow-2xl flex flex-col max-h-[85vh] overflow-hidden"
        onClick={(e) => e.stopPropagation()}
      >
        {/* Modal Header */}
        <div className="p-4 border-b border-border flex items-center justify-between bg-muted/20">
          <div className="flex items-center gap-2 text-foreground font-bold text-base">
            <Users className="w-5 h-5 text-primary" />
            <span>Tạo nhóm chat mới</span>
          </div>
          <button
            onClick={onClose}
            className="p-1.5 rounded-full hover:bg-muted text-muted-foreground hover:text-foreground transition-colors"
          >
            <X className="w-5 h-5" />
          </button>
        </div>

        {/* Form Body */}
        <form onSubmit={handleCreateGroup} className="flex-1 flex flex-col overflow-hidden">
          <div className="p-4 space-y-4 border-b border-border">
            {/* Group Avatar & Name Input */}
            <div className="flex items-center gap-3">
              <div className="relative group flex-shrink-0">
                {groupAvatar ? (
                  <img
                    src={groupAvatar}
                    alt="Group Avatar"
                    className="w-14 h-14 rounded-full object-cover border-2 border-primary/30"
                  />
                ) : (
                  <div className="w-14 h-14 rounded-full bg-primary/10 text-primary flex items-center justify-center font-bold border-2 border-primary/20">
                    <Users className="w-7 h-7" />
                  </div>
                )}
                <label
                  htmlFor="new-group-avatar-upload"
                  className="absolute inset-0 bg-black/40 rounded-full flex items-center justify-center text-white cursor-pointer opacity-0 group-hover:opacity-100 transition-opacity"
                  title="Chọn ảnh nhóm"
                >
                  <Upload className="w-4 h-4" />
                  <input
                    id="new-group-avatar-upload"
                    type="file"
                    accept="image/*"
                    onChange={handleAvatarFileChange}
                    className="hidden"
                  />
                </label>
              </div>

              <div className="flex-1">
                <label className="block text-xs font-semibold text-foreground mb-1">
                  Tên nhóm <span className="text-destructive">*</span>
                </label>
                <Input
                  type="text"
                  placeholder="VD: Hội Bạn Thân, Dự Án Web..."
                  value={groupName}
                  onChange={(e) => setGroupName(e.target.value)}
                  maxLength={50}
                  required
                  className="bg-muted/40 h-9 text-xs"
                />
              </div>
            </div>

            {/* Friend Search Bar */}
            <div>
              <div className="flex items-center justify-between mb-1.5">
                <label className="text-xs font-semibold text-foreground">
                  Chọn thành viên <span className="text-destructive">*</span>
                </label>
                <span className="text-[11px] text-muted-foreground">
                  Đã chọn{' '}
                  <strong className="text-primary font-bold">
                    {selectedFriendIds.length}
                  </strong>{' '}
                  bạn bè (tối thiểu 2)
                </span>
              </div>
              <div className="relative">
                <Search className="w-4 h-4 absolute left-3 top-1/2 -translate-y-1/2 text-muted-foreground" />
                <Input
                  type="text"
                  placeholder="Tìm bạn bè..."
                  value={searchQuery}
                  onChange={(e) => setSearchQuery(e.target.value)}
                  className="pl-9 bg-muted/40 h-9 text-xs"
                />
              </div>
            </div>
          </div>

          {/* Friend Selector List */}
          <div className="flex-1 overflow-y-auto p-2 divide-y divide-border/30 min-h-[160px]">
            {isLoading ? (
              <div className="flex justify-center items-center py-12 text-muted-foreground">
                <Loader2 className="w-6 h-6 animate-spin text-primary" />
              </div>
            ) : filteredFriends.length === 0 ? (
              <div className="text-center py-10 px-4 text-xs text-muted-foreground">
                {searchQuery
                  ? 'Không tìm thấy bạn bè phù hợp'
                  : 'Bạn chưa có người bạn nào trong danh bạ để tạo nhóm'}
              </div>
            ) : (
              filteredFriends.map((friend) => {
                const isSelected = selectedFriendIds.includes(friend._id);
                return (
                  <div
                    key={friend._id}
                    onClick={() => toggleSelectFriend(friend._id)}
                    className={`p-2.5 rounded-xl flex items-center justify-between cursor-pointer transition-colors ${
                      isSelected
                        ? 'bg-primary/10 border border-primary/30'
                        : 'hover:bg-muted/50'
                    }`}
                  >
                    <div className="flex items-center gap-3">
                      <UserAvatar
                        fullName={friend.fullName}
                        avatar={friend.avatar}
                        isOnline={friend.isOnline}
                        showStatus
                        size="md"
                      />
                      <div>
                        <h4 className="text-xs font-semibold text-foreground">
                          {friend.fullName}
                        </h4>
                        <p className="text-[11px] text-muted-foreground">
                          @{friend.username}
                        </p>
                      </div>
                    </div>

                    <div
                      className={`w-5 h-5 rounded-md border flex items-center justify-center transition-colors ${
                        isSelected
                          ? 'bg-primary border-primary text-primary-foreground'
                          : 'border-muted-foreground/40'
                      }`}
                    >
                      {isSelected && <Check className="w-3.5 h-3.5 stroke-[3]" />}
                    </div>
                  </div>
                );
              })
            )}
          </div>

          {/* Modal Footer */}
          <div className="p-4 border-t border-border bg-muted/20 flex items-center justify-end gap-2">
            <button
              type="button"
              onClick={onClose}
              className="px-4 py-2 text-xs font-semibold rounded-xl text-muted-foreground hover:bg-muted transition-colors"
            >
              Hủy
            </button>
            <button
              type="submit"
              disabled={isSubmitting || !groupName.trim() || selectedFriendIds.length < 2}
              className="inline-flex items-center gap-1.5 px-4 py-2 text-xs font-semibold rounded-xl bg-primary text-primary-foreground hover:bg-primary/90 transition-all disabled:opacity-50 disabled:cursor-not-allowed shadow-sm"
            >
              {isSubmitting && <Loader2 className="w-3.5 h-3.5 animate-spin" />}
              <span>Tạo nhóm ({selectedFriendIds.length + 1} người)</span>
            </button>
          </div>
        </form>
      </div>
    </div>
  );
};
