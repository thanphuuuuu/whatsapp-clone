import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_group_response.freezed.dart';
part 'create_group_response.g.dart';

@freezed
abstract class CreateGroupResponse with _$CreateGroupResponse {
  const factory CreateGroupResponse({
    required int statusCode,
    required CreateGroupData data,
    required String message,
    required bool success,
  }) = _CreateGroupResponse;

  factory CreateGroupResponse.fromJson(Map<String, dynamic> json) =>
      _$CreateGroupResponseFromJson(json);
}

@freezed
abstract class CreateGroupData with _$CreateGroupData {
  const factory CreateGroupData({required GroupConversation conversation}) =
      _CreateGroupData;

  factory CreateGroupData.fromJson(Map<String, dynamic> json) =>
      _$CreateGroupDataFromJson(json);
}

@freezed
abstract class GroupConversation with _$GroupConversation {
  const factory GroupConversation({
    @JsonKey(name: '_id') required String id,
    required List<GroupMember> members,
    required bool isGroup,
    required String groupName,
    @Default('') String groupAvatar,
    required GroupAdmin groupAdmin,
    @Default({}) Map<String, int> unreadCount,
    required DateTime createdAt,
    required DateTime updatedAt,
    @JsonKey(name: '__v') required int v,
  }) = _GroupConversation;

  factory GroupConversation.fromJson(Map<String, dynamic> json) =>
      _$GroupConversationFromJson(json);
}

@freezed
abstract class GroupMember with _$GroupMember {
  const factory GroupMember({
    @JsonKey(name: '_id') required String id,
    required String username,
    required String email,
    required String fullName,
    @Default('') String avatar,
    @Default(false) bool isOnline,
    DateTime? lastSeenAt,
  }) = _GroupMember;

  factory GroupMember.fromJson(Map<String, dynamic> json) =>
      _$GroupMemberFromJson(json);
}

@freezed
abstract class GroupAdmin with _$GroupAdmin {
  const factory GroupAdmin({
    @JsonKey(name: '_id') required String id,
    required String username,
    required String fullName,
    @Default('') String avatar,
  }) = _GroupAdmin;

  factory GroupAdmin.fromJson(Map<String, dynamic> json) =>
      _$GroupAdminFromJson(json);
}
