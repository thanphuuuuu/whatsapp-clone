import { api } from '../../lib/axios';
import type { User } from '../../store/authStore';

export interface RegisterPayload {
  fullName: string;
  email: string;
  username: string;
  password: string;
}

export interface LoginPayload {
  username: string;
  password: string;
}

export interface AuthResponse {
  user: User;
  accessToken?: string;
}

export const registerApi = async (payload: RegisterPayload) => {
  const response = await api.post<{ data: AuthResponse; message: string }>(
    '/auth/register',
    payload
  );
  return response.data;
};

export const loginApi = async (payload: LoginPayload) => {
  const response = await api.post<{ data: AuthResponse; message: string }>(
    '/auth/login',
    payload
  );
  return response.data;
};

export const refreshApi = async () => {
  const response = await api.post<{ data: { accessToken: string; user: User } }>(
    '/auth/refresh'
  );
  return response.data;
};

export const logoutApi = async () => {
  const response = await api.post<{ message: string }>('/auth/logout');
  return response.data;
};

export const getMeApi = async () => {
  const response = await api.get<{ data: { user: User } }>('/auth/me');
  return response.data;
};
