// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LoginResponse _$LoginResponseFromJson(Map<String, dynamic> json) =>
    _LoginResponse(
      statusCode: (json['statusCode'] as num).toInt(),
      data: LoginData.fromJson(json['data'] as Map<String, dynamic>),
      message: json['message'] as String,
      success: json['success'] as bool,
    );

Map<String, dynamic> _$LoginResponseToJson(_LoginResponse instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'data': instance.data,
      'message': instance.message,
      'success': instance.success,
    };

_LoginData _$LoginDataFromJson(Map<String, dynamic> json) => _LoginData(
  user: User.fromJson(json['user'] as Map<String, dynamic>),
  accessToken: json['accessToken'] as String,
);

Map<String, dynamic> _$LoginDataToJson(_LoginData instance) =>
    <String, dynamic>{
      'user': instance.user,
      'accessToken': instance.accessToken,
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
