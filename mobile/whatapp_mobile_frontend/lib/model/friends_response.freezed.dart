// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'friends_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FriendsResponse {

 int get statusCode; FriendsData get data; String get message; bool get success;
/// Create a copy of FriendsResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FriendsResponseCopyWith<FriendsResponse> get copyWith => _$FriendsResponseCopyWithImpl<FriendsResponse>(this as FriendsResponse, _$identity);

  /// Serializes this FriendsResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FriendsResponse&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.data, data) || other.data == data)&&(identical(other.message, message) || other.message == message)&&(identical(other.success, success) || other.success == success));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,statusCode,data,message,success);

@override
String toString() {
  return 'FriendsResponse(statusCode: $statusCode, data: $data, message: $message, success: $success)';
}


}

/// @nodoc
abstract mixin class $FriendsResponseCopyWith<$Res>  {
  factory $FriendsResponseCopyWith(FriendsResponse value, $Res Function(FriendsResponse) _then) = _$FriendsResponseCopyWithImpl;
@useResult
$Res call({
 int statusCode, FriendsData data, String message, bool success
});


$FriendsDataCopyWith<$Res> get data;

}
/// @nodoc
class _$FriendsResponseCopyWithImpl<$Res>
    implements $FriendsResponseCopyWith<$Res> {
  _$FriendsResponseCopyWithImpl(this._self, this._then);

  final FriendsResponse _self;
  final $Res Function(FriendsResponse) _then;

/// Create a copy of FriendsResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? statusCode = null,Object? data = null,Object? message = null,Object? success = null,}) {
  return _then(FriendsResponse(
statusCode: null == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as int,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as FriendsData,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of FriendsResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FriendsDataCopyWith<$Res> get data {
  
  return $FriendsDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [FriendsResponse].
extension FriendsResponsePatterns on FriendsResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FriendsResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FriendsResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FriendsResponse value)  $default,){
final _that = this;
switch (_that) {
case _FriendsResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FriendsResponse value)?  $default,){
final _that = this;
switch (_that) {
case _FriendsResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int statusCode,  FriendsData data,  String message,  bool success)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FriendsResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int statusCode,  FriendsData data,  String message,  bool success)  $default,) {final _that = this;
switch (_that) {
case _FriendsResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int statusCode,  FriendsData data,  String message,  bool success)?  $default,) {final _that = this;
switch (_that) {
case _FriendsResponse() when $default != null:
return $default(_that.statusCode,_that.data,_that.message,_that.success);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FriendsResponse implements FriendsResponse {
  const _FriendsResponse({required this.statusCode, required this.data, required this.message, required this.success});
  factory _FriendsResponse.fromJson(Map<String, dynamic> json) => _$FriendsResponseFromJson(json);

@override final  int statusCode;
@override final  FriendsData data;
@override final  String message;
@override final  bool success;

/// Create a copy of FriendsResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FriendsResponseCopyWith<_FriendsResponse> get copyWith => __$FriendsResponseCopyWithImpl<_FriendsResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FriendsResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FriendsResponse&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.data, data) || other.data == data)&&(identical(other.message, message) || other.message == message)&&(identical(other.success, success) || other.success == success));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,statusCode,data,message,success);

@override
String toString() {
  return 'FriendsResponse(statusCode: $statusCode, data: $data, message: $message, success: $success)';
}


}

/// @nodoc
abstract mixin class _$FriendsResponseCopyWith<$Res> implements $FriendsResponseCopyWith<$Res> {
  factory _$FriendsResponseCopyWith(_FriendsResponse value, $Res Function(_FriendsResponse) _then) = __$FriendsResponseCopyWithImpl;
@override @useResult
$Res call({
 int statusCode, FriendsData data, String message, bool success
});


@override $FriendsDataCopyWith<$Res> get data;

}
/// @nodoc
class __$FriendsResponseCopyWithImpl<$Res>
    implements _$FriendsResponseCopyWith<$Res> {
  __$FriendsResponseCopyWithImpl(this._self, this._then);

  final _FriendsResponse _self;
  final $Res Function(_FriendsResponse) _then;

/// Create a copy of FriendsResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? statusCode = null,Object? data = null,Object? message = null,Object? success = null,}) {
  return _then(_FriendsResponse(
statusCode: null == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as int,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as FriendsData,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of FriendsResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FriendsDataCopyWith<$Res> get data {
  
  return $FriendsDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$FriendsData {

 List<FriendItem> get friends;
/// Create a copy of FriendsData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FriendsDataCopyWith<FriendsData> get copyWith => _$FriendsDataCopyWithImpl<FriendsData>(this as FriendsData, _$identity);

  /// Serializes this FriendsData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FriendsData&&const DeepCollectionEquality().equals(other.friends, friends));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(friends));

@override
String toString() {
  return 'FriendsData(friends: $friends)';
}


}

/// @nodoc
abstract mixin class $FriendsDataCopyWith<$Res>  {
  factory $FriendsDataCopyWith(FriendsData value, $Res Function(FriendsData) _then) = _$FriendsDataCopyWithImpl;
@useResult
$Res call({
 List<FriendItem> friends
});




}
/// @nodoc
class _$FriendsDataCopyWithImpl<$Res>
    implements $FriendsDataCopyWith<$Res> {
  _$FriendsDataCopyWithImpl(this._self, this._then);

  final FriendsData _self;
  final $Res Function(FriendsData) _then;

/// Create a copy of FriendsData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? friends = null,}) {
  return _then(FriendsData(
friends: null == friends ? _self.friends : friends // ignore: cast_nullable_to_non_nullable
as List<FriendItem>,
  ));
}

}


/// Adds pattern-matching-related methods to [FriendsData].
extension FriendsDataPatterns on FriendsData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FriendsData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FriendsData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FriendsData value)  $default,){
final _that = this;
switch (_that) {
case _FriendsData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FriendsData value)?  $default,){
final _that = this;
switch (_that) {
case _FriendsData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<FriendItem> friends)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FriendsData() when $default != null:
return $default(_that.friends);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<FriendItem> friends)  $default,) {final _that = this;
switch (_that) {
case _FriendsData():
return $default(_that.friends);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<FriendItem> friends)?  $default,) {final _that = this;
switch (_that) {
case _FriendsData() when $default != null:
return $default(_that.friends);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FriendsData implements FriendsData {
  const _FriendsData({required  List<FriendItem> friends}): _friends = friends;
  factory _FriendsData.fromJson(Map<String, dynamic> json) => _$FriendsDataFromJson(json);

 final  List<FriendItem> _friends;
@override List<FriendItem> get friends {
  if (_friends is EqualUnmodifiableListView) return _friends;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_friends);
}


/// Create a copy of FriendsData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FriendsDataCopyWith<_FriendsData> get copyWith => __$FriendsDataCopyWithImpl<_FriendsData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FriendsDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FriendsData&&const DeepCollectionEquality().equals(other._friends, _friends));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_friends));

@override
String toString() {
  return 'FriendsData(friends: $friends)';
}


}

/// @nodoc
abstract mixin class _$FriendsDataCopyWith<$Res> implements $FriendsDataCopyWith<$Res> {
  factory _$FriendsDataCopyWith(_FriendsData value, $Res Function(_FriendsData) _then) = __$FriendsDataCopyWithImpl;
@override @useResult
$Res call({
 List<FriendItem> friends
});




}
/// @nodoc
class __$FriendsDataCopyWithImpl<$Res>
    implements _$FriendsDataCopyWith<$Res> {
  __$FriendsDataCopyWithImpl(this._self, this._then);

  final _FriendsData _self;
  final $Res Function(_FriendsData) _then;

/// Create a copy of FriendsData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? friends = null,}) {
  return _then(_FriendsData(
friends: null == friends ? _self._friends : friends // ignore: cast_nullable_to_non_nullable
as List<FriendItem>,
  ));
}


}


/// @nodoc
mixin _$FriendItem {

@JsonKey(name: '_id') String get id; String get username; String get fullName; String get email; String get avatar; bool get isOnline; DateTime get lastSeenAt; String get friendshipId;
/// Create a copy of FriendItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FriendItemCopyWith<FriendItem> get copyWith => _$FriendItemCopyWithImpl<FriendItem>(this as FriendItem, _$identity);

  /// Serializes this FriendItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FriendItem&&(identical(other.id, id) || other.id == id)&&(identical(other.username, username) || other.username == username)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.email, email) || other.email == email)&&(identical(other.avatar, avatar) || other.avatar == avatar)&&(identical(other.isOnline, isOnline) || other.isOnline == isOnline)&&(identical(other.lastSeenAt, lastSeenAt) || other.lastSeenAt == lastSeenAt)&&(identical(other.friendshipId, friendshipId) || other.friendshipId == friendshipId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,username,fullName,email,avatar,isOnline,lastSeenAt,friendshipId);

@override
String toString() {
  return 'FriendItem(id: $id, username: $username, fullName: $fullName, email: $email, avatar: $avatar, isOnline: $isOnline, lastSeenAt: $lastSeenAt, friendshipId: $friendshipId)';
}


}

/// @nodoc
abstract mixin class $FriendItemCopyWith<$Res>  {
  factory $FriendItemCopyWith(FriendItem value, $Res Function(FriendItem) _then) = _$FriendItemCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: '_id') String id, String username, String fullName, String email, String avatar, bool isOnline, DateTime lastSeenAt, String friendshipId
});




}
/// @nodoc
class _$FriendItemCopyWithImpl<$Res>
    implements $FriendItemCopyWith<$Res> {
  _$FriendItemCopyWithImpl(this._self, this._then);

  final FriendItem _self;
  final $Res Function(FriendItem) _then;

/// Create a copy of FriendItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? username = null,Object? fullName = null,Object? email = null,Object? avatar = null,Object? isOnline = null,Object? lastSeenAt = null,Object? friendshipId = null,}) {
  return _then(FriendItem(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,avatar: null == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as String,isOnline: null == isOnline ? _self.isOnline : isOnline // ignore: cast_nullable_to_non_nullable
as bool,lastSeenAt: null == lastSeenAt ? _self.lastSeenAt : lastSeenAt // ignore: cast_nullable_to_non_nullable
as DateTime,friendshipId: null == friendshipId ? _self.friendshipId : friendshipId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [FriendItem].
extension FriendItemPatterns on FriendItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FriendItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FriendItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FriendItem value)  $default,){
final _that = this;
switch (_that) {
case _FriendItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FriendItem value)?  $default,){
final _that = this;
switch (_that) {
case _FriendItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String id,  String username,  String fullName,  String email,  String avatar,  bool isOnline,  DateTime lastSeenAt,  String friendshipId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FriendItem() when $default != null:
return $default(_that.id,_that.username,_that.fullName,_that.email,_that.avatar,_that.isOnline,_that.lastSeenAt,_that.friendshipId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String id,  String username,  String fullName,  String email,  String avatar,  bool isOnline,  DateTime lastSeenAt,  String friendshipId)  $default,) {final _that = this;
switch (_that) {
case _FriendItem():
return $default(_that.id,_that.username,_that.fullName,_that.email,_that.avatar,_that.isOnline,_that.lastSeenAt,_that.friendshipId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: '_id')  String id,  String username,  String fullName,  String email,  String avatar,  bool isOnline,  DateTime lastSeenAt,  String friendshipId)?  $default,) {final _that = this;
switch (_that) {
case _FriendItem() when $default != null:
return $default(_that.id,_that.username,_that.fullName,_that.email,_that.avatar,_that.isOnline,_that.lastSeenAt,_that.friendshipId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FriendItem implements FriendItem {
  const _FriendItem({@JsonKey(name: '_id') required this.id, required this.username, required this.fullName, required this.email, required this.avatar, required this.isOnline, required this.lastSeenAt, required this.friendshipId});
  factory _FriendItem.fromJson(Map<String, dynamic> json) => _$FriendItemFromJson(json);

@override@JsonKey(name: '_id') final  String id;
@override final  String username;
@override final  String fullName;
@override final  String email;
@override final  String avatar;
@override final  bool isOnline;
@override final  DateTime lastSeenAt;
@override final  String friendshipId;

/// Create a copy of FriendItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FriendItemCopyWith<_FriendItem> get copyWith => __$FriendItemCopyWithImpl<_FriendItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FriendItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FriendItem&&(identical(other.id, id) || other.id == id)&&(identical(other.username, username) || other.username == username)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.email, email) || other.email == email)&&(identical(other.avatar, avatar) || other.avatar == avatar)&&(identical(other.isOnline, isOnline) || other.isOnline == isOnline)&&(identical(other.lastSeenAt, lastSeenAt) || other.lastSeenAt == lastSeenAt)&&(identical(other.friendshipId, friendshipId) || other.friendshipId == friendshipId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,username,fullName,email,avatar,isOnline,lastSeenAt,friendshipId);

@override
String toString() {
  return 'FriendItem(id: $id, username: $username, fullName: $fullName, email: $email, avatar: $avatar, isOnline: $isOnline, lastSeenAt: $lastSeenAt, friendshipId: $friendshipId)';
}


}

/// @nodoc
abstract mixin class _$FriendItemCopyWith<$Res> implements $FriendItemCopyWith<$Res> {
  factory _$FriendItemCopyWith(_FriendItem value, $Res Function(_FriendItem) _then) = __$FriendItemCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: '_id') String id, String username, String fullName, String email, String avatar, bool isOnline, DateTime lastSeenAt, String friendshipId
});




}
/// @nodoc
class __$FriendItemCopyWithImpl<$Res>
    implements _$FriendItemCopyWith<$Res> {
  __$FriendItemCopyWithImpl(this._self, this._then);

  final _FriendItem _self;
  final $Res Function(_FriendItem) _then;

/// Create a copy of FriendItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? username = null,Object? fullName = null,Object? email = null,Object? avatar = null,Object? isOnline = null,Object? lastSeenAt = null,Object? friendshipId = null,}) {
  return _then(_FriendItem(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,avatar: null == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as String,isOnline: null == isOnline ? _self.isOnline : isOnline // ignore: cast_nullable_to_non_nullable
as bool,lastSeenAt: null == lastSeenAt ? _self.lastSeenAt : lastSeenAt // ignore: cast_nullable_to_non_nullable
as DateTime,friendshipId: null == friendshipId ? _self.friendshipId : friendshipId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
