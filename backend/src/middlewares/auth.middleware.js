import jwt from 'jsonwebtoken';
import { env } from '../config/env.js';
import { ApiError } from '../utils/apiError.js';
import { User } from '../models/user.model.js';

export const protectRoute = async (req, res, next) => {
  try {
    const authHeader = req.headers.authorization;
    if (!authHeader || !authHeader.startsWith('Bearer ')) {
      throw new ApiError(401, 'Không có quyền truy cập, vui lòng đăng nhập');
    }

    const token = authHeader.split(' ')[1];
    let decoded;
    try {
      decoded = jwt.verify(token, env.ACCESS_TOKEN_SECRET);
    } catch (err) {
      if (err.name === 'TokenExpiredError') {
        throw new ApiError(401, 'TOKEN_EXPIRED');
      }
      throw new ApiError(401, 'Access Token không hợp lệ');
    }

    const user = await User.findById(decoded.userId);
    if (!user) {
      throw new ApiError(401, 'Người dùng không tồn tại');
    }

    req.user = user;
    req.userId = user._id.toString();
    next();
  } catch (error) {
    next(error);
  }
};
