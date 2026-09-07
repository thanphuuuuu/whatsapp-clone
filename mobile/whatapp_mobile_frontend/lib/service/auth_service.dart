import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:whatapp_mobile_frontend/dto/register_dto.dart';
import 'package:whatapp_mobile_frontend/logger_config.dart';
import 'package:whatapp_mobile_frontend/model/auth_register_response.dart';
import 'package:whatapp_mobile_frontend/urlconfig.dart';

class AuthService {
  Future<AuthRegisterResponse> register(RegisterRequestDto request) async {
    try {
      final response = await http.post(
        Uri.parse(authRegisterUrl),
        headers: {'Content-Type': 'application/json; charset=UTF-8'},
        body: jsonEncode(request.toJson()),
      );

      final responseBody = jsonDecode(response.body);

      if (response.statusCode == 201) {
        logger.d("Đăng ký tài khoản thành công");

        return AuthRegisterResponse.fromJson(responseBody);
      } else {
        final errorMessage = responseBody['message'] ?? 'Đăng ký thất bại';
        throw Exception(errorMessage);
      }
    } catch (error) {
      logger.e("Lỗi register: $error");
      rethrow;
    }
  }
}
