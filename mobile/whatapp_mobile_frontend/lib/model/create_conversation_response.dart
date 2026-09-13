import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_conversation_response.freezed.dart';
part 'create_conversation_response.g.dart';

@freezed
abstract class CreateConversationResponse with _$CreateConversationResponse {
  const factory CreateConversationResponse({
    required int statusCode,
    required CreateConversationData data,
    required String message,
    required bool success,
  }) = _CreateConversationResponse;

  factory CreateConversationResponse.fromJson(Map<String, dynamic> json) =>
      _$CreateConversationResponseFromJson(json);
}

@freezed
abstract class CreateConversationData with _$CreateConversationData {
  const factory CreateConversationData({
    required ConversationModel conversation,
  }) = _CreateConversationData;

  factory CreateConversationData.fromJson(Map<String, dynamic> json) =>
      _$CreateConversationDataFromJson(json);
}

@freezed
abstract class ConversationModel with _$ConversationModel {
  const factory ConversationModel({
    @JsonKey(name: '_id') required String id,
    required List<MemberModel> members,
    required bool isGroup,
    required String groupName,
    required String groupAvatar,
    required Map<String, int> unreadCount,
    required DateTime createdAt,
    required DateTime updatedAt,
    @JsonKey(name: '__v') required int v,
  }) = _ConversationModel;

  factory ConversationModel.fromJson(Map<String, dynamic> json) =>
      _$ConversationModelFromJson(json);
}

@freezed
abstract class MemberModel with _$MemberModel {
  const factory MemberModel({
    @JsonKey(name: '_id') required String id,
    required String username,
    required String email,
    required String fullName,
    required String avatar,
    required bool isOnline,
    required DateTime lastSeenAt,
  }) = _MemberModel;

  factory MemberModel.fromJson(Map<String, dynamic> json) =>
      _$MemberModelFromJson(json);
}
