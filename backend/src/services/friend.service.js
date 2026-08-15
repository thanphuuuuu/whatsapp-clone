import { FriendRequest } from '../models/friendRequest.model.js';
import { User } from '../models/user.model.js';
import { ApiError } from '../utils/apiError.js';

export const sendFriendRequest = async (senderId, receiverId) => {
  if (senderId === receiverId) {
    throw new ApiError(400, 'Không thể gửi lời mời kết bạn cho chính mình');
  }

  const receiver = await User.findById(receiverId);
  if (!receiver) {
    throw new ApiError(404, 'Người dùng cần kết bạn không tồn tại');
  }

  // Kiểm tra hai chiều giữa sender và receiver
  const existingRequest = await FriendRequest.findOne({
    $or: [
      { sender: senderId, receiver: receiverId },
      { sender: receiverId, receiver: senderId },
    ],
  });

  if (existingRequest) {
    if (existingRequest.status === 'accepted') {
      throw new ApiError(400, 'Hai người đã là bạn bè');
    }
    if (existingRequest.status === 'pending') {
      if (existingRequest.sender.toString() === senderId) {
        throw new ApiError(400, 'Bạn đã gửi lời mời kết bạn rồi');
      } else {
        throw new ApiError(400, 'Người dùng này đã gửi lời mời kết bạn cho bạn');
      }
    }
    // Nếu trạng thái trước đó bị từ chối (declined), cho phép gửi lại
    existingRequest.sender = senderId;
    existingRequest.receiver = receiverId;
    existingRequest.status = 'pending';
    await existingRequest.save();
    return existingRequest;
  }

  const newRequest = await FriendRequest.create({
    sender: senderId,
    receiver: receiverId,
    status: 'pending',
  });

  return newRequest;
};

export const acceptFriendRequest = async (requestId, currentUserId) => {
  const request = await FriendRequest.findById(requestId);
  if (!request) {
    throw new ApiError(404, 'Không tìm thấy lời mời kết bạn');
  }

  if (request.receiver.toString() !== currentUserId) {
    throw new ApiError(403, 'Bạn không có quyền chấp nhận lời mời này');
  }

  if (request.status === 'accepted') {
    throw new ApiError(400, 'Lời mời kết bạn đã được chấp nhận trước đó');
  }

  request.status = 'accepted';
  await request.save();

  const populated = await FriendRequest.findById(requestId)
    .populate('sender', '_id username fullName avatar isOnline lastSeenAt')
    .populate('receiver', '_id username fullName avatar isOnline lastSeenAt');

  return populated;
};

export const declineFriendRequest = async (requestId, currentUserId) => {
  const request = await FriendRequest.findById(requestId);
  if (!request) {
    throw new ApiError(404, 'Không tìm thấy lời mời kết bạn');
  }

  if (request.receiver.toString() !== currentUserId) {
    throw new ApiError(403, 'Bạn không có quyền từ chối lời mời này');
  }

  request.status = 'declined';
  await request.save();
  return request;
};

export const getFriendRequests = async (currentUserId) => {
  const receivedRequests = await FriendRequest.find({
    receiver: currentUserId,
    status: 'pending',
  }).populate('sender', '_id username fullName email avatar isOnline lastSeenAt');

  const sentRequests = await FriendRequest.find({
    sender: currentUserId,
    status: 'pending',
  }).populate('receiver', '_id username fullName email avatar isOnline lastSeenAt');

  return { receivedRequests, sentRequests };
};

export const getFriendsList = async (currentUserId) => {
  const friendships = await FriendRequest.find({
    status: 'accepted',
    $or: [{ sender: currentUserId }, { receiver: currentUserId }],
  })
    .populate('sender', '_id username fullName email avatar isOnline lastSeenAt')
    .populate('receiver', '_id username fullName email avatar isOnline lastSeenAt');

  const friends = friendships.map((item) => {
    const friendUser =
      item.sender._id.toString() === currentUserId ? item.receiver : item.sender;
    return {
      _id: friendUser._id,
      username: friendUser.username,
      fullName: friendUser.fullName,
      email: friendUser.email,
      avatar: friendUser.avatar,
      isOnline: friendUser.isOnline,
      lastSeenAt: friendUser.lastSeenAt,
      friendshipId: item._id,
    };
  });

  return friends;
};
