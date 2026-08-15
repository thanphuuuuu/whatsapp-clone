import {
  sendFriendRequest,
  acceptFriendRequest,
  declineFriendRequest,
  getFriendRequests,
  getFriendsList,
} from '../services/friend.service.js';
import { ApiResponse } from '../utils/apiResponse.js';

export const sendRequest = async (req, res, next) => {
  try {
    const { userId: receiverId } = req.params;
    const request = await sendFriendRequest(req.userId, receiverId);
    return res
      .status(201)
      .json(new ApiResponse(201, { request }, 'Gửi lời mời kết bạn thành công'));
  } catch (error) {
    next(error);
  }
};

export const acceptRequest = async (req, res, next) => {
  try {
    const { requestId } = req.params;
    const request = await acceptFriendRequest(requestId, req.userId);
    return res
      .status(200)
      .json(new ApiResponse(200, { request }, 'Đã chấp nhận lời mời kết bạn'));
  } catch (error) {
    next(error);
  }
};

export const declineRequest = async (req, res, next) => {
  try {
    const { requestId } = req.params;
    const request = await declineFriendRequest(requestId, req.userId);
    return res
      .status(200)
      .json(new ApiResponse(200, { request }, 'Đã từ chối lời mời kết bạn'));
  } catch (error) {
    next(error);
  }
};

export const getRequests = async (req, res, next) => {
  try {
    const data = await getFriendRequests(req.userId);
    return res
      .status(200)
      .json(new ApiResponse(200, data, 'Lấy danh sách lời mời thành công'));
  } catch (error) {
    next(error);
  }
};

export const getFriends = async (req, res, next) => {
  try {
    const friends = await getFriendsList(req.userId);
    return res
      .status(200)
      .json(new ApiResponse(200, { friends }, 'Lấy danh sách bạn bè thành công'));
  } catch (error) {
    next(error);
  }
};
