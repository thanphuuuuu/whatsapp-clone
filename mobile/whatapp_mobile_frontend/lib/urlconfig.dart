// 1. Base API URL
const String apiBaseUrl = 'http://192.168.1.210:5000/api';

// 2. Auth Endpoints
const String authRegisterUrl = '$apiBaseUrl/auth/register';
const String authLoginUrl = '$apiBaseUrl/auth/login';
const String authRefreshUrl = '$apiBaseUrl/auth/refresh';
const String authLogoutUrl = '$apiBaseUrl/auth/logout';
const String authMeUrl = '$apiBaseUrl/auth/me';

// 3. Conversations Endpoints
const String getconversationsUrl = '$apiBaseUrl/conversations';

// 4. Users Endpoints
const String userProfileUrl = '$apiBaseUrl/users/me';
const String userSearchUrl = '$apiBaseUrl/users/search';

// 5. Friends Endpoints
const String friendsBaseUrl = '$apiBaseUrl/friends';
const String getFriendsUrl = '$apiBaseUrl/friends';
const String getFriendRequestsUrl = '$apiBaseUrl/friends/requests';

// Function helpers cho các URL chứa tham số tĩnh/động
String sendFriendRequestUrl(String userId) =>
    '$apiBaseUrl/friends/request/$userId';
String acceptFriendRequestUrl(String requestId) =>
    '$apiBaseUrl/friends/request/$requestId/accept';
String declineFriendRequestUrl(String requestId) =>
    '$apiBaseUrl/friends/request/$requestId/decline';
