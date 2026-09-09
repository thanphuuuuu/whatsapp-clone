// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'friends_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FriendsResponse _$FriendsResponseFromJson(Map<String, dynamic> json) =>
    _FriendsResponse(
      statusCode: (json['statusCode'] as num).toInt(),
      data: FriendsData.fromJson(json['data'] as Map<String, dynamic>),
      message: json['message'] as String,
      success: json['success'] as bool,
    );

Map<String, dynamic> _$FriendsResponseToJson(_FriendsResponse instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'data': instance.data,
      'message': instance.message,
      'success': instance.success,
    };

_FriendsData _$FriendsDataFromJson(Map<String, dynamic> json) => _FriendsData(
  friends: (json['friends'] as List<dynamic>)
      .map((e) => FriendItem.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$FriendsDataToJson(_FriendsData instance) =>
    <String, dynamic>{'friends': instance.friends};

_FriendItem _$FriendItemFromJson(Map<String, dynamic> json) => _FriendItem(
  id: json['_id'] as String,
  username: json['username'] as String,
  fullName: json['fullName'] as String,
  email: json['email'] as String,
  avatar: json['avatar'] as String,
  isOnline: json['isOnline'] as bool,
  lastSeenAt: DateTime.parse(json['lastSeenAt'] as String),
  friendshipId: json['friendshipId'] as String,
);

Map<String, dynamic> _$FriendItemToJson(_FriendItem instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'username': instance.username,
      'fullName': instance.fullName,
      'email': instance.email,
      'avatar': instance.avatar,
      'isOnline': instance.isOnline,
      'lastSeenAt': instance.lastSeenAt.toIso8601String(),
      'friendshipId': instance.friendshipId,
    };
