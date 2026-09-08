// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'conversations_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ConversationsResponse _$ConversationsResponseFromJson(
  Map<String, dynamic> json,
) => _ConversationsResponse(
  statusCode: (json['statusCode'] as num).toInt(),
  data: ConversationsData.fromJson(json['data'] as Map<String, dynamic>),
  message: json['message'] as String,
  success: json['success'] as bool,
);

Map<String, dynamic> _$ConversationsResponseToJson(
  _ConversationsResponse instance,
) => <String, dynamic>{
  'statusCode': instance.statusCode,
  'data': instance.data,
  'message': instance.message,
  'success': instance.success,
};

_ConversationsData _$ConversationsDataFromJson(Map<String, dynamic> json) =>
    _ConversationsData(
      conversations:
          (json['conversations'] as List<dynamic>?)
              ?.map((e) => Conversation.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$ConversationsDataToJson(_ConversationsData instance) =>
    <String, dynamic>{'conversations': instance.conversations};

_Conversation _$ConversationFromJson(Map<String, dynamic> json) =>
    _Conversation(
      id: json['_id'] as String,
      members:
          (json['members'] as List<dynamic>?)
              ?.map((e) => Member.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      isGroup: json['isGroup'] as bool? ?? false,
      groupName: json['groupName'] as String? ?? '',
      groupAvatar: json['groupAvatar'] as String? ?? '',
      unreadCount:
          (json['unreadCount'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, (e as num).toInt()),
          ) ??
          const {},
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      v: (json['__v'] as num?)?.toInt(),
      lastMessage: json['lastMessage'] == null
          ? null
          : LastMessage.fromJson(json['lastMessage'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ConversationToJson(_Conversation instance) =>
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
      'lastMessage': instance.lastMessage,
    };

_Member _$MemberFromJson(Map<String, dynamic> json) => _Member(
  id: json['_id'] as String,
  username: json['username'] as String,
  email: json['email'] as String,
  fullName: json['fullName'] as String,
  avatar: json['avatar'] as String? ?? '',
  isOnline: json['isOnline'] as bool? ?? false,
  lastSeenAt: DateTime.parse(json['lastSeenAt'] as String),
);

Map<String, dynamic> _$MemberToJson(_Member instance) => <String, dynamic>{
  '_id': instance.id,
  'username': instance.username,
  'email': instance.email,
  'fullName': instance.fullName,
  'avatar': instance.avatar,
  'isOnline': instance.isOnline,
  'lastSeenAt': instance.lastSeenAt.toIso8601String(),
};

_LastMessage _$LastMessageFromJson(Map<String, dynamic> json) => _LastMessage(
  id: json['_id'] as String,
  conversation: json['conversation'] as String,
  sender: MessageSender.fromJson(json['sender'] as Map<String, dynamic>),
  type: json['type'] as String? ?? 'text',
  callType: json['callType'] as String?,
  callStatus: json['callStatus'] as String?,
  callDuration: (json['callDuration'] as num?)?.toInt() ?? 0,
  content: json['content'] as String? ?? '',
  mediaUrl: json['mediaUrl'] as String? ?? '',
  fileName: json['fileName'] as String? ?? '',
  fileSize: (json['fileSize'] as num?)?.toInt() ?? 0,
  seenBy:
      (json['seenBy'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
  isEdited: json['isEdited'] as bool? ?? false,
  isDeleted: json['isDeleted'] as bool? ?? false,
  reactions: json['reactions'] as List<dynamic>? ?? const [],
  createdAt: DateTime.parse(json['createdAt'] as String),
  updatedAt: DateTime.parse(json['updatedAt'] as String),
  v: (json['__v'] as num?)?.toInt(),
);

Map<String, dynamic> _$LastMessageToJson(_LastMessage instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'conversation': instance.conversation,
      'sender': instance.sender,
      'type': instance.type,
      'callType': instance.callType,
      'callStatus': instance.callStatus,
      'callDuration': instance.callDuration,
      'content': instance.content,
      'mediaUrl': instance.mediaUrl,
      'fileName': instance.fileName,
      'fileSize': instance.fileSize,
      'seenBy': instance.seenBy,
      'isEdited': instance.isEdited,
      'isDeleted': instance.isDeleted,
      'reactions': instance.reactions,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      '__v': instance.v,
    };

_MessageSender _$MessageSenderFromJson(Map<String, dynamic> json) =>
    _MessageSender(
      id: json['_id'] as String,
      username: json['username'] as String,
      fullName: json['fullName'] as String,
    );

Map<String, dynamic> _$MessageSenderToJson(_MessageSender instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'username': instance.username,
      'fullName': instance.fullName,
    };
