import { io, Socket } from 'socket.io-client';

const SOCKET_URL = import.meta.env.VITE_SOCKET_URL || 'http://localhost:5000';

let socket: Socket | null = null;

export const connectSocket = (accessToken: string): Socket => {
  if (!socket) {
    socket = io(SOCKET_URL, {
      auth: {
        token: accessToken,
      },
      withCredentials: true,
      autoConnect: true,
    });

    socket.on('connect', () => {
      console.log('🔌 Socket connected successfully:', socket?.id);
    });

    socket.on('connect_error', (error) => {
      console.error('❌ Socket connection error:', error.message);
    });
  }

  return socket;
};

export const getSocket = (): Socket | null => socket;

export const disconnectSocket = (): void => {
  if (socket) {
    socket.disconnect();
    socket = null;
    console.log('❌ Socket disconnected');
  }
};
