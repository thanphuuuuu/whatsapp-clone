// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_search_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserSearchResponse _$UserSearchResponseFromJson(Map<String, dynamic> json) =>
    _UserSearchResponse(
      statusCode: (json['statusCode'] as num).toInt(),
      data: UserSearchData.fromJson(json['data'] as Map<String, dynamic>),
      message: json['message'] as String,
      success: json['success'] as bool,
    );

Map<String, dynamic> _$UserSearchResponseToJson(_UserSearchResponse instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'data': instance.data,
      'message': instance.message,
      'success': instance.success,
    };

_UserSearchData _$UserSearchDataFromJson(Map<String, dynamic> json) =>
    _UserSearchData(
      users: (json['users'] as List<dynamic>)
          .map((e) => UserModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$UserSearchDataToJson(_UserSearchData instance) =>
    <String, dynamic>{'users': instance.users};

_UserModel _$UserModelFromJson(Map<String, dynamic> json) => _UserModel(
  id: json['_id'] as String,
  username: json['username'] as String,
  email: json['email'] as String,
  fullName: json['fullName'] as String,
  avatar: json['avatar'] as String,
  isOnline: json['isOnline'] as bool,
  lastSeenAt: DateTime.parse(json['lastSeenAt'] as String),
);

Map<String, dynamic> _$UserModelToJson(_UserModel instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'username': instance.username,
      'email': instance.email,
      'fullName': instance.fullName,
      'avatar': instance.avatar,
      'isOnline': instance.isOnline,
      'lastSeenAt': instance.lastSeenAt.toIso8601String(),
    };
