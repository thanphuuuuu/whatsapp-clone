import { Conversation } from '../models/conversation.model.js';
import { User } from '../models/user.model.js';
import { ApiError } from '../utils/apiError.js';

export const getOrCreateDirectConversation = async (userId1, userId2) => {
  if (userId1 === userId2) {
    throw new ApiError(400, 'Không thể tạo cuộc trò chuyện với chính mình');
  }

  const friend = await User.findById(userId2);
  if (!friend) {
    throw new ApiError(404, 'Người dùng không tồn tại');
  }

  let conversation = await Conversation.findOne({
    isGroup: false,
    members: { $all: [userId1, userId2], $size: 2 },
  })
    .populate('members', '_id username fullName email avatar isOnline lastSeenAt')
    .populate('lastMessage');

  if (!conversation) {
    conversation = await Conversation.create({
      isGroup: false,
      members: [userId1, userId2],
      unreadCount: {
        [userId1]: 0,
        [userId2]: 0,
      },
    });

    conversation = await Conversation.findById(conversation._id).populate(
      'members',
      '_id username fullName email avatar isOnline lastSeenAt'
    );
  }

  return conversation;
};

export const getUserConversations = async (userId) => {
  const conversations = await Conversation.find({ members: userId })
    .populate('members', '_id username fullName email avatar isOnline lastSeenAt')
    .populate('groupAdmin', '_id username fullName avatar')
    .populate({
      path: 'lastMessage',
      populate: {
        path: 'sender',
        select: '_id username fullName',
      },
    })
    .sort({ updatedAt: -1 });

  return conversations;
};

export const createGroupConversation = async ({ creatorId, groupName, groupAvatar, memberIds }) => {
  if (!groupName || !groupName.trim()) {
    throw new ApiError(400, 'Tên nhóm không được để trống');
  }

  if (!Array.isArray(memberIds) || memberIds.length < 2) {
    throw new ApiError(400, 'Nhóm phải có tối thiểu 3 thành viên (bao gồm bạn)');
  }

  // Loại bỏ trùng lặp và loại trừ chính người tạo nếu đã chọn
  const uniqueMemberIds = [...new Set(memberIds)].filter((id) => id !== creatorId);

  if (uniqueMemberIds.length < 2) {
    throw new ApiError(400, 'Vui lòng chọn ít nhất 2 bạn bè để tạo nhóm');
  }

  const allMembers = [creatorId, ...uniqueMemberIds];

  const unreadMap = {};
  allMembers.forEach((mId) => {
    unreadMap[mId] = 0;
  });

  const conversation = await Conversation.create({
    isGroup: true,
    groupName: groupName.trim(),
    groupAvatar: groupAvatar || '',
    groupAdmin: creatorId,
    members: allMembers,
    unreadCount: unreadMap,
  });

  const populatedConversation = await Conversation.findById(conversation._id)
    .populate('members', '_id username fullName email avatar isOnline lastSeenAt')
    .populate('groupAdmin', '_id username fullName avatar');

  return populatedConversation;
};

export const addGroupMembers = async ({ conversationId, adminId, newMemberIds }) => {
  const conversation = await Conversation.findById(conversationId);
  if (!conversation) {
    throw new ApiError(404, 'Không tìm thấy cuộc trò chuyện');
  }

  if (!conversation.isGroup) {
    throw new ApiError(400, 'Cuộc trò chuyện này không phải là nhóm');
  }

  if (conversation.groupAdmin.toString() !== adminId) {
    throw new ApiError(403, 'Chỉ trưởng nhóm mới có quyền thêm thành viên');
  }

  if (!Array.isArray(newMemberIds) || newMemberIds.length === 0) {
    throw new ApiError(400, 'Vui lòng chọn thành viên cần thêm');
  }

  const currentMemberStr = conversation.members.map((m) => m.toString());
  const toAdd = newMemberIds.filter((id) => !currentMemberStr.includes(id));

  if (toAdd.length === 0) {
    throw new ApiError(400, 'Tất cả người dùng được chọn đã là thành viên của nhóm');
  }

  conversation.members.push(...toAdd);

  const unreadMap = conversation.unreadCount || new Map();
  toAdd.forEach((id) => {
    unreadMap.set(id, 0);
  });
  conversation.unreadCount = unreadMap;

  await conversation.save();

  return await Conversation.findById(conversationId)
    .populate('members', '_id username fullName email avatar isOnline lastSeenAt')
    .populate('groupAdmin', '_id username fullName avatar')
    .populate({
      path: 'lastMessage',
      populate: {
        path: 'sender',
        select: '_id username fullName',
      },
    });
};

export const removeGroupMember = async ({ conversationId, requesterId, targetUserId }) => {
  const conversation = await Conversation.findById(conversationId);
  if (!conversation) {
    throw new ApiError(404, 'Không tìm thấy cuộc trò chuyện');
  }

  if (!conversation.isGroup) {
    throw new ApiError(400, 'Cuộc trò chuyện này không phải là nhóm');
  }

  const isSelf = requesterId === targetUserId;
  const isAdmin = conversation.groupAdmin.toString() === requesterId;

  if (!isSelf && !isAdmin) {
    throw new ApiError(403, 'Bạn không có quyền xóa thành viên này khỏi nhóm');
  }

  conversation.members = conversation.members.filter(
    (m) => m.toString() !== targetUserId
  );

  if (conversation.unreadCount) {
    conversation.unreadCount.delete(targetUserId);
  }

  // Nếu người rời/bị xóa là admin và nhóm vẫn còn thành viên -> chuyển admin cho người tiếp theo
  if (conversation.groupAdmin.toString() === targetUserId && conversation.members.length > 0) {
    conversation.groupAdmin = conversation.members[0];
  }

  await conversation.save();

  return await Conversation.findById(conversationId)
    .populate('members', '_id username fullName email avatar isOnline lastSeenAt')
    .populate('groupAdmin', '_id username fullName avatar')
    .populate({
      path: 'lastMessage',
      populate: {
        path: 'sender',
        select: '_id username fullName',
      },
    });
};

export const updateGroupInfo = async ({ conversationId, requesterId, groupName, groupAvatar }) => {
  const conversation = await Conversation.findById(conversationId);
  if (!conversation) {
    throw new ApiError(404, 'Không tìm thấy cuộc trò chuyện');
  }

  if (!conversation.isGroup) {
    throw new ApiError(400, 'Cuộc trò chuyện này không phải là nhóm');
  }

  const isMember = conversation.members.some((m) => m.toString() === requesterId);
  if (!isMember) {
    throw new ApiError(403, 'Bạn không phải là thành viên của nhóm này');
  }

  if (groupName !== undefined) {
    if (!groupName.trim()) {
      throw new ApiError(400, 'Tên nhóm không được để trống');
    }
    conversation.groupName = groupName.trim();
  }

  if (groupAvatar !== undefined) {
    conversation.groupAvatar = groupAvatar;
  }

  await conversation.save();

  return await Conversation.findById(conversationId)
    .populate('members', '_id username fullName email avatar isOnline lastSeenAt')
    .populate('groupAdmin', '_id username fullName avatar')
    .populate({
      path: 'lastMessage',
      populate: {
        path: 'sender',
        select: '_id username fullName',
      },
    });
};

