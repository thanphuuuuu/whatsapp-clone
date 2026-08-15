import { User } from '../models/user.model.js';
import { ApiError } from '../utils/apiError.js';

export const getUserProfile = async (userId) => {
  const user = await User.findById(userId);
  if (!user) {
    throw new ApiError(404, 'Không tìm thấy thông tin người dùng');
  }
  return user;
};

export const updateUserProfile = async (userId, { fullName, avatar }) => {
  const updateData = {};
  if (fullName !== undefined) updateData.fullName = fullName.trim();
  if (avatar !== undefined) updateData.avatar = avatar;

  const user = await User.findByIdAndUpdate(userId, updateData, {
    new: true,
    runValidators: true,
  });

  if (!user) {
    throw new ApiError(404, 'Không tìm thấy thông tin người dùng');
  }

  return user;
};

export const searchUsers = async (currentUserId, searchQuery) => {
  if (!searchQuery || !searchQuery.trim()) {
    return [];
  }

  const cleanQuery = searchQuery.trim();
  const regex = new RegExp(cleanQuery, 'i');

  const users = await User.find({
    _id: { $ne: currentUserId },
    $or: [{ username: regex }, { fullName: regex }, { email: regex }],
  })
    .select('_id username fullName email avatar isOnline lastSeenAt')
    .limit(20);

  return users;
};
