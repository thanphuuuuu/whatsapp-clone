// import 'dart:convert';
// import 'package:http/http.dart' as http;
// import 'package:whatapp_mobile_frontend/logger_config.dart';
// import 'package:whatapp_mobile_frontend/token_util.dart';
// import 'package:whatapp_mobile_frontend/urlconfig.dart';

// class ApiClient extends http.BaseClient {
//   final http.Client _inner = http.Client();
//   bool _isRefreshing = false;

//   @override
//   Future<http.StreamedResponse> send(http.BaseRequest request) async {
//     request.headers['Content-Type'] = 'application/json; charset=UTF-8';
    
//     final token = await TokenStorage.getToken();
//     if (token != null && token.isNotEmpty) {
//       request.headers['Authorization'] = 'Bearer $token';
//     }

//     http.StreamedResponse response = await _inner.send(request);

//     if (response.statusCode == 401) {
//       logger.w("Access Token expired (401). Refreshing...");
//       final newToken = await _refreshToken();

//       if (newToken != null && newToken.isNotEmpty) {
//         final clonedRequest = _cloneRequest(request);
//         clonedRequest.headers['Authorization'] = 'Bearer $newToken';
//         return await _inner.send(clonedRequest);
//       } else {
//         logger.e("Refresh Token failed. Re-login required.");
//         await TokenStorage.clearToken();
//       }
//     }

//     return response;
//   }

//   Future<String?> _refreshToken() async {
//     if (_isRefreshing) return null;
//     _isRefreshing = true;

//     try {
//       final refreshToken = await TokenStorage.getToken();
//       if (refreshToken == null) return null;

//       final response = await http.post(
//         Uri.parse(),
//         headers: {'Content-Type': 'application/json'},
//         body: jsonEncode({'refreshToken': refreshToken}),
//       );

//       if (response.statusCode == 200) {
//         final body = jsonDecode(response.body);
//         final newAccessToken = body['accessToken'];
        
//         await TokenStorage.saveToken(newAccessToken);
//         return newAccessToken;
//       }
//     } catch (e) {
//       logger.e("Refresh token error: $e");
//     } finally {
//       _isRefreshing = false;
//     }
//     return null;
//   }

//   http.BaseRequest _cloneRequest(http.BaseRequest request) {
//     http.BaseRequest newRequest;
//     if (request is http.Request) {
//       newRequest = http.Request(request.method, request.url)
//         ..bodyFields = request.bodyFields
//         ..body = request.body;
//     } else {
//       newRequest = http.Request(request.method, request.url);
//     }
//     newRequest.headers.addAll(request.headers);
//     return newRequest;
//   }
// }

// final apiClient = ApiClient();