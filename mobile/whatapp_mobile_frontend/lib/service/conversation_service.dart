import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:whatapp_mobile_frontend/logger_config.dart';
import 'package:whatapp_mobile_frontend/model/conversation_messager_response.dart';
import 'package:whatapp_mobile_frontend/model/conversations_response.dart';
import 'package:whatapp_mobile_frontend/model/create_conversation_response.dart';
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
      final response = await http.get(
        Uri.parse(getConversationsUrl),
        headers: _headers(token ?? ""),
      );
      final responseBody = jsonDecode(response.body);
      if (response.statusCode == 200) {
        return ConversationsResponse.fromJson(responseBody);
      }
      throw Exception(responseBody['message'] ?? 'Thất bại');
    } catch (error) {
      logger.e("Lỗi getConversations: $error");
      rethrow;
    }
  }

  Future<CreateConversationResponse> getOrCreateDirect(String friendId) async {
    try {
      final token = await TokenStorage.getToken();
      final response = await http.post(
        Uri.parse('$apiBaseUrl/api/conversations/direct/$friendId'),
        headers: _headers(token ?? ""),
      );
      final responseBody = jsonDecode(response.body);
      if (response.statusCode == 200)
        return CreateConversationResponse.fromJson(responseBody);
      throw Exception(responseBody['message'] ?? 'Thất bại');
    } catch (error) {
      logger.e("Lỗi getOrCreateDirect: $error");
      rethrow;
    }
  }

  Future<dynamic> createGroup({
    required String groupName,
    String? groupAvatar,
    required List<String> memberIds,
  }) async {
    try {
      final token = await TokenStorage.getToken();
      final url = "${apiBaseUrl}/api/conversations/group";
      final response = await http.post(
        Uri.parse(url),
        headers: _headers(token ?? ""),
        body: jsonEncode({
          'groupName': groupName,
          'groupAvatar': groupAvatar,
          'memberIds': memberIds,
        }),
      );
      final responseBody = jsonDecode(response.body);
      if (response.statusCode == 201) return responseBody['data'];
      throw Exception(responseBody['message'] ?? 'Thất bại');
    } catch (error) {
      logger.e("Lỗi createGroup: $error");
      rethrow;
    }
  }

  Future<ConversationMessagerResponse> getMessages(
    String conversationId, {
    String? cursor,
    int limit = 30,
  }) async {
    try {
      final token = await TokenStorage.getToken();
      final uri = Uri.parse(
        '${apiBaseUrl}/api/conversations/${conversationId}/messages',
      );
      logger.d(uri);
      // ).replace(
      //   queryParameters: {
      //     if (cursor != null) 'cursor': cursor,
      //     'limit': '$limit',
      //   },
      // );
      final response = await http.get(uri, headers: _headers(token ?? ""));
      final responseBody = jsonDecode(response.body);
      if (response.statusCode == 200)
        return ConversationMessagerResponse.fromJson(responseBody);
      throw Exception(responseBody['message'] ?? 'Thất bại');
    } catch (error) {
      logger.e("Lỗi getMessages: $error");
      rethrow;
    }
  }

  Future<dynamic> sendMessage(
    String conversationId, {
    String? content,
    required String type,
    String? mediaUrl,
    String? fileName,
    int? fileSize,
  }) async {
    try {
      final token = await TokenStorage.getToken();
      final response = await http.post(
        Uri.parse('$apiBaseUrl/api/conversations/$conversationId/messages'),
        headers: _headers(token ?? ""),
        body: jsonEncode({
          'content': content,
          'type': type,
          'mediaUrl': mediaUrl,
          'fileName': fileName,
          'fileSize': fileSize,
        }),
      );
      final responseBody = jsonDecode(response.body);
      if (response.statusCode == 201) return responseBody['data'];
      throw Exception(responseBody['message'] ?? 'Thất bại');
    } catch (error) {
      logger.e("Lỗi sendMessage: $error");
      rethrow;
    }
  }
}
