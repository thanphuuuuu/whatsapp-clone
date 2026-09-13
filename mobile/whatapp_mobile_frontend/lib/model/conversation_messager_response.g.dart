// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'conversation_messager_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ConversationMessagerResponse _$ConversationMessagerResponseFromJson(
  Map<String, dynamic> json,
) => _ConversationMessagerResponse(
  statusCode: (json['statusCode'] as num?)?.toInt(),
  data: json['data'] == null
      ? null
      : ConversationData.fromJson(json['data'] as Map<String, dynamic>),
  message: json['message'] as String?,
  success: json['success'] as bool?,
);

Map<String, dynamic> _$ConversationMessagerResponseToJson(
  _ConversationMessagerResponse instance,
) => <String, dynamic>{
  'statusCode': instance.statusCode,
  'data': instance.data,
  'message': instance.message,
  'success': instance.success,
};

_ConversationData _$ConversationDataFromJson(Map<String, dynamic> json) =>
    _ConversationData(
      messages:
          (json['messages'] as List<dynamic>?)
              ?.map((e) => MessageItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      nextCursor: json['nextCursor'] as String?,
      hasMore: json['hasMore'] as bool? ?? false,
    );

Map<String, dynamic> _$ConversationDataToJson(_ConversationData instance) =>
    <String, dynamic>{
      'messages': instance.messages,
      'nextCursor': instance.nextCursor,
      'hasMore': instance.hasMore,
    };

_MessageItem _$MessageItemFromJson(Map<String, dynamic> json) => _MessageItem(
  id: json['_id'] as String?,
  conversation: json['conversation'] as String?,
  sender: json['sender'] == null
      ? null
      : Sender.fromJson(json['sender'] as Map<String, dynamic>),
  type: json['type'] as String?,
  callType: json['callType'] as String?,
  callStatus: json['callStatus'] as String?,
  callDuration: (json['callDuration'] as num?)?.toInt() ?? 0,
  content: json['content'] as String?,
  mediaUrl: json['mediaUrl'] as String?,
  fileName: json['fileName'] as String?,
  fileSize: (json['fileSize'] as num?)?.toInt() ?? 0,
  seenBy:
      (json['seenBy'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
  isEdited: json['isEdited'] as bool? ?? false,
  isDeleted: json['isDeleted'] as bool? ?? false,
  reactions: json['reactions'] as List<dynamic>? ?? const [],
  createdAt: json['createdAt'] as String?,
  updatedAt: json['updatedAt'] as String?,
  v: (json['__v'] as num?)?.toInt(),
);

Map<String, dynamic> _$MessageItemToJson(_MessageItem instance) =>
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
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      '__v': instance.v,
    };

_Sender _$SenderFromJson(Map<String, dynamic> json) => _Sender(
  id: json['_id'] as String?,
  username: json['username'] as String?,
  fullName: json['fullName'] as String?,
  avatar: json['avatar'] as String?,
);

Map<String, dynamic> _$SenderToJson(_Sender instance) => <String, dynamic>{
  '_id': instance.id,
  'username': instance.username,
  'fullName': instance.fullName,
  'avatar': instance.avatar,
};
