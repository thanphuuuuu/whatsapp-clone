import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:whatapp_mobile_frontend/logger_config.dart';
import 'package:whatapp_mobile_frontend/model/conversations_response.dart';
import 'package:whatapp_mobile_frontend/token_util.dart';
import 'package:whatapp_mobile_frontend/urlconfig.dart';

class ConversationService {
  Map<String, String> _headers(String token) => {
    'Content-Type': 'application/json; charset=UTF-8',
    'Authorization': 'Bearer $token',
  };

  Future<ConversationsResponse> getConversations() async {
    try {
      logger.d("get api lay tat ca cac cuoc tro chuyen hien tai");

      final token = await TokenStorage.getToken();
      logger.d(token);
      final response = await http.get(
        Uri.parse(getconversationsUrl),
        headers: _headers(token ?? ""),
      );
      final responseBody = jsonDecode(response.body);
      if (response.statusCode == 200) {
        logger.d(responseBody.toString());
        return ConversationsResponse.fromJson(responseBody);
      }
      throw Exception(responseBody['message'] ?? 'Thất bại');
    } catch (error) {
      logger.e("Lỗi getConversations: $error");
      rethrow;
    }
  }
}
