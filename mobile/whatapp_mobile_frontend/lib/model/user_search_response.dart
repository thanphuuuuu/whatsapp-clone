import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_search_response.freezed.dart';
part 'user_search_response.g.dart';

@freezed
abstract class UserSearchResponse with _$UserSearchResponse {
  const factory UserSearchResponse({
    required int statusCode,
    required UserSearchData data,
    required String message,
    required bool success,
  }) = _UserSearchResponse;

  factory UserSearchResponse.fromJson(Map<String, dynamic> json) =>
      _$UserSearchResponseFromJson(json);
}

@freezed
abstract class UserSearchData with _$UserSearchData {
  const factory UserSearchData({required List<UserModel> users}) =
      _UserSearchData;

  factory UserSearchData.fromJson(Map<String, dynamic> json) =>
      _$UserSearchDataFromJson(json);
}

@freezed
abstract class UserModel with _$UserModel {
  const factory UserModel({
    @JsonKey(name: '_id') required String id,
    required String username,
    required String email,
    required String fullName,
    required String avatar,
    required bool isOnline,
    required DateTime lastSeenAt,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
