import { Server } from 'socket.io';
import { env } from '../config/env.js';
import { setupPresenceSocket } from './presence.socket.js';

let io = null;

export const initSocket = (server) => {
  io = new Server(server, {
    cors: {
      origin: env.CLIENT_URL,
      credentials: true,
    },
  });

  // Thiết lập Socket Presence & Authentication
  setupPresenceSocket(io);

  return io;
};

export const getIO = () => {
  if (!io) {
    throw new Error('Socket.io has not been initialized!');
  }
  return io;
};
