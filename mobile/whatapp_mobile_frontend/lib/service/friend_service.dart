import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:whatapp_mobile_frontend/logger_config.dart';
import 'package:whatapp_mobile_frontend/model/friend_request_response.dart';
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
      }
      throw Exception(responseBody['message'] ?? 'Thất bại');
    } catch (error) {
      logger.e("Lỗi lấy danh sách bạn bè: $error");
      rethrow;
    }
  }

  Future<FriendRequestResponse> getFriendPeding() async {
    try {
      logger.d("get api lay danh sach loi moi ket ban");
      logger.d(getFriendRequestsUrl);

      final token = await TokenStorage.getToken();
      logger.d(token);
      final response = await http.get(
        Uri.parse(getFriendRequestsUrl),
        headers: _headers(token ?? ""),
      );
      final responseBody = jsonDecode(response.body);
      if (response.statusCode == 200) {
        logger.d(responseBody.toString());
        return FriendRequestResponse.fromJson(responseBody);
      }
      throw Exception(responseBody['message'] ?? 'Thất bại');
    } catch (error) {
      logger.e("Lỗi lấy danh sách lời mời kết bạn: $error");
      rethrow;
    }
  }

  Future<void> accept_friend_invite(String request_id) async {
    try {
      logger.d("post api chấp nhận lời mời kết bạn ${request_id}");
      logger.d(acceptFriendRequestUrl(request_id));
      final url = acceptFriendRequestUrl(request_id);
      final token = await TokenStorage.getToken();
      logger.d(token);
      final response = await http.patch(
        Uri.parse(url),
        headers: _headers(token ?? ""),
      );
      final responseBody = jsonDecode(response.body);
      if (response.statusCode == 200) {
        logger.d(responseBody.toString());
        return;
      }
      throw Exception(responseBody['message'] ?? 'Thất bại');
    } catch (error) {
      logger.e("Lỗi khi chấp nhận lời mời kết bạn: $error");
      rethrow;
    }
  }

  Future<void> decined_invite_friend(String request_id) async {
    try {
      logger.d("post api từ chối lời mời kết bạn ${request_id}");
      logger.d(declineFriendRequestUrl(request_id));
      final url = declineFriendRequestUrl(request_id);
      final token = await TokenStorage.getToken();
      logger.d(token);
      final response = await http.patch(
        Uri.parse(url),
        headers: _headers(token ?? ""),
      );
      final responseBody = jsonDecode(response.body);
      if (response.statusCode == 200) {
        logger.d(responseBody.toString());
        return;
      }
      throw Exception(responseBody['message'] ?? 'Thất bại');
    } catch (error) {
      logger.e("Lỗi khi từ chối lời mời kết bạn: $error");
      rethrow;
    }
  }

  Future<bool> addFriend(String userId) async {
    try {
      logger.d("post api kết bạn");
      final url = "http://192.168.1.210:5000/api/friends/request/$userId";
      final token = await TokenStorage.getToken();

      final response = await http.post(
        Uri.parse(url),
        headers: _headers(token ?? ""),
      );

      final responseBody = jsonDecode(response.body);

      if (response.statusCode == 200 || response.statusCode == 201) {
        logger.d(responseBody.toString());
        return true;
      }

      throw Exception(
        responseBody['message'] ?? 'Gửi lời mời kết bạn không thành công',
      );
    } catch (error) {
      logger.e("Lỗi khi gửi lời mời kết bạn: $error");
      rethrow;
    }
  }
}
