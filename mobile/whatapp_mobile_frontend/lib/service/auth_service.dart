import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:whatapp_mobile_frontend/dto/login_dto.dart';
import 'package:whatapp_mobile_frontend/dto/register_dto.dart';
import 'package:whatapp_mobile_frontend/logger_config.dart';
import 'package:whatapp_mobile_frontend/model/auth_register_response.dart';
import 'package:whatapp_mobile_frontend/model/login_response.dart';
import 'package:whatapp_mobile_frontend/token_util.dart';
import 'package:whatapp_mobile_frontend/urlconfig.dart';

class AuthService {
  Future<AuthRegisterResponse> register(RegisterRequestDto request) async {
    try {
      logger.d("đang bắt đầu fetch api register");
      logger.d(authRegisterUrl);
      final response = await http.post(
        Uri.parse(authRegisterUrl),
        headers: {'Content-Type': 'application/json; charset=UTF-8'},
        body: jsonEncode(request.toJson()),
      );

      final responseBody = jsonDecode(response.body);
      logger.d(authRegisterUrl);
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

  Future<LoginResponse> login(LoginDto request) async {
    try {
      logger.d("đang bắt đầu fetch api login");
      logger.d(authLoginUrl);
      logger.d(request.username);
      logger.d(request.password);
      final response = await http.post(
        Uri.parse(authLoginUrl),
        headers: {'Content-Type': 'application/json; charset=UTF-8'},
        body: jsonEncode(request.toJson()),
      );
      logger.d("1");
      final responseBody = jsonDecode(response.body);

      if (response.statusCode == 200) {
        logger.d("Đăng nhập thành công");

        return LoginResponse.fromJson(responseBody);
      } else {
        final errorMessage = responseBody['message'] ?? 'Đăng nhập thất bại';
        throw Exception(errorMessage);
      }
    } catch (error) {
      logger.e("Lỗi login: $error");
      rethrow;
    }
  }

  Future<void> refreshtoken() async {
    try {
      final old_token = await TokenStorage.getToken();
      final response = await http.post(Uri.parse(authRefreshUrl));
      logger.d(response.statusCode);
      logger.d(response.body);
    } catch (error) {}
  }
}
