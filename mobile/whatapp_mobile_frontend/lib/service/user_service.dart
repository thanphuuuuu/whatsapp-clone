import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:whatapp_mobile_frontend/logger_config.dart';
import 'package:whatapp_mobile_frontend/model/user_response.dart';
import 'package:whatapp_mobile_frontend/token_util.dart';
import 'package:whatapp_mobile_frontend/urlconfig.dart';

class UserService {
  Future<UserResponse> getUserInfo() async {
    Map<String, String> _headers(String token) => {
      'Content-Type': 'application/json; charset=UTF-8',
      'Authorization': 'Bearer $token',
    };
    try {
      logger.d("đang bắt đầu fetch api lấy thông tin user");
      logger.d(userProfileUrl);
      final token = await TokenStorage.getToken();
      final response = await http.get(
        Uri.parse(userProfileUrl),
        headers: _headers(token ?? ""),
      );

      final responseBody = jsonDecode(response.body);
      logger.d(authRegisterUrl);
      if (response.statusCode == 200) {
        logger.d("Đăng ký tài khoản thành công");

        return UserResponse.fromJson(responseBody);
      } else {
        final errorMessage =
            responseBody['message'] ?? 'Lấy thông tin người dùng thất bại';
        throw Exception(errorMessage);
      }
    } catch (error) {
      logger.e("Lỗi lấy thông  tin người dùng: $error");
      rethrow;
    }
  }
}
