const String apiBaseUrl = 'http://192.168.1.210:5000/api';
const String socketBaseUrl = 'http://192.168.1.210:5000';

const String authRegisterUrl = '$apiBaseUrl/auth/register';
const String authLoginUrl = '$apiBaseUrl/auth/login';
const String authRefreshUrl = '$apiBaseUrl/auth/refresh';
const String authLogoutUrl = '$apiBaseUrl/auth/logout';
const String authMeUrl = '$apiBaseUrl/auth/me';

const String getconversationsUrl = '$apiBaseUrl/conversations';

const String userProfileUrl = '$apiBaseUrl/users/me';
const String userSearchUrl = '$apiBaseUrl/users/search';

const String friendsBaseUrl = '$apiBaseUrl/friends';
const String getFriendsUrl = friendsBaseUrl;
const String getFriendRequestsUrl = '$friendsBaseUrl/requests';

String sendFriendRequestUrl(String userId) => '$friendsBaseUrl/request/$userId';
String acceptFriendRequestUrl(String requestId) =>
    '$friendsBaseUrl/request/$requestId/accept';
String declineFriendRequestUrl(String requestId) =>
    '$friendsBaseUrl/request/$requestId/decline';
