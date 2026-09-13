// ============================================================
// BASE URL
// ============================================================

const String apiBaseUrl = 'http://192.168.1.210:5000';
const String socketBaseUrl = apiBaseUrl;

// ============================================================
// AUTH API
// Backend: /api/auth
// ============================================================

const String authBaseUrl = '$apiBaseUrl/api/auth';

const String authRegisterUrl = '$authBaseUrl/register';
const String authLoginUrl = '$authBaseUrl/login';
const String authRefreshUrl = '$authBaseUrl/refresh';
const String authLogoutUrl = '$authBaseUrl/logout';
const String authMeUrl = '$authBaseUrl/me';

// ============================================================
// USER API
// Backend: /api/users
// ============================================================

const String usersBaseUrl = '$apiBaseUrl/api/users';

const String userProfileUrl = '$usersBaseUrl/me';
const String userSearchUrl = '$usersBaseUrl/search';

// ============================================================
// FRIEND API
// Backend: /api/friends
// ============================================================

const String friendsBaseUrl = '$apiBaseUrl/api/friends';

const String getFriendsUrl = friendsBaseUrl;
const String getFriendRequestsUrl = '$friendsBaseUrl/requests';

String sendFriendRequestUrl(String userId) {
  return '$friendsBaseUrl/request/$userId';
}

String acceptFriendRequestUrl(String requestId) {
  return '$friendsBaseUrl/request/$requestId/accept';
}

String declineFriendRequestUrl(String requestId) {
  return '$friendsBaseUrl/request/$requestId/decline';
}

// ============================================================
// CONVERSATION API
// Backend: /api/conversations
// ============================================================

const String conversationsBaseUrl = '$apiBaseUrl/api/conversations';

const String getConversationsUrl = conversationsBaseUrl;

String directConversationUrl(String friendId) {
  return '$conversationsBaseUrl/direct/$friendId';
}

const String createGroupConversationUrl = '$conversationsBaseUrl/group';

String conversationMembersUrl(String conversationId) {
  return '$conversationsBaseUrl/$conversationId/members';
}

String conversationMemberUrl(String conversationId, String userId) {
  return '$conversationsBaseUrl/$conversationId/members/$userId';
}

String updateGroupUrl(String conversationId) {
  return '$conversationsBaseUrl/$conversationId/group';
}

String conversationMessagesUrl(String conversationId) {
  return '$conversationsBaseUrl/$conversationId/messages';
}

String markConversationAsReadUrl(String conversationId) {
  return '$conversationsBaseUrl/$conversationId/read';
}

// ============================================================
// MESSAGE API
// Backend: /api/conversations/messages
// ============================================================

String reactToMessageUrl(String messageId) {
  return '$conversationsBaseUrl/messages/$messageId/react';
}

String editMessageUrl(String messageId) {
  return '$conversationsBaseUrl/messages/$messageId';
}

String deleteMessageUrl(String messageId) {
  return '$conversationsBaseUrl/messages/$messageId';
}
