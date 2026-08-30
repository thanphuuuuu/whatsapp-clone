import { Router } from 'express';
import {
  sendRequest,
  acceptRequest,
  declineRequest,
  getRequests,
  getFriends,
} from '../controllers/friend.controller.js';
import { protectRoute } from '../middlewares/auth.middleware.js';

const router = Router();

// Tất cả các route kết bạn đều yêu cầu Header: Authorization: Bearer <access_token>
router.use(protectRoute);

/**
 * @route   POST /api/friends/request/:userId
 * @desc    Gửi lời mời kết bạn tới một người dùng
 * @param   userId - ID của người nhận lời mời
 */
router.post('/request/:userId', sendRequest);

/**
 * @route   PATCH /api/friends/request/:requestId/accept
 * @desc    Chấp nhận lời mời kết bạn
 * @param   requestId - ID của bản ghi FriendRequest
 */
router.patch('/request/:requestId/accept', acceptRequest);

/**
 * @route   PATCH /api/friends/request/:requestId/decline
 * @desc    Từ chối lời mời kết bạn
 * @param   requestId - ID của bản ghi FriendRequest
 */
router.patch('/request/:requestId/decline', declineRequest);

/**
 * @route   GET /api/friends/requests
 * @desc    Lấy danh sách các lời mời kết bạn đang chờ (gồm lời mời đã nhận receivedRequests & lời mời đã gửi sentRequests)
 */
router.get('/requests', getRequests);

/**
 * @route   GET /api/friends
 * @desc    Lấy danh sách bạn bè hiện tại của user
 */
router.get('/', getFriends);

export default router;

