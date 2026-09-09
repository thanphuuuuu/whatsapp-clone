// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_register_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AuthRegisterResponse _$AuthRegisterResponseFromJson(
  Map<String, dynamic> json,
) => _AuthRegisterResponse(
  statusCode: (json['statusCode'] as num).toInt(),
  data: AuthRegisterData.fromJson(json['data'] as Map<String, dynamic>),
  message: json['message'] as String,
  success: json['success'] as bool,
);

Map<String, dynamic> _$AuthRegisterResponseToJson(
  _AuthRegisterResponse instance,
) => <String, dynamic>{
  'statusCode': instance.statusCode,
  'data': instance.data,
  'message': instance.message,
  'success': instance.success,
};

_AuthRegisterData _$AuthRegisterDataFromJson(Map<String, dynamic> json) =>
    _AuthRegisterData(
      user: User.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AuthRegisterDataToJson(_AuthRegisterData instance) =>
    <String, dynamic>{'user': instance.user};

_User _$UserFromJson(Map<String, dynamic> json) => _User(
  username: json['username'] as String,
  email: json['email'] as String,
  fullName: json['fullName'] as String,
  avatar: json['avatar'] as String,
  isOnline: json['isOnline'] as bool,
  id: json['_id'] as String,
  lastSeenAt: DateTime.parse(json['lastSeenAt'] as String),
  createdAt: DateTime.parse(json['createdAt'] as String),
  updatedAt: DateTime.parse(json['updatedAt'] as String),
);

Map<String, dynamic> _$UserToJson(_User instance) => <String, dynamic>{
  'username': instance.username,
  'email': instance.email,
  'fullName': instance.fullName,
  'avatar': instance.avatar,
  'isOnline': instance.isOnline,
  '_id': instance.id,
  'lastSeenAt': instance.lastSeenAt.toIso8601String(),
  'createdAt': instance.createdAt.toIso8601String(),
  'updatedAt': instance.updatedAt.toIso8601String(),
};
