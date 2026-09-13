import fs from 'fs';
import path from 'path';
import { v2 as cloudinary } from 'cloudinary';
import { env } from '../config/env.js';
import { ApiError } from '../utils/apiError.js';
import { ApiResponse } from '../utils/apiResponse.js';

// Cấu hình Cloudinary
cloudinary.config({
  cloud_name: env.CLOUDINARY_CLOUD_NAME,
  api_key: env.CLOUDINARY_API_KEY,
  api_secret: env.CLOUDINARY_API_SECRET,
});

export const uploadFile = async (req, res, next) => {
  try {
    if (!req.file) {
      throw new ApiError(400, 'Vui lòng chọn tập tin để tải lên');
    }

    const isImage = req.file.mimetype.startsWith('image/');
    let fileUrl = '';

    // Thử tải lên Cloudinary nếu có cấu hình
    if (env.CLOUDINARY_CLOUD_NAME && env.CLOUDINARY_API_KEY && env.CLOUDINARY_API_SECRET) {
      try {
        const resourceType = isImage ? 'image' : 'raw';
        const uploadStream = () =>
          new Promise((resolve, reject) => {
            const stream = cloudinary.uploader.upload_stream(
              {
                folder: 'whatsapp-clone/uploads',
                resource_type: resourceType,
                public_id: `${Date.now()}_${req.file.originalname.replace(/[^a-zA-Z0-9.-]/g, '_')}`,
              },
              (error, result) => {
                if (error) return reject(error);
                resolve(result);
              }
            );
            stream.end(req.file.buffer);
          });

        const result = await uploadStream();
        fileUrl = result.secure_url;
      } catch (cloudinaryError) {
        console.warn('Cloudinary upload error, falling back to local storage:', cloudinaryError.message || cloudinaryError);
      }
    }

    // Nếu Cloudinary thất bại hoặc không cấu hình -> Lưu local storage
    if (!fileUrl) {
      const uploadDir = path.join(process.cwd(), 'uploads');
      if (!fs.existsSync(uploadDir)) {
        fs.mkdirSync(uploadDir, { recursive: true });
      }

      const sanitizeFileName = req.file.originalname.replace(/[^a-zA-Z0-9.-]/g, '_');
      const uniqueFileName = `${Date.now()}_${sanitizeFileName}`;
      const filePath = path.join(uploadDir, uniqueFileName);

      await fs.promises.writeFile(filePath, req.file.buffer);
      fileUrl = `${req.protocol}://${req.get('host')}/uploads/${uniqueFileName}`;
    }

    const fileData = {
      url: fileUrl,
      fileName: req.file.originalname,
      fileSize: req.file.size,
      type: isImage ? 'image' : 'file',
    };

    return res
      .status(200)
      .json(new ApiResponse(200, fileData, 'Tải tập tin lên thành công'));
  } catch (error) {
    next(error);
  }
};
