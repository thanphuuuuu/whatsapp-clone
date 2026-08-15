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

router.use(protectRoute);

router.post('/direct/:friendId', getOrCreateDirect);
router.get('/', getConversations);
router.post('/group', createGroup);
router.post('/:id/members', addMembers);
router.delete('/:id/members/:userId', removeMember);
router.patch('/:id/group', updateGroup);
router.get('/:id/messages', getMessages);
router.post('/:id/messages', sendMessage);
router.patch('/:id/read', markAsRead);
router.post('/messages/:id/react', reactToMessage);
router.patch('/messages/:id', editMessage);
router.delete('/messages/:id', deleteMessage);

export default router;
