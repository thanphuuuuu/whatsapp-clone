import { api } from '../../lib/axios';
import type { User } from '../../store/authStore';

export interface MessageItem {
  _id: string;
  conversation: string;
  sender: User;
  type: 'text' | 'image' | 'file' | 'system';
  content: string;
  mediaUrl?: string;
  fileName?: string;
  fileSize?: number;
  seenBy?: string[];
  reactions?: Array<{ user: User; emoji: string }>;
  isEdited?: boolean;
  isDeleted?: boolean;
  createdAt: string;
  updatedAt: string;
}

export interface ConversationItem {
  _id: string;
  members: User[];
  isGroup: boolean;
  groupName?: string;
  groupAvatar?: string;
  groupAdmin?: User | string;
  lastMessage?: MessageItem;
  unreadCount?: Record<string, number>;
  createdAt: string;
  updatedAt: string;
}

export const uploadFileApi = async (file: File) => {
  const formData = new FormData();
  formData.append('file', file);

  const response = await api.post<{
    data: {
      url: string;
      fileName: string;
      fileSize: number;
      type: 'image' | 'file';
    };
    message: string;
  }>('/upload', formData, {
    headers: {
      'Content-Type': 'multipart/form-data',
    },
  });
  return response.data;
};

export const reactMessageApi = async (messageId: string, emoji: string) => {
  const response = await api.post<{
    data: { message: MessageItem };
    message: string;
  }>(`/conversations/messages/${messageId}/react`, { emoji });
  return response.data;
};

export const editMessageApi = async (messageId: string, content: string) => {
  const response = await api.patch<{
    data: { message: MessageItem };
    message: string;
  }>(`/conversations/messages/${messageId}`, { content });
  return response.data;
};

export const deleteMessageApi = async (messageId: string) => {
  const response = await api.delete<{
    data: { message: MessageItem };
    message: string;
  }>(`/conversations/messages/${messageId}`);
  return response.data;
};

export const getOrCreateDirectConversationApi = async (friendId: string) => {
  const response = await api.post<{
    data: { conversation: ConversationItem };
    message: string;
  }>(`/conversations/direct/${friendId}`);
  return response.data;
};

export const getConversationsApi = async () => {
  const response = await api.get<{
    data: { conversations: ConversationItem[] };
    message: string;
  }>('/conversations');
  return response.data;
};

export const createGroupConversationApi = async (payload: {
  groupName: string;
  groupAvatar?: string;
  memberIds: string[];
}) => {
  const response = await api.post<{
    data: { conversation: ConversationItem };
    message: string;
  }>('/conversations/group', payload);
  return response.data;
};

export const addGroupMembersApi = async (
  conversationId: string,
  memberIds: string[]
) => {
  const response = await api.post<{
    data: { conversation: ConversationItem };
    message: string;
  }>(`/conversations/${conversationId}/members`, { memberIds });
  return response.data;
};

export const removeGroupMemberApi = async (
  conversationId: string,
  targetUserId: string
) => {
  const response = await api.delete<{
    data: { conversation: ConversationItem };
    message: string;
  }>(`/conversations/${conversationId}/members/${targetUserId}`);
  return response.data;
};

export const updateGroupInfoApi = async (
  conversationId: string,
  payload: { groupName?: string; groupAvatar?: string }
) => {
  const response = await api.patch<{
    data: { conversation: ConversationItem };
    message: string;
  }>(`/conversations/${conversationId}/group`, payload);
  return response.data;
};

export const getMessagesApi = async (
  conversationId: string,
  cursor?: string,
  limit = 30
) => {
  const params = new URLSearchParams();
  if (cursor) params.append('cursor', cursor);
  params.append('limit', String(limit));

  const response = await api.get<{
    data: {
      messages: MessageItem[];
      nextCursor: string | null;
      hasMore: boolean;
    };
    message: string;
  }>(`/conversations/${conversationId}/messages?${params.toString()}`);
  return response.data;
};

export const sendMessageApi = async (
  conversationId: string,
  payload: {
    content: string;
    type?: string;
    mediaUrl?: string;
    fileName?: string;
    fileSize?: number;
  }
) => {
  const response = await api.post<{
    data: { message: MessageItem; conversation: ConversationItem };
    message: string;
  }>(`/conversations/${conversationId}/messages`, payload);
  return response.data;
};

export const markConversationAsReadApi = async (conversationId: string) => {
  const response = await api.patch<{
    data: { conversation: ConversationItem };
    message: string;
  }>(`/conversations/${conversationId}/read`);
  return response.data;
};
