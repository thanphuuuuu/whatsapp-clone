import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_register_response.freezed.dart';
part 'auth_register_response.g.dart';

@freezed
abstract class AuthRegisterResponse with _$AuthRegisterResponse {
  const factory AuthRegisterResponse({
    required int statusCode,
    required AuthRegisterData data,
    required String message,
    required bool success,
  }) = _AuthRegisterResponse;

  factory AuthRegisterResponse.fromJson(Map<String, dynamic> json) =>
      _$AuthRegisterResponseFromJson(json);
}

@freezed
abstract class AuthRegisterData with _$AuthRegisterData {
  const factory AuthRegisterData({required User user}) = _AuthRegisterData;

  factory AuthRegisterData.fromJson(Map<String, dynamic> json) =>
      _$AuthRegisterDataFromJson(json);
}

@freezed
abstract class User with _$User {
  const factory User({
    required String username,
    required String email,
    required String fullName,
    required String avatar,
    required bool isOnline,
    @JsonKey(name: '_id') required String id,
    required DateTime lastSeenAt,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
