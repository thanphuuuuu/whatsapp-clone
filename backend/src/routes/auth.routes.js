import { Router } from 'express';
import { register, login, refresh, logout, getMe } from '../controllers/auth.controller.js';
import { protectRoute } from '../middlewares/auth.middleware.js';

const router = Router();

/**
 * @route   POST /api/auth/register
 * @desc    Đăng ký tài khoản người dùng mới
 * @body    { fullName: string, username: string, email: string, password: string }
 */
router.post('/register', register);

/**
 * @route   POST /api/auth/login
 * @desc    Đăng nhập hệ thống
 * @body    { username: string, password: string }
 * @res     { success: true, data: { user, accessToken }, cookie: refreshToken (httpOnly) }
 */
router.post('/login', login);

/**
 * @route   POST /api/auth/refresh
 * @desc    Làm mới Access Token khi token cũ hết hạn (Tự động đọc refreshToken từ httpOnly cookie)
 * @res     { success: true, data: { accessToken } }
 */
router.post('/refresh', refresh);

/**
 * @route   POST /api/auth/logout
 * @desc    Đăng xuất (Xóa Refresh Token khỏi DB và xóa Cookie phía Client)
 */
router.post('/logout', logout);

/**
 * @route   GET /api/auth/me
 * @desc    Lấy thông tin tài khoản đang đăng nhập (Yêu cầu Header Authorization: Bearer <access_token>)
 */
router.get('/me', protectRoute, getMe);

export default router;

