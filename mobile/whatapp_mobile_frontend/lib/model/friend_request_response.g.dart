// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'friend_request_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FriendRequestResponse _$FriendRequestResponseFromJson(
  Map<String, dynamic> json,
) => _FriendRequestResponse(
  statusCode: (json['statusCode'] as num).toInt(),
  data: FriendRequestData.fromJson(json['data'] as Map<String, dynamic>),
  message: json['message'] as String,
  success: json['success'] as bool,
);

Map<String, dynamic> _$FriendRequestResponseToJson(
  _FriendRequestResponse instance,
) => <String, dynamic>{
  'statusCode': instance.statusCode,
  'data': instance.data,
  'message': instance.message,
  'success': instance.success,
};

_FriendRequestData _$FriendRequestDataFromJson(Map<String, dynamic> json) =>
    _FriendRequestData(
      receivedRequests: (json['receivedRequests'] as List<dynamic>)
          .map((e) => ReceivedFriendRequest.fromJson(e as Map<String, dynamic>))
          .toList(),
      sentRequests: (json['sentRequests'] as List<dynamic>)
          .map((e) => SentFriendRequest.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$FriendRequestDataToJson(_FriendRequestData instance) =>
    <String, dynamic>{
      'receivedRequests': instance.receivedRequests,
      'sentRequests': instance.sentRequests,
    };

_ReceivedFriendRequest _$ReceivedFriendRequestFromJson(
  Map<String, dynamic> json,
) => _ReceivedFriendRequest(
  id: json['_id'] as String,
  sender: FriendUser.fromJson(json['sender'] as Map<String, dynamic>),
  receiver: json['receiver'] as String,
  status: json['status'] as String,
  createdAt: DateTime.parse(json['createdAt'] as String),
  updatedAt: DateTime.parse(json['updatedAt'] as String),
  version: (json['__v'] as num).toInt(),
);

Map<String, dynamic> _$ReceivedFriendRequestToJson(
  _ReceivedFriendRequest instance,
) => <String, dynamic>{
  '_id': instance.id,
  'sender': instance.sender,
  'receiver': instance.receiver,
  'status': instance.status,
  'createdAt': instance.createdAt.toIso8601String(),
  'updatedAt': instance.updatedAt.toIso8601String(),
  '__v': instance.version,
};

_SentFriendRequest _$SentFriendRequestFromJson(Map<String, dynamic> json) =>
    _SentFriendRequest(
      id: json['_id'] as String,
      sender: json['sender'] as String,
      receiver: FriendUser.fromJson(json['receiver'] as Map<String, dynamic>),
      status: json['status'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      version: (json['__v'] as num).toInt(),
    );

Map<String, dynamic> _$SentFriendRequestToJson(_SentFriendRequest instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'sender': instance.sender,
      'receiver': instance.receiver,
      'status': instance.status,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      '__v': instance.version,
    };

_FriendUser _$FriendUserFromJson(Map<String, dynamic> json) => _FriendUser(
  id: json['_id'] as String,
  username: json['username'] as String,
  email: json['email'] as String,
  fullName: json['fullName'] as String,
  avatar: json['avatar'] as String,
  isOnline: json['isOnline'] as bool,
  lastSeenAt: DateTime.parse(json['lastSeenAt'] as String),
);

Map<String, dynamic> _$FriendUserToJson(_FriendUser instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'username': instance.username,
      'email': instance.email,
      'fullName': instance.fullName,
      'avatar': instance.avatar,
      'isOnline': instance.isOnline,
      'lastSeenAt': instance.lastSeenAt.toIso8601String(),
    };
