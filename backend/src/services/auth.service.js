import jwt from 'jsonwebtoken';
import { User } from '../models/user.model.js';
import { env } from '../config/env.js';
import { ApiError } from '../utils/apiError.js';

export const generateTokens = (userId) => {
  const accessToken = jwt.sign({ userId }, env.ACCESS_TOKEN_SECRET, {
    expiresIn: env.ACCESS_TOKEN_EXPIRES_IN,
  });

  const refreshToken = jwt.sign({ userId }, env.REFRESH_TOKEN_SECRET, {
    expiresIn: env.REFRESH_TOKEN_EXPIRES_IN,
  });

  return { accessToken, refreshToken };
};

export const registerUser = async ({ fullName, email, username, password }) => {
  const existingUser = await User.findOne({
    $or: [{ username }, { email }],
  });
  if (existingUser) {
    if (existingUser.username === username) {
      throw new ApiError(409, 'Tên tài khoản đã tồn tại, vui lòng chọn tên khác');
    }
    throw new ApiError(409, 'Email đã được sử dụng, vui lòng chọn email khác');
  }

  const user = await User.create({
    fullName,
    email,
    username,
    password,
  });

  return user;
};

export const loginUser = async ({ username, password }) => {
  const user = await User.findOne({ username });
  if (!user) {
    throw new ApiError(401, 'Sai tên tài khoản hoặc mật khẩu');
  }

  const isPasswordValid = await user.comparePassword(password);
  if (!isPasswordValid) {
    throw new ApiError(401, 'Sai tên tài khoản hoặc mật khẩu');
  }

  const { accessToken, refreshToken } = generateTokens(user._id.toString());

  // Save refresh token to user document in DB
  await User.findByIdAndUpdate(user._id, {
    $push: { refreshTokens: refreshToken },
  });

  return { user, accessToken, refreshToken };
};

export const refreshAccessToken = async (refreshToken) => {
  if (!refreshToken) {
    throw new ApiError(401, 'Refresh Token là bắt buộc');
  }

  let decoded;
  try {
    decoded = jwt.verify(refreshToken, env.REFRESH_TOKEN_SECRET);
  } catch (err) {
    throw new ApiError(401, 'Refresh Token không hợp lệ hoặc đã hết hạn');
  }

  const user = await User.findById(decoded.userId);
  if (!user || !user.refreshTokens.includes(refreshToken)) {
    throw new ApiError(401, 'Refresh Token đã bị vô hiệu hóa hoặc không tồn tại');
  }

  const accessToken = jwt.sign({ userId: user._id.toString() }, env.ACCESS_TOKEN_SECRET, {
    expiresIn: env.ACCESS_TOKEN_EXPIRES_IN,
  });

  return { accessToken, user };
};

export const logoutUser = async (refreshToken) => {
  if (!refreshToken) return;

  try {
    const decoded = jwt.verify(refreshToken, env.REFRESH_TOKEN_SECRET);
    const user = await User.findById(decoded.userId);
    if (user) {
      user.refreshTokens = user.refreshTokens.filter((token) => token !== refreshToken);
      await user.save();
    }
  } catch (err) {
    // Ignore error if token is expired or invalid during logout
  }
};

export const getCurrentUser = async (userId) => {
  const user = await User.findById(userId);
  if (!user) {
    throw new ApiError(404, 'Không tìm thấy thông tin người dùng');
  }
  return user;
};
