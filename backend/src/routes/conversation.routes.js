import { Router } from 'express';
import {
  getOrCreateDirect,
  getConversations,
  createGroup,
  addMembers,
  removeMember,
  updateGroup,
  getMessages,
  sendMessage,
  markAsRead,
  reactToMessage,
  editMessage,
  deleteMessage,
} from '../controllers/conversation.controller.js';
import { protectRoute } from '../middlewares/auth.middleware.js';

const router = Router();

// Tất cả các route bên dưới đều yêu cầu Header: Authorization: Bearer <access_token>
router.use(protectRoute);

/**
 * @route   POST /api/conversations/direct/:friendId
 * @desc    Tạo hoặc lấy cuộc trò chuyện 1-1 với bạn bè (Tự động tái sử dụng nếu đã tồn tại)
 * @param   friendId - ID của bạn bè
 */
router.post('/direct/:friendId', getOrCreateDirect);

/**
 * @route   GET /api/conversations
 * @desc    Lấy danh sách tất cả các cuộc trò chuyện (Direct & Group) của user hiện tại (Sắp xếp mới nhất lên đầu)
 */
router.get('/', getConversations);

/**
 * @route   POST /api/conversations/group
 * @desc    Tạo nhóm trò chuyện mới
 * @body    { groupName: string, groupAvatar?: string, memberIds: string[] } (memberIds phải có ít nhất 2 người bạn)
 */
router.post('/group', createGroup);

/**
 * @route   POST /api/conversations/:id/members
 * @desc    Thêm thành viên mới vào nhóm (Chỉ Admin nhóm mới có quyền)
 * @param   id - ID của cuộc trò chuyện nhóm
 * @body    { memberIds: string[] } - Danh sách ID người dùng cần thêm
 */
router.post('/:id/members', addMembers);

/**
 * @route   DELETE /api/conversations/:id/members/:userId
 * @desc    Xóa thành viên khỏi nhóm (Chỉ Admin nhóm mới có quyền) hoặc tự rời nhóm (nếu userId == ID chính mình)
 * @param   id - ID của cuộc trò chuyện nhóm
 * @param   userId - ID của người dùng bị xóa hoặc tự thoát
 */
router.delete('/:id/members/:userId', removeMember);

/**
 * @route   PATCH /api/conversations/:id/group
 * @desc    Cập nhật thông tin nhóm (Tên nhóm, Ảnh đại diện nhóm)
 * @param   id - ID của cuộc trò chuyện nhóm
 * @body    { groupName?: string, groupAvatar?: string }
 */
router.patch('/:id/group', updateGroup);

/**
 * @route   GET /api/conversations/:id/messages
 * @desc    Lấy danh sách tin nhắn của cuộc trò chuyện (Có hỗ trợ phân trang Cursor load tin nhắn cũ)
 * @param   id - ID của cuộc trò chuyện
 * @query   cursor?: string (ID của tin nhắn cũ nhất ở client để lấy tiếp trang cũ hơn)
 * @query   limit?: number (Số lượng tin nhắn trả về mỗi trang, mặc định: 30)
 */
router.get('/:id/messages', getMessages);

/**
 * @route   POST /api/conversations/:id/messages
 * @desc    Gửi tin nhắn mới qua HTTP REST API (Khuyến nghị dùng Socket event "message:send" trên Mobile để có trải nghiệm realtime tốt hơn)
 * @param   id - ID của cuộc trò chuyện
 * @body    { content?: string, type: 'text'|'image'|'file', mediaUrl?: string, fileName?: string, fileSize?: number }
 */
router.post('/:id/messages', sendMessage);

/**
 * @route   PATCH /api/conversations/:id/read
 * @desc    Đánh dấu đã đọc toàn bộ tin nhắn chưa đọc trong cuộc trò chuyện (Reset unreadCount về 0)
 * @param   id - ID của cuộc trò chuyện
 */
router.patch('/:id/read', markAsRead);

/**
 * @route   POST /api/conversations/messages/:id/react
 * @desc    Thả / Đổi / Bỏ cảm xúc (Reaction Emoji) cho một tin nhắn
 * @param   id - ID của tin nhắn
 * @body    { emoji: string } (Ví dụ: "❤️", "👍", "😂", "😮", "😢", "🙏")
 */
router.post('/messages/:id/react', reactToMessage);

/**
 * @route   PATCH /api/conversations/messages/:id
 * @desc    Chỉnh sửa nội dung tin nhắn văn bản (Chỉ người gửi mới có quyền)
 * @param   id - ID của tin nhắn
 * @body    { content: string } - Nội dung mới
 */
router.patch('/messages/:id', editMessage);

/**
 * @route   DELETE /api/conversations/messages/:id
 * @desc    Thu hồi tin nhắn (Soft delete - Chỉ người gửi mới có quyền, chuyển nội dung thành "Tin nhắn đã bị xóa")
 * @param   id - ID của tin nhắn
 */
router.delete('/messages/:id', deleteMessage);

export default router;

