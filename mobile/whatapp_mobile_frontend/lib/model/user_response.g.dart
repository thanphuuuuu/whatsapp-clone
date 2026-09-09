// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserResponse _$UserResponseFromJson(Map<String, dynamic> json) =>
    _UserResponse(
      statusCode: (json['statusCode'] as num).toInt(),
      data: UserData.fromJson(json['data'] as Map<String, dynamic>),
      message: json['message'] as String,
      success: json['success'] as bool,
    );

Map<String, dynamic> _$UserResponseToJson(_UserResponse instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'data': instance.data,
      'message': instance.message,
      'success': instance.success,
    };

_UserData _$UserDataFromJson(Map<String, dynamic> json) =>
    _UserData(user: User.fromJson(json['user'] as Map<String, dynamic>));

Map<String, dynamic> _$UserDataToJson(_UserData instance) => <String, dynamic>{
  'user': instance.user,
};

_User _$UserFromJson(Map<String, dynamic> json) => _User(
  id: json['_id'] as String,
  username: json['username'] as String,
  email: json['email'] as String,
  fullName: json['fullName'] as String,
  avatar: json['avatar'] as String,
  isOnline: json['isOnline'] as bool,
  lastSeenAt: DateTime.parse(json['lastSeenAt'] as String),
  createdAt: DateTime.parse(json['createdAt'] as String),
  updatedAt: DateTime.parse(json['updatedAt'] as String),
);

Map<String, dynamic> _$UserToJson(_User instance) => <String, dynamic>{
  '_id': instance.id,
  'username': instance.username,
  'email': instance.email,
  'fullName': instance.fullName,
  'avatar': instance.avatar,
  'isOnline': instance.isOnline,
  'lastSeenAt': instance.lastSeenAt.toIso8601String(),
  'createdAt': instance.createdAt.toIso8601String(),
  'updatedAt': instance.updatedAt.toIso8601String(),
};
