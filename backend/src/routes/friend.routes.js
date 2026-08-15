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

router.use(protectRoute);

router.post('/request/:userId', sendRequest);
router.patch('/request/:requestId/accept', acceptRequest);
router.patch('/request/:requestId/decline', declineRequest);
router.get('/requests', getRequests);
router.get('/', getFriends);

export default router;
