import { useState, useEffect } from 'react';
import {
  X,
  Search,
  UserPlus,
  Check,
  UserCheck,
  Clock,
  Users,
  Inbox,
  MessageSquare,
} from 'lucide-react';
import { useFriendStore } from '../../../store/friendStore';
import { useChatStore } from '../../../store/chatStore';
import {
  getFriendsApi,
  getFriendRequestsApi,
  sendFriendRequestApi,
  acceptFriendRequestApi,
  declineFriendRequestApi,
} from '../api';
import { getOrCreateDirectConversationApi } from '../../chat/api';
import { searchUsersApi } from '../../user/api';
import { UserAvatar } from '../../../components/shared/UserAvatar';
import { Button } from '../../../components/ui/button';
import { Input } from '../../../components/ui/input';
import { toast } from 'sonner';

interface FriendsModalProps {
  isOpen: boolean;
  onClose: () => void;
}

export const FriendsModal = ({ isOpen, onClose }: FriendsModalProps) => {
  const [activeTab, setActiveTab] = useState<'friends' | 'requests' | 'search'>('friends');
  const [searchQuery, setSearchQuery] = useState('');
  const [friendSearch, setFriendSearch] = useState('');

  const {
    friends,
    receivedRequests,
    sentRequests,
    searchResults,
    setFriends,
    setReceivedRequests,
    setSentRequests,
    setSearchResults,
    removeReceivedRequest,
  } = useFriendStore();

  // Fetch friends and requests when modal opens
  useEffect(() => {
    if (isOpen) {
      loadFriendsAndRequests();
    }
  }, [isOpen]);

  const loadFriendsAndRequests = async () => {
    try {
      const [friendsRes, reqsRes] = await Promise.all([
        getFriendsApi(),
        getFriendRequestsApi(),
      ]);
      setFriends(friendsRes.data.friends);
      setReceivedRequests(reqsRes.data.receivedRequests);
      setSentRequests(reqsRes.data.sentRequests);
    } catch (err: any) {
      toast.error('Không thể tải dữ liệu bạn bè');
    }
  };

  // Search users API call
  useEffect(() => {
    if (activeTab !== 'search') return;

    const timer = setTimeout(async () => {
      if (!searchQuery.trim()) {
        setSearchResults([]);
        return;
      }
      try {
        const res = await searchUsersApi(searchQuery);
        setSearchResults(res.data.users);
      } catch (err) {
        console.error('Lỗi tìm kiếm user:', err);
      }
    }, 300);

    return () => clearTimeout(timer);
  }, [searchQuery, activeTab]);

  const handleSendRequest = async (userId: string) => {
    try {
      const res = await sendFriendRequestApi(userId);
      toast.success(res.message || 'Đã gửi lời mời kết bạn');
      // Reload requests
      const reqsRes = await getFriendRequestsApi();
      setReceivedRequests(reqsRes.data.receivedRequests);
      setSentRequests(reqsRes.data.sentRequests);
    } catch (err: any) {
      toast.error(err.response?.data?.message || 'Lỗi khi gửi lời mời kết bạn');
    }
  };

  const handleAcceptRequest = async (requestId: string) => {
    try {
      await acceptFriendRequestApi(requestId);
      toast.success('Đã chấp nhận lời mời kết bạn!');
      removeReceivedRequest(requestId);
      // Reload friends list
      const friendsRes = await getFriendsApi();
      setFriends(friendsRes.data.friends);
    } catch (err: any) {
      toast.error(err.response?.data?.message || 'Lỗi khi chấp nhận lời mời');
    }
  };

  const handleDeclineRequest = async (requestId: string) => {
    try {
      await declineFriendRequestApi(requestId);
      toast.info('Đã từ chối lời mời');
      removeReceivedRequest(requestId);
    } catch (err: any) {
      toast.error('Lỗi khi từ chối lời mời');
    }
  };

  if (!isOpen) return null;

  const filteredFriends = friends.filter(
    (f) =>
      f.fullName.toLowerCase().includes(friendSearch.toLowerCase()) ||
      f.username.toLowerCase().includes(friendSearch.toLowerCase())
  );

  return (
    <div className="fixed inset-0 z-50 flex items-center justify-center p-4 bg-black/60 backdrop-blur-xs animate-in fade-in duration-200">
      <div className="w-full max-w-xl bg-card border border-border rounded-2xl shadow-2xl overflow-hidden flex flex-col max-h-[85vh]">
        {/* Header */}
        <div className="flex items-center justify-between px-6 py-4 border-b border-border bg-muted/30">
          <div className="flex items-center gap-2">
            <Users className="w-5 h-5 text-primary" />
            <h2 className="text-lg font-bold text-foreground">Danh bạ & Kết bạn</h2>
          </div>
          <button
            onClick={onClose}
            className="w-8 h-8 rounded-full flex items-center justify-center text-muted-foreground hover:text-foreground hover:bg-muted transition-colors"
          >
            <X className="w-4 h-4" />
          </button>
        </div>

        {/* Tabs Navigation */}
        <div className="flex border-b border-border bg-background px-6 pt-2 gap-4">
          <button
            onClick={() => setActiveTab('friends')}
            className={`pb-3 text-sm font-medium border-b-2 transition-colors flex items-center gap-2 ${
              activeTab === 'friends'
                ? 'border-primary text-primary'
                : 'border-transparent text-muted-foreground hover:text-foreground'
            }`}
          >
            <UserCheck className="w-4 h-4" />
            Bạn bè ({friends.length})
          </button>
          <button
            onClick={() => setActiveTab('requests')}
            className={`pb-3 text-sm font-medium border-b-2 transition-colors flex items-center gap-2 relative ${
              activeTab === 'requests'
                ? 'border-primary text-primary'
                : 'border-transparent text-muted-foreground hover:text-foreground'
            }`}
          >
            <Inbox className="w-4 h-4" />
            Lời mời
            {receivedRequests.length > 0 && (
              <span className="ml-1 px-1.5 py-0.5 text-[10px] font-bold bg-primary text-primary-foreground rounded-full">
                {receivedRequests.length}
              </span>
            )}
          </button>
          <button
            onClick={() => setActiveTab('search')}
            className={`pb-3 text-sm font-medium border-b-2 transition-colors flex items-center gap-2 ${
              activeTab === 'search'
                ? 'border-primary text-primary'
                : 'border-transparent text-muted-foreground hover:text-foreground'
            }`}
          >
            <UserPlus className="w-4 h-4" />
            Tìm bạn mới
          </button>
        </div>

        {/* Tab Contents */}
        <div className="p-6 overflow-y-auto flex-1 space-y-4">
          {/* TAB 1: FRIENDS LIST */}
          {activeTab === 'friends' && (
            <div className="space-y-4">
              <div className="relative">
                <Search className="w-4 h-4 absolute left-3 top-1/2 -translate-y-1/2 text-muted-foreground" />
                <Input
                  type="text"
                  placeholder="Lọc danh sách bạn bè..."
                  value={friendSearch}
                  onChange={(e) => setFriendSearch(e.target.value)}
                  className="pl-9"
                />
              </div>

              {filteredFriends.length === 0 ? (
                <div className="text-center py-10 space-y-2">
                  <Users className="w-10 h-10 mx-auto text-muted-foreground/40" />
                  <p className="text-sm text-muted-foreground">
                    {friendSearch ? 'Không tìm thấy bạn bè phù hợp' : 'Chưa có bạn bè nào'}
                  </p>
                </div>
              ) : (
                <div className="divide-y divide-border/50">
                  {filteredFriends.map((friend) => (
                    <div
                      key={friend._id}
                      className="py-3 flex items-center justify-between hover:bg-muted/40 px-2 rounded-lg transition-colors"
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
                          <p className="text-sm font-semibold text-foreground">
                            {friend.fullName}
                          </p>
                          <p className="text-xs text-muted-foreground">
                            @{friend.username} •{' '}
                            <span className={friend.isOnline ? 'text-success font-medium' : ''}>
                              {friend.isOnline ? 'Đang online' : 'Ngoại tuyến'}
                            </span>
                          </p>
                        </div>
                      </div>

                      <Button
                        size="sm"
                        className="h-8 text-xs bg-primary hover:bg-primary/90"
                        onClick={async () => {
                          try {
                            const res = await getOrCreateDirectConversationApi(friend._id);
                            useChatStore.getState().setActiveConversation(res.data.conversation);
                            useChatStore.getState().updateConversation(res.data.conversation);
                            onClose();
                          } catch (err) {
                            toast.error('Lỗi khi mở cuộc trò chuyện');
                          }
                        }}
                      >
                        <MessageSquare className="w-3.5 h-3.5 mr-1" />
                        Nhắn tin
                      </Button>
                    </div>
                  ))}
                </div>
              )}
            </div>
          )}

          {/* TAB 2: REQUESTS (RECEIVED & SENT) */}
          {activeTab === 'requests' && (
            <div className="space-y-6">
              {/* Received Requests */}
              <div className="space-y-3">
                <h3 className="text-xs font-bold uppercase tracking-wider text-muted-foreground">
                  Lời mời đã nhận ({receivedRequests.length})
                </h3>
                {receivedRequests.length === 0 ? (
                  <p className="text-xs text-muted-foreground py-2 italic">
                    Không có lời mời kết bạn nào
                  </p>
                ) : (
                  <div className="space-y-2">
                    {receivedRequests.map((req) => (
                      <div
                        key={req._id}
                        className="flex items-center justify-between p-3 rounded-xl bg-muted/30 border border-border/60"
                      >
                        <div className="flex items-center gap-3">
                          <UserAvatar
                            fullName={req.sender.fullName}
                            avatar={req.sender.avatar}
                            size="md"
                          />
                          <div>
                            <p className="text-sm font-semibold text-foreground">
                              {req.sender.fullName}
                            </p>
                            <p className="text-xs text-muted-foreground">
                              @{req.sender.username}
                            </p>
                          </div>
                        </div>
                        <div className="flex items-center gap-2">
                          <Button
                            size="sm"
                            className="h-8 text-xs bg-primary hover:bg-primary/90"
                            onClick={() => handleAcceptRequest(req._id)}
                          >
                            <Check className="w-3.5 h-3.5 mr-1" />
                            Đồng ý
                          </Button>
                          <Button
                            size="sm"
                            variant="outline"
                            className="h-8 text-xs text-destructive hover:bg-destructive/10"
                            onClick={() => handleDeclineRequest(req._id)}
                          >
                            Từ chối
                          </Button>
                        </div>
                      </div>
                    ))}
                  </div>
                )}
              </div>

              {/* Sent Requests */}
              <div className="space-y-3 pt-2">
                <h3 className="text-xs font-bold uppercase tracking-wider text-muted-foreground">
                  Lời mời đã gửi ({sentRequests.length})
                </h3>
                {sentRequests.length === 0 ? (
                  <p className="text-xs text-muted-foreground py-2 italic">
                    Bạn chưa gửi lời mời kết bạn nào
                  </p>
                ) : (
                  <div className="space-y-2">
                    {sentRequests.map((req) => (
                      <div
                        key={req._id}
                        className="flex items-center justify-between p-3 rounded-xl bg-muted/20 border border-border/40"
                      >
                        <div className="flex items-center gap-3">
                          <UserAvatar
                            fullName={req.receiver.fullName}
                            avatar={req.receiver.avatar}
                            size="md"
                          />
                          <div>
                            <p className="text-sm font-medium text-foreground">
                              {req.receiver.fullName}
                            </p>
                            <p className="text-xs text-muted-foreground">
                              @{req.receiver.username}
                            </p>
                          </div>
                        </div>
                        <span className="text-xs text-muted-foreground flex items-center gap-1 bg-muted px-2.5 py-1 rounded-full">
                          <Clock className="w-3 h-3" /> Đang chờ
                        </span>
                      </div>
                    ))}
                  </div>
                )}
              </div>
            </div>
          )}

          {/* TAB 3: SEARCH USERS */}
          {activeTab === 'search' && (
            <div className="space-y-4">
              <div className="relative">
                <Search className="w-4 h-4 absolute left-3 top-1/2 -translate-y-1/2 text-muted-foreground" />
                <Input
                  type="text"
                  placeholder="Nhập tên tài khoản, họ tên hoặc email..."
                  value={searchQuery}
                  onChange={(e) => setSearchQuery(e.target.value)}
                  className="pl-9"
                  autoFocus
                />
              </div>

              {searchResults.length === 0 ? (
                <div className="text-center py-10 space-y-2">
                  <Search className="w-10 h-10 mx-auto text-muted-foreground/40" />
                  <p className="text-sm text-muted-foreground">
                    {searchQuery.trim()
                      ? 'Không tìm thấy người dùng nào'
                      : 'Nhập thông tin người dùng để tìm kiếm'}
                  </p>
                </div>
              ) : (
                <div className="divide-y divide-border/50">
                  {searchResults.map((user) => {
                    const isFriend = friends.some((f) => f._id === user._id);
                    const isSent = sentRequests.some((r) => r.receiver._id === user._id);
                    const isReceived = receivedRequests.some((r) => r.sender._id === user._id);

                    return (
                      <div
                        key={user._id}
                        className="py-3 flex items-center justify-between hover:bg-muted/40 px-2 rounded-lg transition-colors"
                      >
                        <div className="flex items-center gap-3">
                          <UserAvatar
                            fullName={user.fullName}
                            avatar={user.avatar}
                            isOnline={user.isOnline}
                            showStatus
                            size="md"
                          />
                          <div>
                            <p className="text-sm font-semibold text-foreground">
                              {user.fullName}
                            </p>
                            <p className="text-xs text-muted-foreground">
                              @{user.username}
                            </p>
                          </div>
                        </div>

                        {isFriend ? (
                          <span className="text-xs text-primary font-medium flex items-center gap-1 bg-primary/10 px-2.5 py-1 rounded-full">
                            <UserCheck className="w-3.5 h-3.5" /> Bạn bè
                          </span>
                        ) : isSent ? (
                          <span className="text-xs text-muted-foreground flex items-center gap-1 bg-muted px-2.5 py-1 rounded-full">
                            <Clock className="w-3.5 h-3.5" /> Đã gửi lời mời
                          </span>
                        ) : isReceived ? (
                          <Button
                            size="sm"
                            className="h-8 text-xs bg-primary"
                            onClick={() => setActiveTab('requests')}
                          >
                            Xem lời mời
                          </Button>
                        ) : (
                          <Button
                            size="sm"
                            variant="outline"
                            className="h-8 text-xs hover:border-primary hover:text-primary"
                            onClick={() => handleSendRequest(user._id)}
                          >
                            <UserPlus className="w-3.5 h-3.5 mr-1" />
                            Kết bạn
                          </Button>
                        )}
                      </div>
                    );
                  })}
                </div>
              )}
            </div>
          )}
        </div>
      </div>
    </div>
  );
};
