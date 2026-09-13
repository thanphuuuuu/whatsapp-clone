import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:whatapp_mobile_frontend/logger_config.dart';

class TokenStorage {
  static const _storage = FlutterSecureStorage();

  // Lưu token
  static Future<void> saveToken(String token) async {
    try {
      await _storage.write(key: 'auth_token', value: token);
      logger.d("lưu thành công token");
    } catch (Error) {
      logger.e("có lỗi khi save token ${Error.toString()}");
    }
  }

  static Future<void> saveUserid(String user_id) async {
    try {
      await _storage.write(key: 'user_id', value: user_id);
      logger.d("lưu thành công user_id");
    } catch (Error) {
      logger.e("có lỗi khi save user_id ${Error.toString()}");
    }
  }

  // Lấy token
  static Future<String?> getToken() async {
    return await _storage.read(key: 'auth_token');
  }

  // Xóa token (Logout)
  static Future<void> clearToken() async {
    await _storage.delete(key: 'auth_token');
  }

  static Future<String?> getUser_id() async {
    return await _storage.read(key: 'user_id');
  }

  // Xóa user_ud (Logout)
  static Future<void> clear_User_id() async {
    await _storage.delete(key: 'user_id');
  }
}
