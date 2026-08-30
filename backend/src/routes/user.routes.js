import { Router } from 'express';
import {
  getProfile,
  updateProfile,
  searchUsersController,
} from '../controllers/user.controller.js';
import { protectRoute } from '../middlewares/auth.middleware.js';

const router = Router();

// Tất cả các route bên dưới đều yêu cầu Header: Authorization: Bearer <access_token>
router.use(protectRoute);

/**
 * @route   GET /api/users/me
 * @desc    Lấy thông tin profile cá nhân
 */
router.get('/me', getProfile);

/**
 * @route   PATCH /api/users/me
 * @desc    Cập nhật thông tin cá nhân (Tên hiển thị, Ảnh đại diện)
 * @body    { fullName?: string, avatar?: string }
 */
router.patch('/me', updateProfile);

/**
 * @route   GET /api/users/search
 * @desc    Tìm kiếm người dùng theo username, fullName hoặc email
 * @query   q - Từ khóa tìm kiếm (Ví dụ: /api/users/search?q=john)
 */
router.get('/search', searchUsersController);

export default router;

