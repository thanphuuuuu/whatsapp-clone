import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_response.freezed.dart';
part 'login_response.g.dart';

@freezed
abstract class LoginResponse with _$LoginResponse {
  const factory LoginResponse({
    required int statusCode,
    required LoginData data,
    required String message,
    required bool success,
  }) = _LoginResponse;

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);
}

@freezed
abstract class LoginData with _$LoginData {
  const factory LoginData({required User user, required String accessToken}) =
      _LoginData;

  factory LoginData.fromJson(Map<String, dynamic> json) =>
      _$LoginDataFromJson(json);
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
