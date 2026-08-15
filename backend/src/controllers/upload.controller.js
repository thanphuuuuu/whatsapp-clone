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

    if (!env.CLOUDINARY_CLOUD_NAME || !env.CLOUDINARY_API_KEY || !env.CLOUDINARY_API_SECRET) {
      throw new ApiError(500, 'Chưa cấu hình biến môi trường Cloudinary trong file .env');
    }

    const isImage = req.file.mimetype.startsWith('image/');
    const resourceType = isImage ? 'image' : 'raw';

    const uploadStream = () =>
      new Promise((resolve, reject) => {
        const stream = cloudinary.uploader.upload_stream(
          {
            folder: 'whatsapp-clone/messages',
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

    const fileData = {
      url: result.secure_url,
      fileName: req.file.originalname,
      fileSize: req.file.size,
      type: isImage ? 'image' : 'file',
    };

    return res
      .status(200)
      .json(new ApiResponse(200, fileData, 'Tải tập tin lên Cloudinary thành công'));
  } catch (error) {
    next(error);
  }
};
