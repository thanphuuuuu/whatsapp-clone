import { api } from '../../lib/axios';
import type { User } from '../../store/authStore';

export interface UpdateProfilePayload {
  fullName?: string;
  avatar?: string;
}

export const updateProfileApi = async (payload: UpdateProfilePayload) => {
  const response = await api.patch<{ data: { user: User }; message: string }>(
    '/users/me',
    payload
  );
  return response.data;
};

export const searchUsersApi = async (query: string) => {
  const response = await api.get<{ data: { users: User[] }; message: string }>(
    `/users/search?q=${encodeURIComponent(query)}`
  );
  return response.data;
};
