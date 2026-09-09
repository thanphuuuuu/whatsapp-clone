import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:whatapp_mobile_frontend/logger_config.dart';
import 'package:whatapp_mobile_frontend/model/friends_response.dart';
import 'package:logger/logger.dart';
import 'package:whatapp_mobile_frontend/token_util.dart';
import 'package:whatapp_mobile_frontend/urlconfig.dart';

class FriendService {
  Map<String, String> _headers(String token) => {
    'Content-Type': 'application/json; charset=UTF-8',
    'Authorization': 'Bearer $token',
  };
  Future<FriendsResponse> getFriends() async {
    try {
      logger.d("get api lay tat ca bạn bè của user hiện tại");
      logger.d(getFriendRequestsUrl);

      final token = await TokenStorage.getToken();
      logger.d(token);
      final response = await http.get(
        Uri.parse(getFriendsUrl),
        headers: _headers(token ?? ""),
      );
      final responseBody = jsonDecode(response.body);
      if (response.statusCode == 200) {
        logger.d(responseBody.toString());
        return FriendsResponse.fromJson(responseBody);
      }n
      throw Exception(responseBody['message'] ?? 'Thất bại');
    } catch (error) {
      logger.e("Lỗi lấy danh sách bạn bè: $error");
      rethrow;
    }
  }
}
