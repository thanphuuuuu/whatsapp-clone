import { api } from '../../lib/axios';
import type { User } from '../../store/authStore';

export interface FriendUser extends User {
  friendshipId: string;
}

export interface FriendRequestItem {
  _id: string;
  sender: User;
  receiver: User;
  status: 'pending' | 'accepted' | 'declined';
  createdAt: string;
}

export const sendFriendRequestApi = async (userId: string) => {
  const response = await api.post<{ data: { request: FriendRequestItem }; message: string }>(
    `/friends/request/${userId}`
  );
  return response.data;
};

export const acceptFriendRequestApi = async (requestId: string) => {
  const response = await api.patch<{ data: { request: FriendRequestItem }; message: string }>(
    `/friends/request/${requestId}/accept`
  );
  return response.data;
};

export const declineFriendRequestApi = async (requestId: string) => {
  const response = await api.patch<{ data: { request: FriendRequestItem }; message: string }>(
    `/friends/request/${requestId}/decline`
  );
  return response.data;
};

export const getFriendRequestsApi = async () => {
  const response = await api.get<{
    data: {
      receivedRequests: FriendRequestItem[];
      sentRequests: FriendRequestItem[];
    };
    message: string;
  }>('/friends/requests');
  return response.data;
};

export const getFriendsApi = async () => {
  const response = await api.get<{ data: { friends: FriendUser[] }; message: string }>(
    '/friends'
  );
  return response.data;
};
