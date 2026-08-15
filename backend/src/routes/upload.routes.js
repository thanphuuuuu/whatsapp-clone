import { Router } from 'express';
import { uploadFile } from '../controllers/upload.controller.js';
import { uploadMiddleware } from '../middlewares/upload.middleware.js';
import { protectRoute } from '../middlewares/auth.middleware.js';

const router = Router();

router.use(protectRoute);
router.post('/', uploadMiddleware.single('file'), uploadFile);

export default router;
