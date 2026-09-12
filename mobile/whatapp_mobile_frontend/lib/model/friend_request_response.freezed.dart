// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'friend_request_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FriendRequestResponse {

 int get statusCode; FriendRequestData get data; String get message; bool get success;
/// Create a copy of FriendRequestResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FriendRequestResponseCopyWith<FriendRequestResponse> get copyWith => _$FriendRequestResponseCopyWithImpl<FriendRequestResponse>(this as FriendRequestResponse, _$identity);

  /// Serializes this FriendRequestResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FriendRequestResponse&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.data, data) || other.data == data)&&(identical(other.message, message) || other.message == message)&&(identical(other.success, success) || other.success == success));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,statusCode,data,message,success);

@override
String toString() {
  return 'FriendRequestResponse(statusCode: $statusCode, data: $data, message: $message, success: $success)';
}


}

/// @nodoc
abstract mixin class $FriendRequestResponseCopyWith<$Res>  {
  factory $FriendRequestResponseCopyWith(FriendRequestResponse value, $Res Function(FriendRequestResponse) _then) = _$FriendRequestResponseCopyWithImpl;
@useResult
$Res call({
 int statusCode, FriendRequestData data, String message, bool success
});


$FriendRequestDataCopyWith<$Res> get data;

}
/// @nodoc
class _$FriendRequestResponseCopyWithImpl<$Res>
    implements $FriendRequestResponseCopyWith<$Res> {
  _$FriendRequestResponseCopyWithImpl(this._self, this._then);

  final FriendRequestResponse _self;
  final $Res Function(FriendRequestResponse) _then;

/// Create a copy of FriendRequestResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? statusCode = null,Object? data = null,Object? message = null,Object? success = null,}) {
  return _then(FriendRequestResponse(
statusCode: null == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as int,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as FriendRequestData,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of FriendRequestResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FriendRequestDataCopyWith<$Res> get data {
  
  return $FriendRequestDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [FriendRequestResponse].
extension FriendRequestResponsePatterns on FriendRequestResponse {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FriendRequestResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FriendRequestResponse() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FriendRequestResponse value)  $default,){
final _that = this;
switch (_that) {
case _FriendRequestResponse():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FriendRequestResponse value)?  $default,){
final _that = this;
switch (_that) {
case _FriendRequestResponse() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int statusCode,  FriendRequestData data,  String message,  bool success)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FriendRequestResponse() when $default != null:
return $default(_that.statusCode,_that.data,_that.message,_that.success);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int statusCode,  FriendRequestData data,  String message,  bool success)  $default,) {final _that = this;
switch (_that) {
case _FriendRequestResponse():
return $default(_that.statusCode,_that.data,_that.message,_that.success);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int statusCode,  FriendRequestData data,  String message,  bool success)?  $default,) {final _that = this;
switch (_that) {
case _FriendRequestResponse() when $default != null:
return $default(_that.statusCode,_that.data,_that.message,_that.success);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FriendRequestResponse implements FriendRequestResponse {
  const _FriendRequestResponse({required this.statusCode, required this.data, required this.message, required this.success});
  factory _FriendRequestResponse.fromJson(Map<String, dynamic> json) => _$FriendRequestResponseFromJson(json);

@override final  int statusCode;
@override final  FriendRequestData data;
@override final  String message;
@override final  bool success;

/// Create a copy of FriendRequestResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FriendRequestResponseCopyWith<_FriendRequestResponse> get copyWith => __$FriendRequestResponseCopyWithImpl<_FriendRequestResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FriendRequestResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FriendRequestResponse&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.data, data) || other.data == data)&&(identical(other.message, message) || other.message == message)&&(identical(other.success, success) || other.success == success));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,statusCode,data,message,success);

@override
String toString() {
  return 'FriendRequestResponse(statusCode: $statusCode, data: $data, message: $message, success: $success)';
}


}

/// @nodoc
abstract mixin class _$FriendRequestResponseCopyWith<$Res> implements $FriendRequestResponseCopyWith<$Res> {
  factory _$FriendRequestResponseCopyWith(_FriendRequestResponse value, $Res Function(_FriendRequestResponse) _then) = __$FriendRequestResponseCopyWithImpl;
@override @useResult
$Res call({
 int statusCode, FriendRequestData data, String message, bool success
});


@override $FriendRequestDataCopyWith<$Res> get data;

}
/// @nodoc
class __$FriendRequestResponseCopyWithImpl<$Res>
    implements _$FriendRequestResponseCopyWith<$Res> {
  __$FriendRequestResponseCopyWithImpl(this._self, this._then);

  final _FriendRequestResponse _self;
  final $Res Function(_FriendRequestResponse) _then;

/// Create a copy of FriendRequestResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? statusCode = null,Object? data = null,Object? message = null,Object? success = null,}) {
  return _then(_FriendRequestResponse(
statusCode: null == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as int,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as FriendRequestData,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of FriendRequestResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FriendRequestDataCopyWith<$Res> get data {
  
  return $FriendRequestDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$FriendRequestData {

 List<ReceivedFriendRequest> get receivedRequests; List<SentFriendRequest> get sentRequests;
/// Create a copy of FriendRequestData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FriendRequestDataCopyWith<FriendRequestData> get copyWith => _$FriendRequestDataCopyWithImpl<FriendRequestData>(this as FriendRequestData, _$identity);

  /// Serializes this FriendRequestData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FriendRequestData&&const DeepCollectionEquality().equals(other.receivedRequests, receivedRequests)&&const DeepCollectionEquality().equals(other.sentRequests, sentRequests));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(receivedRequests),const DeepCollectionEquality().hash(sentRequests));

@override
String toString() {
  return 'FriendRequestData(receivedRequests: $receivedRequests, sentRequests: $sentRequests)';
}


}

/// @nodoc
abstract mixin class $FriendRequestDataCopyWith<$Res>  {
  factory $FriendRequestDataCopyWith(FriendRequestData value, $Res Function(FriendRequestData) _then) = _$FriendRequestDataCopyWithImpl;
@useResult
$Res call({
 List<ReceivedFriendRequest> receivedRequests, List<SentFriendRequest> sentRequests
});




}
/// @nodoc
class _$FriendRequestDataCopyWithImpl<$Res>
    implements $FriendRequestDataCopyWith<$Res> {
  _$FriendRequestDataCopyWithImpl(this._self, this._then);

  final FriendRequestData _self;
  final $Res Function(FriendRequestData) _then;

/// Create a copy of FriendRequestData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? receivedRequests = null,Object? sentRequests = null,}) {
  return _then(FriendRequestData(
receivedRequests: null == receivedRequests ? _self.receivedRequests : receivedRequests // ignore: cast_nullable_to_non_nullable
as List<ReceivedFriendRequest>,sentRequests: null == sentRequests ? _self.sentRequests : sentRequests // ignore: cast_nullable_to_non_nullable
as List<SentFriendRequest>,
  ));
}

}


/// Adds pattern-matching-related methods to [FriendRequestData].
extension FriendRequestDataPatterns on FriendRequestData {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FriendRequestData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FriendRequestData() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FriendRequestData value)  $default,){
final _that = this;
switch (_that) {
case _FriendRequestData():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FriendRequestData value)?  $default,){
final _that = this;
switch (_that) {
case _FriendRequestData() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<ReceivedFriendRequest> receivedRequests,  List<SentFriendRequest> sentRequests)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FriendRequestData() when $default != null:
return $default(_that.receivedRequests,_that.sentRequests);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<ReceivedFriendRequest> receivedRequests,  List<SentFriendRequest> sentRequests)  $default,) {final _that = this;
switch (_that) {
case _FriendRequestData():
return $default(_that.receivedRequests,_that.sentRequests);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<ReceivedFriendRequest> receivedRequests,  List<SentFriendRequest> sentRequests)?  $default,) {final _that = this;
switch (_that) {
case _FriendRequestData() when $default != null:
return $default(_that.receivedRequests,_that.sentRequests);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FriendRequestData implements FriendRequestData {
  const _FriendRequestData({required  List<ReceivedFriendRequest> receivedRequests, required  List<SentFriendRequest> sentRequests}): _receivedRequests = receivedRequests,_sentRequests = sentRequests;
  factory _FriendRequestData.fromJson(Map<String, dynamic> json) => _$FriendRequestDataFromJson(json);

 final  List<ReceivedFriendRequest> _receivedRequests;
@override List<ReceivedFriendRequest> get receivedRequests {
  if (_receivedRequests is EqualUnmodifiableListView) return _receivedRequests;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_receivedRequests);
}

 final  List<SentFriendRequest> _sentRequests;
@override List<SentFriendRequest> get sentRequests {
  if (_sentRequests is EqualUnmodifiableListView) return _sentRequests;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_sentRequests);
}


/// Create a copy of FriendRequestData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FriendRequestDataCopyWith<_FriendRequestData> get copyWith => __$FriendRequestDataCopyWithImpl<_FriendRequestData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FriendRequestDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FriendRequestData&&const DeepCollectionEquality().equals(other._receivedRequests, _receivedRequests)&&const DeepCollectionEquality().equals(other._sentRequests, _sentRequests));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_receivedRequests),const DeepCollectionEquality().hash(_sentRequests));

@override
String toString() {
  return 'FriendRequestData(receivedRequests: $receivedRequests, sentRequests: $sentRequests)';
}


}

/// @nodoc
abstract mixin class _$FriendRequestDataCopyWith<$Res> implements $FriendRequestDataCopyWith<$Res> {
  factory _$FriendRequestDataCopyWith(_FriendRequestData value, $Res Function(_FriendRequestData) _then) = __$FriendRequestDataCopyWithImpl;
@override @useResult
$Res call({
 List<ReceivedFriendRequest> receivedRequests, List<SentFriendRequest> sentRequests
});




}
/// @nodoc
class __$FriendRequestDataCopyWithImpl<$Res>
    implements _$FriendRequestDataCopyWith<$Res> {
  __$FriendRequestDataCopyWithImpl(this._self, this._then);

  final _FriendRequestData _self;
  final $Res Function(_FriendRequestData) _then;

/// Create a copy of FriendRequestData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? receivedRequests = null,Object? sentRequests = null,}) {
  return _then(_FriendRequestData(
receivedRequests: null == receivedRequests ? _self._receivedRequests : receivedRequests // ignore: cast_nullable_to_non_nullable
as List<ReceivedFriendRequest>,sentRequests: null == sentRequests ? _self._sentRequests : sentRequests // ignore: cast_nullable_to_non_nullable
as List<SentFriendRequest>,
  ));
}


}


/// @nodoc
mixin _$ReceivedFriendRequest {

@JsonKey(name: '_id') String get id; FriendUser get sender; String get receiver; String get status; DateTime get createdAt; DateTime get updatedAt;@JsonKey(name: '__v') int get version;
/// Create a copy of ReceivedFriendRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReceivedFriendRequestCopyWith<ReceivedFriendRequest> get copyWith => _$ReceivedFriendRequestCopyWithImpl<ReceivedFriendRequest>(this as ReceivedFriendRequest, _$identity);

  /// Serializes this ReceivedFriendRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReceivedFriendRequest&&(identical(other.id, id) || other.id == id)&&(identical(other.sender, sender) || other.sender == sender)&&(identical(other.receiver, receiver) || other.receiver == receiver)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.version, version) || other.version == version));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,sender,receiver,status,createdAt,updatedAt,version);

@override
String toString() {
  return 'ReceivedFriendRequest(id: $id, sender: $sender, receiver: $receiver, status: $status, createdAt: $createdAt, updatedAt: $updatedAt, version: $version)';
}


}

/// @nodoc
abstract mixin class $ReceivedFriendRequestCopyWith<$Res>  {
  factory $ReceivedFriendRequestCopyWith(ReceivedFriendRequest value, $Res Function(ReceivedFriendRequest) _then) = _$ReceivedFriendRequestCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: '_id') String id, FriendUser sender, String receiver, String status, DateTime createdAt, DateTime updatedAt,@JsonKey(name: '__v') int version
});


$FriendUserCopyWith<$Res> get sender;

}
/// @nodoc
class _$ReceivedFriendRequestCopyWithImpl<$Res>
    implements $ReceivedFriendRequestCopyWith<$Res> {
  _$ReceivedFriendRequestCopyWithImpl(this._self, this._then);

  final ReceivedFriendRequest _self;
  final $Res Function(ReceivedFriendRequest) _then;

/// Create a copy of ReceivedFriendRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? sender = null,Object? receiver = null,Object? status = null,Object? createdAt = null,Object? updatedAt = null,Object? version = null,}) {
  return _then(ReceivedFriendRequest(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,sender: null == sender ? _self.sender : sender // ignore: cast_nullable_to_non_nullable
as FriendUser,receiver: null == receiver ? _self.receiver : receiver // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as int,
  ));
}
/// Create a copy of ReceivedFriendRequest
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FriendUserCopyWith<$Res> get sender {
  
  return $FriendUserCopyWith<$Res>(_self.sender, (value) {
    return _then(_self.copyWith(sender: value));
  });
}
}


/// Adds pattern-matching-related methods to [ReceivedFriendRequest].
extension ReceivedFriendRequestPatterns on ReceivedFriendRequest {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReceivedFriendRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReceivedFriendRequest() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReceivedFriendRequest value)  $default,){
final _that = this;
switch (_that) {
case _ReceivedFriendRequest():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReceivedFriendRequest value)?  $default,){
final _that = this;
switch (_that) {
case _ReceivedFriendRequest() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String id,  FriendUser sender,  String receiver,  String status,  DateTime createdAt,  DateTime updatedAt, @JsonKey(name: '__v')  int version)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReceivedFriendRequest() when $default != null:
return $default(_that.id,_that.sender,_that.receiver,_that.status,_that.createdAt,_that.updatedAt,_that.version);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String id,  FriendUser sender,  String receiver,  String status,  DateTime createdAt,  DateTime updatedAt, @JsonKey(name: '__v')  int version)  $default,) {final _that = this;
switch (_that) {
case _ReceivedFriendRequest():
return $default(_that.id,_that.sender,_that.receiver,_that.status,_that.createdAt,_that.updatedAt,_that.version);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: '_id')  String id,  FriendUser sender,  String receiver,  String status,  DateTime createdAt,  DateTime updatedAt, @JsonKey(name: '__v')  int version)?  $default,) {final _that = this;
switch (_that) {
case _ReceivedFriendRequest() when $default != null:
return $default(_that.id,_that.sender,_that.receiver,_that.status,_that.createdAt,_that.updatedAt,_that.version);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReceivedFriendRequest implements ReceivedFriendRequest {
  const _ReceivedFriendRequest({@JsonKey(name: '_id') required this.id, required this.sender, required this.receiver, required this.status, required this.createdAt, required this.updatedAt, @JsonKey(name: '__v') required this.version});
  factory _ReceivedFriendRequest.fromJson(Map<String, dynamic> json) => _$ReceivedFriendRequestFromJson(json);

@override@JsonKey(name: '_id') final  String id;
@override final  FriendUser sender;
@override final  String receiver;
@override final  String status;
@override final  DateTime createdAt;
@override final  DateTime updatedAt;
@override@JsonKey(name: '__v') final  int version;

/// Create a copy of ReceivedFriendRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReceivedFriendRequestCopyWith<_ReceivedFriendRequest> get copyWith => __$ReceivedFriendRequestCopyWithImpl<_ReceivedFriendRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReceivedFriendRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReceivedFriendRequest&&(identical(other.id, id) || other.id == id)&&(identical(other.sender, sender) || other.sender == sender)&&(identical(other.receiver, receiver) || other.receiver == receiver)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.version, version) || other.version == version));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,sender,receiver,status,createdAt,updatedAt,version);

@override
String toString() {
  return 'ReceivedFriendRequest(id: $id, sender: $sender, receiver: $receiver, status: $status, createdAt: $createdAt, updatedAt: $updatedAt, version: $version)';
}


}

/// @nodoc
abstract mixin class _$ReceivedFriendRequestCopyWith<$Res> implements $ReceivedFriendRequestCopyWith<$Res> {
  factory _$ReceivedFriendRequestCopyWith(_ReceivedFriendRequest value, $Res Function(_ReceivedFriendRequest) _then) = __$ReceivedFriendRequestCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: '_id') String id, FriendUser sender, String receiver, String status, DateTime createdAt, DateTime updatedAt,@JsonKey(name: '__v') int version
});


@override $FriendUserCopyWith<$Res> get sender;

}
/// @nodoc
class __$ReceivedFriendRequestCopyWithImpl<$Res>
    implements _$ReceivedFriendRequestCopyWith<$Res> {
  __$ReceivedFriendRequestCopyWithImpl(this._self, this._then);

  final _ReceivedFriendRequest _self;
  final $Res Function(_ReceivedFriendRequest) _then;

/// Create a copy of ReceivedFriendRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? sender = null,Object? receiver = null,Object? status = null,Object? createdAt = null,Object? updatedAt = null,Object? version = null,}) {
  return _then(_ReceivedFriendRequest(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,sender: null == sender ? _self.sender : sender // ignore: cast_nullable_to_non_nullable
as FriendUser,receiver: null == receiver ? _self.receiver : receiver // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of ReceivedFriendRequest
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FriendUserCopyWith<$Res> get sender {
  
  return $FriendUserCopyWith<$Res>(_self.sender, (value) {
    return _then(_self.copyWith(sender: value));
  });
}
}


/// @nodoc
mixin _$SentFriendRequest {

@JsonKey(name: '_id') String get id; String get sender; FriendUser get receiver; String get status; DateTime get createdAt; DateTime get updatedAt;@JsonKey(name: '__v') int get version;
/// Create a copy of SentFriendRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SentFriendRequestCopyWith<SentFriendRequest> get copyWith => _$SentFriendRequestCopyWithImpl<SentFriendRequest>(this as SentFriendRequest, _$identity);

  /// Serializes this SentFriendRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SentFriendRequest&&(identical(other.id, id) || other.id == id)&&(identical(other.sender, sender) || other.sender == sender)&&(identical(other.receiver, receiver) || other.receiver == receiver)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.version, version) || other.version == version));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,sender,receiver,status,createdAt,updatedAt,version);

@override
String toString() {
  return 'SentFriendRequest(id: $id, sender: $sender, receiver: $receiver, status: $status, createdAt: $createdAt, updatedAt: $updatedAt, version: $version)';
}


}

/// @nodoc
abstract mixin class $SentFriendRequestCopyWith<$Res>  {
  factory $SentFriendRequestCopyWith(SentFriendRequest value, $Res Function(SentFriendRequest) _then) = _$SentFriendRequestCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: '_id') String id, String sender, FriendUser receiver, String status, DateTime createdAt, DateTime updatedAt,@JsonKey(name: '__v') int version
});


$FriendUserCopyWith<$Res> get receiver;

}
/// @nodoc
class _$SentFriendRequestCopyWithImpl<$Res>
    implements $SentFriendRequestCopyWith<$Res> {
  _$SentFriendRequestCopyWithImpl(this._self, this._then);

  final SentFriendRequest _self;
  final $Res Function(SentFriendRequest) _then;

/// Create a copy of SentFriendRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? sender = null,Object? receiver = null,Object? status = null,Object? createdAt = null,Object? updatedAt = null,Object? version = null,}) {
  return _then(SentFriendRequest(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,sender: null == sender ? _self.sender : sender // ignore: cast_nullable_to_non_nullable
as String,receiver: null == receiver ? _self.receiver : receiver // ignore: cast_nullable_to_non_nullable
as FriendUser,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as int,
  ));
}
/// Create a copy of SentFriendRequest
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FriendUserCopyWith<$Res> get receiver {
  
  return $FriendUserCopyWith<$Res>(_self.receiver, (value) {
    return _then(_self.copyWith(receiver: value));
  });
}
}


/// Adds pattern-matching-related methods to [SentFriendRequest].
extension SentFriendRequestPatterns on SentFriendRequest {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SentFriendRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SentFriendRequest() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SentFriendRequest value)  $default,){
final _that = this;
switch (_that) {
case _SentFriendRequest():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SentFriendRequest value)?  $default,){
final _that = this;
switch (_that) {
case _SentFriendRequest() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String id,  String sender,  FriendUser receiver,  String status,  DateTime createdAt,  DateTime updatedAt, @JsonKey(name: '__v')  int version)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SentFriendRequest() when $default != null:
return $default(_that.id,_that.sender,_that.receiver,_that.status,_that.createdAt,_that.updatedAt,_that.version);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String id,  String sender,  FriendUser receiver,  String status,  DateTime createdAt,  DateTime updatedAt, @JsonKey(name: '__v')  int version)  $default,) {final _that = this;
switch (_that) {
case _SentFriendRequest():
return $default(_that.id,_that.sender,_that.receiver,_that.status,_that.createdAt,_that.updatedAt,_that.version);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: '_id')  String id,  String sender,  FriendUser receiver,  String status,  DateTime createdAt,  DateTime updatedAt, @JsonKey(name: '__v')  int version)?  $default,) {final _that = this;
switch (_that) {
case _SentFriendRequest() when $default != null:
return $default(_that.id,_that.sender,_that.receiver,_that.status,_that.createdAt,_that.updatedAt,_that.version);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SentFriendRequest implements SentFriendRequest {
  const _SentFriendRequest({@JsonKey(name: '_id') required this.id, required this.sender, required this.receiver, required this.status, required this.createdAt, required this.updatedAt, @JsonKey(name: '__v') required this.version});
  factory _SentFriendRequest.fromJson(Map<String, dynamic> json) => _$SentFriendRequestFromJson(json);

@override@JsonKey(name: '_id') final  String id;
@override final  String sender;
@override final  FriendUser receiver;
@override final  String status;
@override final  DateTime createdAt;
@override final  DateTime updatedAt;
@override@JsonKey(name: '__v') final  int version;

/// Create a copy of SentFriendRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SentFriendRequestCopyWith<_SentFriendRequest> get copyWith => __$SentFriendRequestCopyWithImpl<_SentFriendRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SentFriendRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SentFriendRequest&&(identical(other.id, id) || other.id == id)&&(identical(other.sender, sender) || other.sender == sender)&&(identical(other.receiver, receiver) || other.receiver == receiver)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.version, version) || other.version == version));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,sender,receiver,status,createdAt,updatedAt,version);

@override
String toString() {
  return 'SentFriendRequest(id: $id, sender: $sender, receiver: $receiver, status: $status, createdAt: $createdAt, updatedAt: $updatedAt, version: $version)';
}


}

/// @nodoc
abstract mixin class _$SentFriendRequestCopyWith<$Res> implements $SentFriendRequestCopyWith<$Res> {
  factory _$SentFriendRequestCopyWith(_SentFriendRequest value, $Res Function(_SentFriendRequest) _then) = __$SentFriendRequestCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: '_id') String id, String sender, FriendUser receiver, String status, DateTime createdAt, DateTime updatedAt,@JsonKey(name: '__v') int version
});


@override $FriendUserCopyWith<$Res> get receiver;

}
/// @nodoc
class __$SentFriendRequestCopyWithImpl<$Res>
    implements _$SentFriendRequestCopyWith<$Res> {
  __$SentFriendRequestCopyWithImpl(this._self, this._then);

  final _SentFriendRequest _self;
  final $Res Function(_SentFriendRequest) _then;

/// Create a copy of SentFriendRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? sender = null,Object? receiver = null,Object? status = null,Object? createdAt = null,Object? updatedAt = null,Object? version = null,}) {
  return _then(_SentFriendRequest(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,sender: null == sender ? _self.sender : sender // ignore: cast_nullable_to_non_nullable
as String,receiver: null == receiver ? _self.receiver : receiver // ignore: cast_nullable_to_non_nullable
as FriendUser,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of SentFriendRequest
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FriendUserCopyWith<$Res> get receiver {
  
  return $FriendUserCopyWith<$Res>(_self.receiver, (value) {
    return _then(_self.copyWith(receiver: value));
  });
}
}


/// @nodoc
mixin _$FriendUser {

@JsonKey(name: '_id') String get id; String get username; String get email; String get fullName; String get avatar; bool get isOnline; DateTime get lastSeenAt;
/// Create a copy of FriendUser
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FriendUserCopyWith<FriendUser> get copyWith => _$FriendUserCopyWithImpl<FriendUser>(this as FriendUser, _$identity);

  /// Serializes this FriendUser to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FriendUser&&(identical(other.id, id) || other.id == id)&&(identical(other.username, username) || other.username == username)&&(identical(other.email, email) || other.email == email)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.avatar, avatar) || other.avatar == avatar)&&(identical(other.isOnline, isOnline) || other.isOnline == isOnline)&&(identical(other.lastSeenAt, lastSeenAt) || other.lastSeenAt == lastSeenAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,username,email,fullName,avatar,isOnline,lastSeenAt);

@override
String toString() {
  return 'FriendUser(id: $id, username: $username, email: $email, fullName: $fullName, avatar: $avatar, isOnline: $isOnline, lastSeenAt: $lastSeenAt)';
}


}

/// @nodoc
abstract mixin class $FriendUserCopyWith<$Res>  {
  factory $FriendUserCopyWith(FriendUser value, $Res Function(FriendUser) _then) = _$FriendUserCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: '_id') String id, String username, String email, String fullName, String avatar, bool isOnline, DateTime lastSeenAt
});




}
/// @nodoc
class _$FriendUserCopyWithImpl<$Res>
    implements $FriendUserCopyWith<$Res> {
  _$FriendUserCopyWithImpl(this._self, this._then);

  final FriendUser _self;
  final $Res Function(FriendUser) _then;

/// Create a copy of FriendUser
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? username = null,Object? email = null,Object? fullName = null,Object? avatar = null,Object? isOnline = null,Object? lastSeenAt = null,}) {
  return _then(FriendUser(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,avatar: null == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as String,isOnline: null == isOnline ? _self.isOnline : isOnline // ignore: cast_nullable_to_non_nullable
as bool,lastSeenAt: null == lastSeenAt ? _self.lastSeenAt : lastSeenAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [FriendUser].
extension FriendUserPatterns on FriendUser {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FriendUser value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FriendUser() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FriendUser value)  $default,){
final _that = this;
switch (_that) {
case _FriendUser():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FriendUser value)?  $default,){
final _that = this;
switch (_that) {
case _FriendUser() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String id,  String username,  String email,  String fullName,  String avatar,  bool isOnline,  DateTime lastSeenAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FriendUser() when $default != null:
return $default(_that.id,_that.username,_that.email,_that.fullName,_that.avatar,_that.isOnline,_that.lastSeenAt);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String id,  String username,  String email,  String fullName,  String avatar,  bool isOnline,  DateTime lastSeenAt)  $default,) {final _that = this;
switch (_that) {
case _FriendUser():
return $default(_that.id,_that.username,_that.email,_that.fullName,_that.avatar,_that.isOnline,_that.lastSeenAt);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: '_id')  String id,  String username,  String email,  String fullName,  String avatar,  bool isOnline,  DateTime lastSeenAt)?  $default,) {final _that = this;
switch (_that) {
case _FriendUser() when $default != null:
return $default(_that.id,_that.username,_that.email,_that.fullName,_that.avatar,_that.isOnline,_that.lastSeenAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FriendUser implements FriendUser {
  const _FriendUser({@JsonKey(name: '_id') required this.id, required this.username, required this.email, required this.fullName, required this.avatar, required this.isOnline, required this.lastSeenAt});
  factory _FriendUser.fromJson(Map<String, dynamic> json) => _$FriendUserFromJson(json);

@override@JsonKey(name: '_id') final  String id;
@override final  String username;
@override final  String email;
@override final  String fullName;
@override final  String avatar;
@override final  bool isOnline;
@override final  DateTime lastSeenAt;

/// Create a copy of FriendUser
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FriendUserCopyWith<_FriendUser> get copyWith => __$FriendUserCopyWithImpl<_FriendUser>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FriendUserToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FriendUser&&(identical(other.id, id) || other.id == id)&&(identical(other.username, username) || other.username == username)&&(identical(other.email, email) || other.email == email)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.avatar, avatar) || other.avatar == avatar)&&(identical(other.isOnline, isOnline) || other.isOnline == isOnline)&&(identical(other.lastSeenAt, lastSeenAt) || other.lastSeenAt == lastSeenAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,username,email,fullName,avatar,isOnline,lastSeenAt);

@override
String toString() {
  return 'FriendUser(id: $id, username: $username, email: $email, fullName: $fullName, avatar: $avatar, isOnline: $isOnline, lastSeenAt: $lastSeenAt)';
}


}

/// @nodoc
abstract mixin class _$FriendUserCopyWith<$Res> implements $FriendUserCopyWith<$Res> {
  factory _$FriendUserCopyWith(_FriendUser value, $Res Function(_FriendUser) _then) = __$FriendUserCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: '_id') String id, String username, String email, String fullName, String avatar, bool isOnline, DateTime lastSeenAt
});




}
/// @nodoc
class __$FriendUserCopyWithImpl<$Res>
    implements _$FriendUserCopyWith<$Res> {
  __$FriendUserCopyWithImpl(this._self, this._then);

  final _FriendUser _self;
  final $Res Function(_FriendUser) _then;

/// Create a copy of FriendUser
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? username = null,Object? email = null,Object? fullName = null,Object? avatar = null,Object? isOnline = null,Object? lastSeenAt = null,}) {
  return _then(_FriendUser(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,avatar: null == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as String,isOnline: null == isOnline ? _self.isOnline : isOnline // ignore: cast_nullable_to_non_nullable
as bool,lastSeenAt: null == lastSeenAt ? _self.lastSeenAt : lastSeenAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
