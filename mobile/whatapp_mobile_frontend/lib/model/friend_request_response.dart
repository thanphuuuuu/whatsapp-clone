import 'package:freezed_annotation/freezed_annotation.dart';

part 'friend_request_response.freezed.dart';
part 'friend_request_response.g.dart';

@freezed
abstract class FriendRequestResponse with _$FriendRequestResponse {
  const factory FriendRequestResponse({
    required int statusCode,
    required FriendRequestData data,
    required String message,
    required bool success,
  }) = _FriendRequestResponse;

  factory FriendRequestResponse.fromJson(Map<String, dynamic> json) =>
      _$FriendRequestResponseFromJson(json);
}

@freezed
abstract class FriendRequestData with _$FriendRequestData {
  const factory FriendRequestData({
    required List<ReceivedFriendRequest> receivedRequests,
    required List<SentFriendRequest> sentRequests,
  }) = _FriendRequestData;

  factory FriendRequestData.fromJson(Map<String, dynamic> json) =>
      _$FriendRequestDataFromJson(json);
}

@freezed
abstract class ReceivedFriendRequest with _$ReceivedFriendRequest {
  const factory ReceivedFriendRequest({
    @JsonKey(name: '_id') required String id,
    required FriendUser sender,
    required String receiver,
    required String status,
    required DateTime createdAt,
    required DateTime updatedAt,
    @JsonKey(name: '__v') required int version,
  }) = _ReceivedFriendRequest;

  factory ReceivedFriendRequest.fromJson(Map<String, dynamic> json) =>
      _$ReceivedFriendRequestFromJson(json);
}

@freezed
abstract class SentFriendRequest with _$SentFriendRequest {
  const factory SentFriendRequest({
    @JsonKey(name: '_id') required String id,
    required String sender,
    required FriendUser receiver,
    required String status,
    required DateTime createdAt,
    required DateTime updatedAt,
    @JsonKey(name: '__v') required int version,
  }) = _SentFriendRequest;

  factory SentFriendRequest.fromJson(Map<String, dynamic> json) =>
      _$SentFriendRequestFromJson(json);
}

@freezed
abstract class FriendUser with _$FriendUser {
  const factory FriendUser({
    @JsonKey(name: '_id') required String id,
    required String username,
    required String email,
    required String fullName,
    required String avatar,
    required bool isOnline,
    required DateTime lastSeenAt,
  }) = _FriendUser;

  factory FriendUser.fromJson(Map<String, dynamic> json) =>
      _$FriendUserFromJson(json);
}
