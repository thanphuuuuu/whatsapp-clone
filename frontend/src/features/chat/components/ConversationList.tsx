import { useState } from 'react';
import { Search, MessageSquarePlus, Users } from 'lucide-react';
import { useAuthStore } from '../../../store/authStore';
import { useChatStore } from '../../../store/chatStore';
import { UserAvatar } from '../../../components/shared/UserAvatar';
import { Input } from '../../../components/ui/input';
import { CreateGroupModal } from './CreateGroupModal';
import type { ConversationItem } from '../api';
import { format, isToday } from 'date-fns';

interface ConversationListProps {
  onOpenFriendsModal: () => void;
}

export const ConversationList = ({ onOpenFriendsModal }: ConversationListProps) => {
  const { user } = useAuthStore();
  const { conversations, activeConversation, setActiveConversation } = useChatStore();
  const [searchQuery, setSearchQuery] = useState('');
  const [isCreateGroupOpen, setIsCreateGroupOpen] = useState(false);

  const formatMessageTime = (dateString?: string) => {
    if (!dateString) return '';
    try {
      const date = new Date(dateString);
      if (isNaN(date.getTime())) return '';
      if (isToday(date)) {
        return format(date, 'HH:mm');
      }
      return format(date, 'dd/MM');
    } catch (e) {
      return '';
    }
  };

  const getOtherMember = (conv: ConversationItem) => {
    if (!user || !Array.isArray(conv.members)) return null;
    const friend = conv.members.find(
      (m) => typeof m === 'object' && m !== null && m._id !== user._id
    );
    return typeof friend === 'object' && friend !== null ? friend : null;
  };

  const filteredConversations = conversations.filter((conv) => {
    const q = searchQuery.toLowerCase();
    if (conv.isGroup) {
      return conv.groupName ? conv.groupName.toLowerCase().includes(q) : true;
    }
    const friend = getOtherMember(conv);
    if (!friend || !friend.fullName) return false;
    return (
      (friend.fullName && friend.fullName.toLowerCase().includes(q)) ||
      (friend.username && friend.username.toLowerCase().includes(q))
    );
  });

  return (
    <div className="w-80 sm:w-96 flex-none bg-background border-r border-border flex flex-col h-full select-none">
      {/* Header Bar */}
      <div className="p-4 border-b border-border bg-muted/20 flex items-center justify-between">
        <h1 className="text-xl font-bold tracking-tight text-foreground">Trò chuyện</h1>
        <div className="flex items-center gap-1">
          <button
            onClick={() => setIsCreateGroupOpen(true)}
            className="p-2 rounded-full hover:bg-muted text-muted-foreground hover:text-foreground transition-colors"
            title="Tạo nhóm chat mới"
          >
            <Users className="w-5 h-5 text-primary" />
          </button>
          <button
            onClick={onOpenFriendsModal}
            className="p-2 rounded-full hover:bg-muted text-muted-foreground hover:text-foreground transition-colors"
            title="Tạo cuộc trò chuyện mới từ Danh bạ"
          >
            <MessageSquarePlus className="w-5 h-5" />
          </button>
        </div>
      </div>

      {/* Search Bar */}
      <div className="p-3 border-b border-border/60">
        <div className="relative">
          <Search className="w-4 h-4 absolute left-3 top-1/2 -translate-y-1/2 text-muted-foreground" />
          <Input
            type="text"
            placeholder="Tìm kiếm cuộc trò chuyện hoặc nhóm..."
            value={searchQuery}
            onChange={(e) => setSearchQuery(e.target.value)}
            className="pl-9 bg-muted/40 h-9 text-xs"
          />
        </div>
      </div>

      {/* Conversation List */}
      <div className="flex-1 overflow-y-auto divide-y divide-border/30">
        {filteredConversations.length === 0 ? (
          <div className="text-center py-12 px-4 space-y-3">
            <p className="text-sm text-muted-foreground">
              {searchQuery ? 'Không tìm thấy cuộc trò chuyện' : 'Chưa có cuộc trò chuyện nào'}
            </p>
            <div className="flex items-center justify-center gap-3">
              <button
                onClick={onOpenFriendsModal}
                className="text-xs font-semibold text-primary hover:underline"
              >
                + Nhắn tin bạn bè
              </button>
              <span className="text-muted-foreground/40 text-xs">•</span>
              <button
                onClick={() => setIsCreateGroupOpen(true)}
                className="text-xs font-semibold text-primary hover:underline"
              >
                + Tạo nhóm
              </button>
            </div>
          </div>
        ) : (
          filteredConversations.map((conv) => {
            const isActive = activeConversation?._id === conv._id;
            const unread = conv.unreadCount && user ? conv.unreadCount[user._id] || 0 : 0;
            const lastMsg = conv.lastMessage;

            const titleName = conv.isGroup
              ? conv.groupName || 'Nhóm trò chuyện'
              : getOtherMember(conv)?.fullName || 'Người dùng';

            const friend = !conv.isGroup ? getOtherMember(conv) : null;

            return (
              <div
                key={conv._id}
                onClick={() => setActiveConversation(conv)}
                className={`p-3.5 flex items-center gap-3 cursor-pointer transition-colors ${
                  isActive
                    ? 'bg-primary/10 border-l-4 border-primary'
                    : 'hover:bg-muted/50'
                }`}
              >
                {conv.isGroup ? (
                  conv.groupAvatar ? (
                    <img
                      src={conv.groupAvatar}
                      alt={titleName}
                      className="w-12 h-12 rounded-full object-cover border border-primary/20 flex-shrink-0"
                    />
                  ) : (
                    <div className="w-12 h-12 rounded-full bg-primary/15 text-primary flex items-center justify-center font-bold text-base shadow-inner flex-shrink-0 border border-primary/20">
                      <Users className="w-6 h-6" />
                    </div>
                  )
                ) : (
                  <UserAvatar
                    fullName={friend?.fullName}
                    avatar={friend?.avatar}
                    isOnline={friend?.isOnline}
                    showStatus
                    size="lg"
                  />
                )}

                <div className="flex-1 min-w-0">
                  <div className="flex items-center justify-between mb-1">
                    <h3 className="text-sm font-semibold text-foreground truncate">
                      {titleName}
                    </h3>
                    {lastMsg && (
                      <span className="text-[11px] text-muted-foreground font-normal">
                        {formatMessageTime(lastMsg.createdAt || conv.updatedAt)}
                      </span>
                    )}
                  </div>

                  <div className="flex items-center justify-between gap-1">
                    <p
                      className={`text-xs truncate ${
                        unread > 0
                          ? 'font-bold text-foreground'
                          : 'text-muted-foreground'
                      }`}
                    >
                      {lastMsg ? (
                        lastMsg.sender?._id === user?._id ? (
                          `Bạn: ${lastMsg.content}`
                        ) : conv.isGroup && lastMsg.sender?.fullName ? (
                          `${lastMsg.sender.fullName}: ${lastMsg.content}`
                        ) : (
                          lastMsg.content
                        )
                      ) : (
                        <span className="italic text-muted-foreground/70">
                          Bắt đầu trò chuyện
                        </span>
                      )}
                    </p>

                    {unread > 0 && (
                      <span className="ml-1 px-1.5 py-0.5 text-[10px] font-bold bg-primary text-primary-foreground rounded-full flex-shrink-0">
                        {unread > 99 ? '99+' : unread}
                      </span>
                    )}
                  </div>
                </div>
              </div>
            );
          })
        )}
      </div>

      {/* Modal create group */}
      <CreateGroupModal
        isOpen={isCreateGroupOpen}
        onClose={() => setIsCreateGroupOpen(false)}
      />
    </div>
  );
};
