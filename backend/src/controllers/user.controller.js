import {
  getUserProfile,
  updateUserProfile,
  searchUsers,
} from '../services/user.service.js';
import { ApiResponse } from '../utils/apiResponse.js';

export const getProfile = async (req, res, next) => {
  try {
    const user = await getUserProfile(req.userId);
    return res
      .status(200)
      .json(new ApiResponse(200, { user }, 'Lấy thông tin profile thành công'));
  } catch (error) {
    next(error);
  }
};

export const updateProfile = async (req, res, next) => {
  try {
    const { fullName, avatar } = req.body;
    const user = await updateUserProfile(req.userId, { fullName, avatar });
    return res
      .status(200)
      .json(new ApiResponse(200, { user }, 'Cập nhật profile thành công'));
  } catch (error) {
    next(error);
  }
};

export const searchUsersController = async (req, res, next) => {
  try {
    const query = req.query.q || '';
    const users = await searchUsers(req.userId, query);
    return res
      .status(200)
      .json(new ApiResponse(200, { users }, 'Tìm kiếm người dùng thành công'));
  } catch (error) {
    next(error);
  }
};
