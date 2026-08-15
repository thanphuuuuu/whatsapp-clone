import { Router } from 'express';
import {
  getProfile,
  updateProfile,
  searchUsersController,
} from '../controllers/user.controller.js';
import { protectRoute } from '../middlewares/auth.middleware.js';

const router = Router();

router.use(protectRoute);

router.get('/me', getProfile);
router.patch('/me', updateProfile);
router.get('/search', searchUsersController);

export default router;
