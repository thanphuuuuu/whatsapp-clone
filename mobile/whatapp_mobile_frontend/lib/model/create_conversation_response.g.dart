// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_conversation_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreateConversationResponse _$CreateConversationResponseFromJson(
  Map<String, dynamic> json,
) => _CreateConversationResponse(
  statusCode: (json['statusCode'] as num).toInt(),
  data: CreateConversationData.fromJson(json['data'] as Map<String, dynamic>),
  message: json['message'] as String,
  success: json['success'] as bool,
);

Map<String, dynamic> _$CreateConversationResponseToJson(
  _CreateConversationResponse instance,
) => <String, dynamic>{
  'statusCode': instance.statusCode,
  'data': instance.data,
  'message': instance.message,
  'success': instance.success,
};

_CreateConversationData _$CreateConversationDataFromJson(
  Map<String, dynamic> json,
) => _CreateConversationData(
  conversation: ConversationModel.fromJson(
    json['conversation'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$CreateConversationDataToJson(
  _CreateConversationData instance,
) => <String, dynamic>{'conversation': instance.conversation};

_ConversationModel _$ConversationModelFromJson(Map<String, dynamic> json) =>
    _ConversationModel(
      id: json['_id'] as String,
      members: (json['members'] as List<dynamic>)
          .map((e) => MemberModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      isGroup: json['isGroup'] as bool,
      groupName: json['groupName'] as String,
      groupAvatar: json['groupAvatar'] as String,
      unreadCount: Map<String, int>.from(json['unreadCount'] as Map),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      v: (json['__v'] as num).toInt(),
    );

Map<String, dynamic> _$ConversationModelToJson(_ConversationModel instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'members': instance.members,
      'isGroup': instance.isGroup,
      'groupName': instance.groupName,
      'groupAvatar': instance.groupAvatar,
      'unreadCount': instance.unreadCount,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      '__v': instance.v,
    };

_MemberModel _$MemberModelFromJson(Map<String, dynamic> json) => _MemberModel(
  id: json['_id'] as String,
  username: json['username'] as String,
  email: json['email'] as String,
  fullName: json['fullName'] as String,
  avatar: json['avatar'] as String,
  isOnline: json['isOnline'] as bool,
  lastSeenAt: DateTime.parse(json['lastSeenAt'] as String),
);

Map<String, dynamic> _$MemberModelToJson(_MemberModel instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'username': instance.username,
      'email': instance.email,
      'fullName': instance.fullName,
      'avatar': instance.avatar,
      'isOnline': instance.isOnline,
      'lastSeenAt': instance.lastSeenAt.toIso8601String(),
    };
