import { useState } from 'react';
import { useAuthStore } from '../../../store/authStore';
import { useChatStore } from '../../../store/chatStore';
import { UserAvatar } from '../../../components/shared/UserAvatar';
import { GroupInfoModal } from './GroupInfoModal';
import { MoreVertical, Phone, Video, Users, Info } from 'lucide-react';
import type { ConversationItem } from '../api';

interface ChatHeaderProps {
  conversation: ConversationItem;
}

export const ChatHeader = ({ conversation }: ChatHeaderProps) => {
  const { user } = useAuthStore();
  const { typingUsers } = useChatStore();
  const [isGroupInfoOpen, setIsGroupInfoOpen] = useState(false);

  const friend = conversation.isGroup
    ? null
    : conversation.members.find((m) => m._id !== user?._id) || conversation.members[0];

  const currentTypingList = typingUsers[conversation._id] || [];

  // Tìm người đang gõ trong nhóm/hội thoại
  const typingUserObj = conversation.members.find(
    (m) => m._id !== user?._id && currentTypingList.includes(m._id)
  );

  return (
    <>
      <div className="h-16 px-6 border-b border-border bg-card flex items-center justify-between flex-none select-none">
        {/* User / Group Info */}
        <div
          onClick={() => {
            if (conversation.isGroup) setIsGroupInfoOpen(true);
          }}
          className={`flex items-center gap-3 ${
            conversation.isGroup ? 'cursor-pointer hover:opacity-90' : ''
          }`}
        >
          {conversation.isGroup ? (
            conversation.groupAvatar ? (
              <img
                src={conversation.groupAvatar}
                alt={conversation.groupName || 'Nhóm'}
                className="w-10 h-10 rounded-full object-cover border border-primary/20 flex-shrink-0"
              />
            ) : (
              <div className="w-10 h-10 rounded-full bg-primary/15 text-primary flex items-center justify-center font-bold text-sm shadow-inner flex-shrink-0 border border-primary/20">
                <Users className="w-5 h-5" />
              </div>
            )
          ) : (
            <UserAvatar
              fullName={friend?.fullName}
              avatar={friend?.avatar}
              isOnline={friend?.isOnline}
              showStatus
              size="md"
            />
          )}

          <div>
            <h2 className="text-sm font-bold text-foreground">
              {conversation.isGroup
                ? conversation.groupName || 'Nhóm trò chuyện'
                : friend?.fullName}
            </h2>
            <p className="text-xs text-muted-foreground">
              {typingUserObj ? (
                <span className="text-primary font-semibold animate-pulse">
                  {conversation.isGroup
                    ? `${typingUserObj.fullName} đang gõ...`
                    : 'Đang gõ...'}
                </span>
              ) : conversation.isGroup ? (
                <span>{conversation.members.length} thành viên</span>
              ) : friend?.isOnline ? (
                <span className="text-success font-medium">Đang hoạt động</span>
              ) : (
                'Ngoại tuyến'
              )}
            </p>
          </div>
        </div>

        {/* Action Icons */}
        <div className="flex items-center gap-1 text-muted-foreground">
          {conversation.isGroup && (
            <button
              onClick={() => setIsGroupInfoOpen(true)}
              className="p-2 rounded-full hover:bg-muted hover:text-foreground transition-colors"
              title="Thông tin nhóm"
            >
              <Info className="w-4 h-4 text-primary" />
            </button>
          )}
          <button
            className="p-2 rounded-full hover:bg-muted hover:text-foreground transition-colors opacity-50 cursor-not-allowed"
            title="Cuộc gọi thoại (Tính năng đang phát triển)"
          >
            <Phone className="w-4 h-4" />
          </button>
          <button
            className="p-2 rounded-full hover:bg-muted hover:text-foreground transition-colors opacity-50 cursor-not-allowed"
            title="Cuộc gọi video (Tính năng đang phát triển)"
          >
            <Video className="w-4 h-4" />
          </button>
          <button
            onClick={() => {
              if (conversation.isGroup) setIsGroupInfoOpen(true);
            }}
            className="p-2 rounded-full hover:bg-muted hover:text-foreground transition-colors"
            title="Tùy chọn"
          >
            <MoreVertical className="w-4 h-4" />
          </button>
        </div>
      </div>

      {/* Group Info Modal */}
      {conversation.isGroup && (
        <GroupInfoModal
          isOpen={isGroupInfoOpen}
          onClose={() => setIsGroupInfoOpen(false)}
          conversation={conversation}
        />
      )}
    </>
  );
};
