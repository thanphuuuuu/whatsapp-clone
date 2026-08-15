import {
  registerUser,
  loginUser,
  refreshAccessToken,
  logoutUser,
  getCurrentUser,
} from '../services/auth.service.js';
import { registerSchema, loginSchema } from '../validators/auth.validator.js';
import { ApiResponse } from '../utils/apiResponse.js';

const COOKIE_OPTIONS = {
  httpOnly: true,
  secure: process.env.NODE_ENV === 'production',
  sameSite: 'lax',
  maxAge: 7 * 24 * 60 * 60 * 1000, // 7 days
};

export const register = async (req, res, next) => {
  try {
    const validatedData = registerSchema.parse(req.body);
    const user = await registerUser(validatedData);

    return res
      .status(201)
      .json(new ApiResponse(201, { user }, 'Đăng ký tài khoản thành công'));
  } catch (error) {
    next(error);
  }
};

export const login = async (req, res, next) => {
  try {
    const validatedData = loginSchema.parse(req.body);
    const { user, accessToken, refreshToken } = await loginUser(validatedData);

    res.cookie('refreshToken', refreshToken, COOKIE_OPTIONS);

    return res
      .status(200)
      .json(
        new ApiResponse(
          200,
          { user, accessToken },
          'Đăng nhập thành công'
        )
      );
  } catch (error) {
    next(error);
  }
};

export const refresh = async (req, res, next) => {
  try {
    const refreshToken = req.cookies?.refreshToken || req.body?.refreshToken;
    const { accessToken, user } = await refreshAccessToken(refreshToken);

    return res
      .status(200)
      .json(
        new ApiResponse(
          200,
          { accessToken, user },
          'Cấp lại Access Token thành công'
        )
      );
  } catch (error) {
    next(error);
  }
};

export const logout = async (req, res, next) => {
  try {
    const refreshToken = req.cookies?.refreshToken || req.body?.refreshToken;
    await logoutUser(refreshToken);

    res.clearCookie('refreshToken', COOKIE_OPTIONS);

    return res
      .status(200)
      .json(new ApiResponse(200, null, 'Đăng xuất thành công'));
  } catch (error) {
    next(error);
  }
};

export const getMe = async (req, res, next) => {
  try {
    const user = await getCurrentUser(req.userId);
    return res
      .status(200)
      .json(new ApiResponse(200, { user }, 'Lấy thông tin cá nhân thành công'));
  } catch (error) {
    next(error);
  }
};
