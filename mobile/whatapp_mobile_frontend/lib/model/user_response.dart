import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_response.freezed.dart';
part 'user_response.g.dart';

@freezed
abstract class UserResponse with _$UserResponse {
  const factory UserResponse({
    required int statusCode,
    required UserData data,
    required String message,
    required bool success,
  }) = _UserResponse;

  factory UserResponse.fromJson(Map<String, dynamic> json) =>
      _$UserResponseFromJson(json);
}

@freezed
abstract class UserData with _$UserData {
  const factory UserData({required User user}) = _UserData;

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);
}

@freezed
abstract class User with _$User {
  const factory User({
    @JsonKey(name: '_id') required String id,
    required String username,
    required String email,
    required String fullName,
    required String avatar,
    required bool isOnline,
    required DateTime lastSeenAt,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
