// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_register_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AuthRegisterResponse {

 int get statusCode; AuthRegisterData get data; String get message; bool get success;
/// Create a copy of AuthRegisterResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthRegisterResponseCopyWith<AuthRegisterResponse> get copyWith => _$AuthRegisterResponseCopyWithImpl<AuthRegisterResponse>(this as AuthRegisterResponse, _$identity);

  /// Serializes this AuthRegisterResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthRegisterResponse&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.data, data) || other.data == data)&&(identical(other.message, message) || other.message == message)&&(identical(other.success, success) || other.success == success));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,statusCode,data,message,success);

@override
String toString() {
  return 'AuthRegisterResponse(statusCode: $statusCode, data: $data, message: $message, success: $success)';
}


}

/// @nodoc
abstract mixin class $AuthRegisterResponseCopyWith<$Res>  {
  factory $AuthRegisterResponseCopyWith(AuthRegisterResponse value, $Res Function(AuthRegisterResponse) _then) = _$AuthRegisterResponseCopyWithImpl;
@useResult
$Res call({
 int statusCode, AuthRegisterData data, String message, bool success
});


$AuthRegisterDataCopyWith<$Res> get data;

}
/// @nodoc
class _$AuthRegisterResponseCopyWithImpl<$Res>
    implements $AuthRegisterResponseCopyWith<$Res> {
  _$AuthRegisterResponseCopyWithImpl(this._self, this._then);

  final AuthRegisterResponse _self;
  final $Res Function(AuthRegisterResponse) _then;

/// Create a copy of AuthRegisterResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? statusCode = null,Object? data = null,Object? message = null,Object? success = null,}) {
  return _then(AuthRegisterResponse(
statusCode: null == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as int,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as AuthRegisterData,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of AuthRegisterResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AuthRegisterDataCopyWith<$Res> get data {
  
  return $AuthRegisterDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [AuthRegisterResponse].
extension AuthRegisterResponsePatterns on AuthRegisterResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AuthRegisterResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AuthRegisterResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AuthRegisterResponse value)  $default,){
final _that = this;
switch (_that) {
case _AuthRegisterResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AuthRegisterResponse value)?  $default,){
final _that = this;
switch (_that) {
case _AuthRegisterResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int statusCode,  AuthRegisterData data,  String message,  bool success)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AuthRegisterResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int statusCode,  AuthRegisterData data,  String message,  bool success)  $default,) {final _that = this;
switch (_that) {
case _AuthRegisterResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int statusCode,  AuthRegisterData data,  String message,  bool success)?  $default,) {final _that = this;
switch (_that) {
case _AuthRegisterResponse() when $default != null:
return $default(_that.statusCode,_that.data,_that.message,_that.success);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AuthRegisterResponse implements AuthRegisterResponse {
  const _AuthRegisterResponse({required this.statusCode, required this.data, required this.message, required this.success});
  factory _AuthRegisterResponse.fromJson(Map<String, dynamic> json) => _$AuthRegisterResponseFromJson(json);

@override final  int statusCode;
@override final  AuthRegisterData data;
@override final  String message;
@override final  bool success;

/// Create a copy of AuthRegisterResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthRegisterResponseCopyWith<_AuthRegisterResponse> get copyWith => __$AuthRegisterResponseCopyWithImpl<_AuthRegisterResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AuthRegisterResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthRegisterResponse&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.data, data) || other.data == data)&&(identical(other.message, message) || other.message == message)&&(identical(other.success, success) || other.success == success));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,statusCode,data,message,success);

@override
String toString() {
  return 'AuthRegisterResponse(statusCode: $statusCode, data: $data, message: $message, success: $success)';
}


}

/// @nodoc
abstract mixin class _$AuthRegisterResponseCopyWith<$Res> implements $AuthRegisterResponseCopyWith<$Res> {
  factory _$AuthRegisterResponseCopyWith(_AuthRegisterResponse value, $Res Function(_AuthRegisterResponse) _then) = __$AuthRegisterResponseCopyWithImpl;
@override @useResult
$Res call({
 int statusCode, AuthRegisterData data, String message, bool success
});


@override $AuthRegisterDataCopyWith<$Res> get data;

}
/// @nodoc
class __$AuthRegisterResponseCopyWithImpl<$Res>
    implements _$AuthRegisterResponseCopyWith<$Res> {
  __$AuthRegisterResponseCopyWithImpl(this._self, this._then);

  final _AuthRegisterResponse _self;
  final $Res Function(_AuthRegisterResponse) _then;

/// Create a copy of AuthRegisterResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? statusCode = null,Object? data = null,Object? message = null,Object? success = null,}) {
  return _then(_AuthRegisterResponse(
statusCode: null == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as int,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as AuthRegisterData,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of AuthRegisterResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AuthRegisterDataCopyWith<$Res> get data {
  
  return $AuthRegisterDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$AuthRegisterData {

 User get user;
/// Create a copy of AuthRegisterData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthRegisterDataCopyWith<AuthRegisterData> get copyWith => _$AuthRegisterDataCopyWithImpl<AuthRegisterData>(this as AuthRegisterData, _$identity);

  /// Serializes this AuthRegisterData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthRegisterData&&(identical(other.user, user) || other.user == user));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,user);

@override
String toString() {
  return 'AuthRegisterData(user: $user)';
}


}

/// @nodoc
abstract mixin class $AuthRegisterDataCopyWith<$Res>  {
  factory $AuthRegisterDataCopyWith(AuthRegisterData value, $Res Function(AuthRegisterData) _then) = _$AuthRegisterDataCopyWithImpl;
@useResult
$Res call({
 User user
});


$UserCopyWith<$Res> get user;

}
/// @nodoc
class _$AuthRegisterDataCopyWithImpl<$Res>
    implements $AuthRegisterDataCopyWith<$Res> {
  _$AuthRegisterDataCopyWithImpl(this._self, this._then);

  final AuthRegisterData _self;
  final $Res Function(AuthRegisterData) _then;

/// Create a copy of AuthRegisterData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? user = null,}) {
  return _then(AuthRegisterData(
user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User,
  ));
}
/// Create a copy of AuthRegisterData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res> get user {
  
  return $UserCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// Adds pattern-matching-related methods to [AuthRegisterData].
extension AuthRegisterDataPatterns on AuthRegisterData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AuthRegisterData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AuthRegisterData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AuthRegisterData value)  $default,){
final _that = this;
switch (_that) {
case _AuthRegisterData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AuthRegisterData value)?  $default,){
final _that = this;
switch (_that) {
case _AuthRegisterData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( User user)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AuthRegisterData() when $default != null:
return $default(_that.user);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( User user)  $default,) {final _that = this;
switch (_that) {
case _AuthRegisterData():
return $default(_that.user);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( User user)?  $default,) {final _that = this;
switch (_that) {
case _AuthRegisterData() when $default != null:
return $default(_that.user);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AuthRegisterData implements AuthRegisterData {
  const _AuthRegisterData({required this.user});
  factory _AuthRegisterData.fromJson(Map<String, dynamic> json) => _$AuthRegisterDataFromJson(json);

@override final  User user;

/// Create a copy of AuthRegisterData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthRegisterDataCopyWith<_AuthRegisterData> get copyWith => __$AuthRegisterDataCopyWithImpl<_AuthRegisterData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AuthRegisterDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthRegisterData&&(identical(other.user, user) || other.user == user));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,user);

@override
String toString() {
  return 'AuthRegisterData(user: $user)';
}


}

/// @nodoc
abstract mixin class _$AuthRegisterDataCopyWith<$Res> implements $AuthRegisterDataCopyWith<$Res> {
  factory _$AuthRegisterDataCopyWith(_AuthRegisterData value, $Res Function(_AuthRegisterData) _then) = __$AuthRegisterDataCopyWithImpl;
@override @useResult
$Res call({
 User user
});


@override $UserCopyWith<$Res> get user;

}
/// @nodoc
class __$AuthRegisterDataCopyWithImpl<$Res>
    implements _$AuthRegisterDataCopyWith<$Res> {
  __$AuthRegisterDataCopyWithImpl(this._self, this._then);

  final _AuthRegisterData _self;
  final $Res Function(_AuthRegisterData) _then;

/// Create a copy of AuthRegisterData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? user = null,}) {
  return _then(_AuthRegisterData(
user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User,
  ));
}

/// Create a copy of AuthRegisterData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res> get user {
  
  return $UserCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// @nodoc
mixin _$User {

 String get username; String get email; String get fullName; String get avatar; bool get isOnline;@JsonKey(name: '_id') String get id; DateTime get lastSeenAt; DateTime get createdAt; DateTime get updatedAt;
/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserCopyWith<User> get copyWith => _$UserCopyWithImpl<User>(this as User, _$identity);

  /// Serializes this User to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is User&&(identical(other.username, username) || other.username == username)&&(identical(other.email, email) || other.email == email)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.avatar, avatar) || other.avatar == avatar)&&(identical(other.isOnline, isOnline) || other.isOnline == isOnline)&&(identical(other.id, id) || other.id == id)&&(identical(other.lastSeenAt, lastSeenAt) || other.lastSeenAt == lastSeenAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,username,email,fullName,avatar,isOnline,id,lastSeenAt,createdAt,updatedAt);

@override
String toString() {
  return 'User(username: $username, email: $email, fullName: $fullName, avatar: $avatar, isOnline: $isOnline, id: $id, lastSeenAt: $lastSeenAt, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $UserCopyWith<$Res>  {
  factory $UserCopyWith(User value, $Res Function(User) _then) = _$UserCopyWithImpl;
@useResult
$Res call({
 String username, String email, String fullName, String avatar, bool isOnline,@JsonKey(name: '_id') String id, DateTime lastSeenAt, DateTime createdAt, DateTime updatedAt
});




}
/// @nodoc
class _$UserCopyWithImpl<$Res>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._self, this._then);

  final User _self;
  final $Res Function(User) _then;

/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? username = null,Object? email = null,Object? fullName = null,Object? avatar = null,Object? isOnline = null,Object? id = null,Object? lastSeenAt = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(User(
username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,avatar: null == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as String,isOnline: null == isOnline ? _self.isOnline : isOnline // ignore: cast_nullable_to_non_nullable
as bool,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,lastSeenAt: null == lastSeenAt ? _self.lastSeenAt : lastSeenAt // ignore: cast_nullable_to_non_nullable
as DateTime,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [User].
extension UserPatterns on User {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _User value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _User() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _User value)  $default,){
final _that = this;
switch (_that) {
case _User():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _User value)?  $default,){
final _that = this;
switch (_that) {
case _User() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String username,  String email,  String fullName,  String avatar,  bool isOnline, @JsonKey(name: '_id')  String id,  DateTime lastSeenAt,  DateTime createdAt,  DateTime updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _User() when $default != null:
return $default(_that.username,_that.email,_that.fullName,_that.avatar,_that.isOnline,_that.id,_that.lastSeenAt,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String username,  String email,  String fullName,  String avatar,  bool isOnline, @JsonKey(name: '_id')  String id,  DateTime lastSeenAt,  DateTime createdAt,  DateTime updatedAt)  $default,) {final _that = this;
switch (_that) {
case _User():
return $default(_that.username,_that.email,_that.fullName,_that.avatar,_that.isOnline,_that.id,_that.lastSeenAt,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String username,  String email,  String fullName,  String avatar,  bool isOnline, @JsonKey(name: '_id')  String id,  DateTime lastSeenAt,  DateTime createdAt,  DateTime updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _User() when $default != null:
return $default(_that.username,_that.email,_that.fullName,_that.avatar,_that.isOnline,_that.id,_that.lastSeenAt,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _User implements User {
  const _User({required this.username, required this.email, required this.fullName, required this.avatar, required this.isOnline, @JsonKey(name: '_id') required this.id, required this.lastSeenAt, required this.createdAt, required this.updatedAt});
  factory _User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

@override final  String username;
@override final  String email;
@override final  String fullName;
@override final  String avatar;
@override final  bool isOnline;
@override@JsonKey(name: '_id') final  String id;
@override final  DateTime lastSeenAt;
@override final  DateTime createdAt;
@override final  DateTime updatedAt;

/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserCopyWith<_User> get copyWith => __$UserCopyWithImpl<_User>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _User&&(identical(other.username, username) || other.username == username)&&(identical(other.email, email) || other.email == email)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.avatar, avatar) || other.avatar == avatar)&&(identical(other.isOnline, isOnline) || other.isOnline == isOnline)&&(identical(other.id, id) || other.id == id)&&(identical(other.lastSeenAt, lastSeenAt) || other.lastSeenAt == lastSeenAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,username,email,fullName,avatar,isOnline,id,lastSeenAt,createdAt,updatedAt);

@override
String toString() {
  return 'User(username: $username, email: $email, fullName: $fullName, avatar: $avatar, isOnline: $isOnline, id: $id, lastSeenAt: $lastSeenAt, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) _then) = __$UserCopyWithImpl;
@override @useResult
$Res call({
 String username, String email, String fullName, String avatar, bool isOnline,@JsonKey(name: '_id') String id, DateTime lastSeenAt, DateTime createdAt, DateTime updatedAt
});




}
/// @nodoc
class __$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(this._self, this._then);

  final _User _self;
  final $Res Function(_User) _then;

/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? username = null,Object? email = null,Object? fullName = null,Object? avatar = null,Object? isOnline = null,Object? id = null,Object? lastSeenAt = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_User(
username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,avatar: null == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as String,isOnline: null == isOnline ? _self.isOnline : isOnline // ignore: cast_nullable_to_non_nullable
as bool,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,lastSeenAt: null == lastSeenAt ? _self.lastSeenAt : lastSeenAt // ignore: cast_nullable_to_non_nullable
as DateTime,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
