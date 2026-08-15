import { create } from 'zustand';
import type { User } from './authStore';
import type { FriendUser, FriendRequestItem } from '../features/friends/api';

interface FriendState {
  friends: FriendUser[];
  receivedRequests: FriendRequestItem[];
  sentRequests: FriendRequestItem[];
  searchResults: User[];
  isLoading: boolean;

  setFriends: (friends: FriendUser[]) => void;
  setReceivedRequests: (requests: FriendRequestItem[]) => void;
  setSentRequests: (requests: FriendRequestItem[]) => void;
  setSearchResults: (users: User[]) => void;
  setIsLoading: (isLoading: boolean) => void;

  updateUserPresence: (userId: string, isOnline: boolean, lastSeenAt?: string) => void;
  removeReceivedRequest: (requestId: string) => void;
  removeSentRequest: (requestId: string) => void;
}

export const useFriendStore = create<FriendState>((set) => ({
  friends: [],
  receivedRequests: [],
  sentRequests: [],
  searchResults: [],
  isLoading: false,

  setFriends: (friends) => set({ friends }),
  setReceivedRequests: (receivedRequests) => set({ receivedRequests }),
  setSentRequests: (sentRequests) => set({ sentRequests }),
  setSearchResults: (searchResults) => set({ searchResults }),
  setIsLoading: (isLoading) => set({ isLoading }),

  updateUserPresence: (userId, isOnline, lastSeenAt) =>
    set((state) => ({
      friends: state.friends.map((friend) =>
        friend._id === userId
          ? {
              ...friend,
              isOnline,
              lastSeenAt: lastSeenAt || (isOnline ? friend.lastSeenAt : new Date().toISOString()),
            }
          : friend
      ),
      searchResults: state.searchResults.map((user) =>
        user._id === userId
          ? {
              ...user,
              isOnline,
              lastSeenAt: lastSeenAt || (isOnline ? user.lastSeenAt : new Date().toISOString()),
            }
          : user
      ),
    })),

  removeReceivedRequest: (requestId) =>
    set((state) => ({
      receivedRequests: state.receivedRequests.filter((r) => r._id !== requestId),
    })),

  removeSentRequest: (requestId) =>
    set((state) => ({
      sentRequests: state.sentRequests.filter((r) => r._id !== requestId),
    })),
}));
