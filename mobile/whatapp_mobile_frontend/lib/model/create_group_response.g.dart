// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_group_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreateGroupResponse _$CreateGroupResponseFromJson(Map<String, dynamic> json) =>
    _CreateGroupResponse(
      statusCode: (json['statusCode'] as num).toInt(),
      data: CreateGroupData.fromJson(json['data'] as Map<String, dynamic>),
      message: json['message'] as String,
      success: json['success'] as bool,
    );

Map<String, dynamic> _$CreateGroupResponseToJson(
  _CreateGroupResponse instance,
) => <String, dynamic>{
  'statusCode': instance.statusCode,
  'data': instance.data,
  'message': instance.message,
  'success': instance.success,
};

_CreateGroupData _$CreateGroupDataFromJson(Map<String, dynamic> json) =>
    _CreateGroupData(
      conversation: GroupConversation.fromJson(
        json['conversation'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$CreateGroupDataToJson(_CreateGroupData instance) =>
    <String, dynamic>{'conversation': instance.conversation};

_GroupConversation _$GroupConversationFromJson(Map<String, dynamic> json) =>
    _GroupConversation(
      id: json['_id'] as String,
      members: (json['members'] as List<dynamic>)
          .map((e) => GroupMember.fromJson(e as Map<String, dynamic>))
          .toList(),
      isGroup: json['isGroup'] as bool,
      groupName: json['groupName'] as String,
      groupAvatar: json['groupAvatar'] as String? ?? '',
      groupAdmin: GroupAdmin.fromJson(
        json['groupAdmin'] as Map<String, dynamic>,
      ),
      unreadCount:
          (json['unreadCount'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, (e as num).toInt()),
          ) ??
          const {},
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      v: (json['__v'] as num).toInt(),
    );

Map<String, dynamic> _$GroupConversationToJson(_GroupConversation instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'members': instance.members,
      'isGroup': instance.isGroup,
      'groupName': instance.groupName,
      'groupAvatar': instance.groupAvatar,
      'groupAdmin': instance.groupAdmin,
      'unreadCount': instance.unreadCount,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      '__v': instance.v,
    };

_GroupMember _$GroupMemberFromJson(Map<String, dynamic> json) => _GroupMember(
  id: json['_id'] as String,
  username: json['username'] as String,
  email: json['email'] as String,
  fullName: json['fullName'] as String,
  avatar: json['avatar'] as String? ?? '',
  isOnline: json['isOnline'] as bool? ?? false,
  lastSeenAt: json['lastSeenAt'] == null
      ? null
      : DateTime.parse(json['lastSeenAt'] as String),
);

Map<String, dynamic> _$GroupMemberToJson(_GroupMember instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'username': instance.username,
      'email': instance.email,
      'fullName': instance.fullName,
      'avatar': instance.avatar,
      'isOnline': instance.isOnline,
      'lastSeenAt': instance.lastSeenAt?.toIso8601String(),
    };

_GroupAdmin _$GroupAdminFromJson(Map<String, dynamic> json) => _GroupAdmin(
  id: json['_id'] as String,
  username: json['username'] as String,
  fullName: json['fullName'] as String,
  avatar: json['avatar'] as String? ?? '',
);

Map<String, dynamic> _$GroupAdminToJson(_GroupAdmin instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'username': instance.username,
      'fullName': instance.fullName,
      'avatar': instance.avatar,
    };
