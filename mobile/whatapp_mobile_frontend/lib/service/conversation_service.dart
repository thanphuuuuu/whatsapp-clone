import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:whatapp_mobile_frontend/logger_config.dart';
import 'package:whatapp_mobile_frontend/model/conversation_messager_response.dart';
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
      final response = await http.get(
        Uri.parse(getconversationsUrl),
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

  Future<dynamic> getOrCreateDirect(String friendId) async {
    try {
      final token = await TokenStorage.getToken();
      final response = await http.post(
        Uri.parse('$apiBaseUrl/api/conversations/direct/$friendId'),
        headers: _headers(token ?? ""),
      );
      final responseBody = jsonDecode(response.body);
      if (response.statusCode == 200) return responseBody['data'];
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
      final response = await http.post(
        Uri.parse('$apiBaseUrl/api/conversations/group'),
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

  Future<dynamic> addMembers(
    String conversationId,
    List<String> memberIds,
  ) async {
    try {
      final token = await TokenStorage.getToken();
      final response = await http.post(
        Uri.parse('$apiBaseUrl/api/conversations/$conversationId/members'),
        headers: _headers(token ?? ""),
        body: jsonEncode({'memberIds': memberIds}),
      );
      final responseBody = jsonDecode(response.body);
      if (response.statusCode == 200) return responseBody['data'];
      throw Exception(responseBody['message'] ?? 'Thất bại');
    } catch (error) {
      logger.e("Lỗi addMembers: $error");
      rethrow;
    }
  }

  Future<dynamic> removeMember(String conversationId, String userId) async {
    try {
      final token = await TokenStorage.getToken();
      final response = await http.delete(
        Uri.parse(
          '$apiBaseUrl/api/conversations/$conversationId/members/$userId',
        ),
        headers: _headers(token ?? ""),
      );
      final responseBody = jsonDecode(response.body);
      if (response.statusCode == 200) return responseBody['data'];
      throw Exception(responseBody['message'] ?? 'Thất bại');
    } catch (error) {
      logger.e("Lỗi removeMember: $error");
      rethrow;
    }
  }

  Future<dynamic> updateGroup(
    String conversationId, {
    String? groupName,
    String? groupAvatar,
  }) async {
    try {
      final token = await TokenStorage.getToken();
      final response = await http.patch(
        Uri.parse('$apiBaseUrl/api/conversations/$conversationId/group'),
        headers: _headers(token ?? ""),
        body: jsonEncode({'groupName': groupName, 'groupAvatar': groupAvatar}),
      );
      final responseBody = jsonDecode(response.body);
      if (response.statusCode == 200) return responseBody['data'];
      throw Exception(responseBody['message'] ?? 'Thất bại');
    } catch (error) {
      logger.e("Lỗi updateGroup: $error");
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
        'http://192.168.1.210:5000/api/conversations/${conversationId}/messages',
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

  Future<dynamic> markAsRead(String conversationId) async {
    try {
      final token = await TokenStorage.getToken();
      final response = await http.patch(
        Uri.parse('$apiBaseUrl/api/conversations/$conversationId/read'),
        headers: _headers(token ?? ""),
      );
      final responseBody = jsonDecode(response.body);
      if (response.statusCode == 200) return responseBody['data'];
      throw Exception(responseBody['message'] ?? 'Thất bại');
    } catch (error) {
      logger.e("Lỗi markAsRead: $error");
      rethrow;
    }
  }

  Future<dynamic> reactToMessage(String messageId, String emoji) async {
    try {
      final token = await TokenStorage.getToken();
      final response = await http.post(
        Uri.parse('$apiBaseUrl/api/conversations/messages/$messageId/react'),
        headers: _headers(token ?? ""),
        body: jsonEncode({'emoji': emoji}),
      );
      final responseBody = jsonDecode(response.body);
      if (response.statusCode == 200) return responseBody['data'];
      throw Exception(responseBody['message'] ?? 'Thất bại');
    } catch (error) {
      logger.e("Lỗi reactToMessage: $error");
      rethrow;
    }
  }

  Future<dynamic> editMessage(String messageId, String content) async {
    try {
      final token = await TokenStorage.getToken();
      final response = await http.patch(
        Uri.parse('$apiBaseUrl/api/conversations/messages/$messageId'),
        headers: _headers(token ?? ""),
        body: jsonEncode({'content': content}),
      );
      final responseBody = jsonDecode(response.body);
      if (response.statusCode == 200) return responseBody['data'];
      throw Exception(responseBody['message'] ?? 'Thất bại');
    } catch (error) {
      logger.e("Lỗi editMessage: $error");
      rethrow;
    }
  }

  Future<dynamic> deleteMessage(String messageId) async {
    try {
      final token = await TokenStorage.getToken();
      final response = await http.delete(
        Uri.parse('$apiBaseUrl/api/conversations/messages/$messageId'),
        headers: _headers(token ?? ""),
      );
      final responseBody = jsonDecode(response.body);
      if (response.statusCode == 200) return responseBody['data'];
      throw Exception(responseBody['message'] ?? 'Thất bại');
    } catch (error) {
      logger.e("Lỗi deleteMessage: $error");
      rethrow;
    }
  }
}
