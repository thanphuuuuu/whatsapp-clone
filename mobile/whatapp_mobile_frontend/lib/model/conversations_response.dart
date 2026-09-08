import 'package:freezed_annotation/freezed_annotation.dart';

part 'conversations_response.freezed.dart';
part 'conversations_response.g.dart';

@freezed
abstract class ConversationsResponse with _$ConversationsResponse {
  const factory ConversationsResponse({
    required int statusCode,
    required ConversationsData data,
    required String message,
    required bool success,
  }) = _ConversationsResponse;

  factory ConversationsResponse.fromJson(Map<String, dynamic> json) =>
      _$ConversationsResponseFromJson(json);
}

@freezed
abstract class ConversationsData with _$ConversationsData {
  const factory ConversationsData({
    @Default([]) List<Conversation> conversations,
  }) = _ConversationsData;

  factory ConversationsData.fromJson(Map<String, dynamic> json) =>
      _$ConversationsDataFromJson(json);
}

@freezed
abstract class Conversation with _$Conversation {
  const factory Conversation({
    @JsonKey(name: '_id') required String id,
    @Default([]) List<Member> members,
    @Default(false) bool isGroup,
    @Default('') String groupName,
    @Default('') String groupAvatar,
    @Default({}) Map<String, int> unreadCount,
    required DateTime createdAt,
    required DateTime updatedAt,
    @JsonKey(name: '__v') int? v,
    LastMessage? lastMessage,
  }) = _Conversation;

  factory Conversation.fromJson(Map<String, dynamic> json) =>
      _$ConversationFromJson(json);
}

@freezed
abstract class Member with _$Member {
  const factory Member({
    @JsonKey(name: '_id') required String id,
    required String username,
    required String email,
    required String fullName,
    @Default('') String avatar,
    @Default(false) bool isOnline,
    required DateTime lastSeenAt,
  }) = _Member;

  factory Member.fromJson(Map<String, dynamic> json) => _$MemberFromJson(json);
}

@freezed
abstract class LastMessage with _$LastMessage {
  const factory LastMessage({
    @JsonKey(name: '_id') required String id,
    required String conversation,
    required MessageSender sender,
    @Default('text') String type,
    String? callType,
    String? callStatus,
    @Default(0) int callDuration,
    @Default('') String content,
    @Default('') String mediaUrl,
    @Default('') String fileName,
    @Default(0) int fileSize,
    @Default([]) List<String> seenBy,
    @Default(false) bool isEdited,
    @Default(false) bool isDeleted,
    @Default([]) List<dynamic> reactions,
    required DateTime createdAt,
    required DateTime updatedAt,
    @JsonKey(name: '__v') int? v,
  }) = _LastMessage;

  factory LastMessage.fromJson(Map<String, dynamic> json) =>
      _$LastMessageFromJson(json);
}

@freezed
abstract class MessageSender with _$MessageSender {
  const factory MessageSender({
    @JsonKey(name: '_id') required String id,
    required String username,
    required String fullName,
  }) = _MessageSender;

  factory MessageSender.fromJson(Map<String, dynamic> json) =>
      _$MessageSenderFromJson(json);
}
