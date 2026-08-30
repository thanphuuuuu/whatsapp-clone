import { Router } from 'express';
import { uploadFile } from '../controllers/upload.controller.js';
import { uploadMiddleware } from '../middlewares/upload.middleware.js';
import { protectRoute } from '../middlewares/auth.middleware.js';

const router = Router();

// Tất cả các route upload đều yêu cầu Header: Authorization: Bearer <access_token>
router.use(protectRoute);

/**
 * @route   POST /api/upload
 * @desc    Tải lên 1 tập tin (ảnh hoặc file tài liệu) lên Cloudinary hoặc Server Storage
 * @body    FormData multipart/form-data với field 'file'
 * @res     { success: true, data: { fileUrl: string, fileName: string, fileSize: number, fileType: string } }
 */
router.post('/', uploadMiddleware.single('file'), uploadFile);

export default router;

