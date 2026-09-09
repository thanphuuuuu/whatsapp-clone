import 'package:freezed_annotation/freezed_annotation.dart';

part 'friends_response.freezed.dart';
part 'friends_response.g.dart';

@freezed
abstract class FriendsResponse with _$FriendsResponse {
  const factory FriendsResponse({
    required int statusCode,
    required FriendsData data,
    required String message,
    required bool success,
  }) = _FriendsResponse;

  factory FriendsResponse.fromJson(Map<String, dynamic> json) =>
      _$FriendsResponseFromJson(json);
}

@freezed
abstract class FriendsData with _$FriendsData {
  const factory FriendsData({required List<FriendItem> friends}) = _FriendsData;

  factory FriendsData.fromJson(Map<String, dynamic> json) =>
      _$FriendsDataFromJson(json);
}

@freezed
abstract class FriendItem with _$FriendItem {
  const factory FriendItem({
    @JsonKey(name: '_id') required String id,
    required String username,
    required String fullName,
    required String email,
    required String avatar,
    required bool isOnline,
    required DateTime lastSeenAt,
    required String friendshipId,
  }) = _FriendItem;

  factory FriendItem.fromJson(Map<String, dynamic> json) =>
      _$FriendItemFromJson(json);
}
