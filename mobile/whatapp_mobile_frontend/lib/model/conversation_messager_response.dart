import 'package:freezed_annotation/freezed_annotation.dart';

part 'conversation_messager_response.freezed.dart';
part 'conversation_messager_response.g.dart';

@freezed
abstract class ConversationMessagerResponse
    with _$ConversationMessagerResponse {
  const factory ConversationMessagerResponse({
    int? statusCode,
    ConversationData? data,
    String? message,
    bool? success,
  }) = _ConversationMessagerResponse;

  factory ConversationMessagerResponse.fromJson(Map<String, dynamic> json) =>
      _$ConversationMessagerResponseFromJson(json);
}

@freezed
abstract class ConversationData with _$ConversationData {
  const factory ConversationData({
    @Default([]) List<MessageItem> messages,
    String? nextCursor,
    @Default(false) bool hasMore,
  }) = _ConversationData;

  factory ConversationData.fromJson(Map<String, dynamic> json) =>
      _$ConversationDataFromJson(json);
}

@freezed
abstract class MessageItem with _$MessageItem {
  const factory MessageItem({
    @JsonKey(name: '_id') String? id,
    String? conversation,
    Sender? sender,
    String? type,
    String? callType,
    String? callStatus,
    @Default(0) int callDuration,
    String? content,
    String? mediaUrl,
    String? fileName,
    @Default(0) int fileSize,
    @Default([]) List<String> seenBy,
    @Default(false) bool isEdited,
    @Default(false) bool isDeleted,
    @Default([]) List<dynamic> reactions,
    String? createdAt,
    String? updatedAt,
    @JsonKey(name: '__v') int? v,
  }) = _MessageItem;

  factory MessageItem.fromJson(Map<String, dynamic> json) =>
      _$MessageItemFromJson(json);
}

@freezed
abstract class Sender with _$Sender {
  const factory Sender({
    @JsonKey(name: '_id') String? id,
    String? username,
    String? fullName,
    String? avatar,
  }) = _Sender;

  factory Sender.fromJson(Map<String, dynamic> json) => _$SenderFromJson(json);
}
