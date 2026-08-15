import express from 'express';
import cors from 'cors';
import cookieParser from 'cookie-parser';
import { env } from './config/env.js';
import { errorHandler } from './middlewares/error.middleware.js';
import { ApiResponse } from './utils/apiResponse.js';

const app = express();

// Middlewares
app.use(
  cors({
    origin: env.CLIENT_URL,
    credentials: true,
  })
);
app.use(express.json({ limit: '16kb' }));
app.use(express.urlencoded({ extended: true, limit: '16kb' }));
app.use(cookieParser());

import authRoutes from './routes/auth.routes.js';
import userRoutes from './routes/user.routes.js';
import friendRoutes from './routes/friend.routes.js';
import conversationRoutes from './routes/conversation.routes.js';
import uploadRoutes from './routes/upload.routes.js';

// Health check endpoint
app.get('/api/health', (req, res) => {
  return res
    .status(200)
    .json(new ApiResponse(200, { status: 'OK', timestamp: new Date() }, 'Server is healthy'));
});

// API Routes
app.use('/api/auth', authRoutes);
app.use('/api/users', userRoutes);
app.use('/api/friends', friendRoutes);
app.use('/api/conversations', conversationRoutes);
app.use('/api/upload', uploadRoutes);

// Global error handler
app.use(errorHandler);

export default app;
