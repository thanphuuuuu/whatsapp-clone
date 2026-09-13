// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_conversation_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateConversationResponse {

 int get statusCode; CreateConversationData get data; String get message; bool get success;
/// Create a copy of CreateConversationResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateConversationResponseCopyWith<CreateConversationResponse> get copyWith => _$CreateConversationResponseCopyWithImpl<CreateConversationResponse>(this as CreateConversationResponse, _$identity);

  /// Serializes this CreateConversationResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateConversationResponse&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.data, data) || other.data == data)&&(identical(other.message, message) || other.message == message)&&(identical(other.success, success) || other.success == success));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,statusCode,data,message,success);

@override
String toString() {
  return 'CreateConversationResponse(statusCode: $statusCode, data: $data, message: $message, success: $success)';
}


}

/// @nodoc
abstract mixin class $CreateConversationResponseCopyWith<$Res>  {
  factory $CreateConversationResponseCopyWith(CreateConversationResponse value, $Res Function(CreateConversationResponse) _then) = _$CreateConversationResponseCopyWithImpl;
@useResult
$Res call({
 int statusCode, CreateConversationData data, String message, bool success
});


$CreateConversationDataCopyWith<$Res> get data;

}
/// @nodoc
class _$CreateConversationResponseCopyWithImpl<$Res>
    implements $CreateConversationResponseCopyWith<$Res> {
  _$CreateConversationResponseCopyWithImpl(this._self, this._then);

  final CreateConversationResponse _self;
  final $Res Function(CreateConversationResponse) _then;

/// Create a copy of CreateConversationResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? statusCode = null,Object? data = null,Object? message = null,Object? success = null,}) {
  return _then(CreateConversationResponse(
statusCode: null == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as int,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as CreateConversationData,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of CreateConversationResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CreateConversationDataCopyWith<$Res> get data {
  
  return $CreateConversationDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [CreateConversationResponse].
extension CreateConversationResponsePatterns on CreateConversationResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateConversationResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateConversationResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateConversationResponse value)  $default,){
final _that = this;
switch (_that) {
case _CreateConversationResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateConversationResponse value)?  $default,){
final _that = this;
switch (_that) {
case _CreateConversationResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int statusCode,  CreateConversationData data,  String message,  bool success)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateConversationResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int statusCode,  CreateConversationData data,  String message,  bool success)  $default,) {final _that = this;
switch (_that) {
case _CreateConversationResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int statusCode,  CreateConversationData data,  String message,  bool success)?  $default,) {final _that = this;
switch (_that) {
case _CreateConversationResponse() when $default != null:
return $default(_that.statusCode,_that.data,_that.message,_that.success);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateConversationResponse implements CreateConversationResponse {
  const _CreateConversationResponse({required this.statusCode, required this.data, required this.message, required this.success});
  factory _CreateConversationResponse.fromJson(Map<String, dynamic> json) => _$CreateConversationResponseFromJson(json);

@override final  int statusCode;
@override final  CreateConversationData data;
@override final  String message;
@override final  bool success;

/// Create a copy of CreateConversationResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateConversationResponseCopyWith<_CreateConversationResponse> get copyWith => __$CreateConversationResponseCopyWithImpl<_CreateConversationResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateConversationResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateConversationResponse&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.data, data) || other.data == data)&&(identical(other.message, message) || other.message == message)&&(identical(other.success, success) || other.success == success));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,statusCode,data,message,success);

@override
String toString() {
  return 'CreateConversationResponse(statusCode: $statusCode, data: $data, message: $message, success: $success)';
}


}

/// @nodoc
abstract mixin class _$CreateConversationResponseCopyWith<$Res> implements $CreateConversationResponseCopyWith<$Res> {
  factory _$CreateConversationResponseCopyWith(_CreateConversationResponse value, $Res Function(_CreateConversationResponse) _then) = __$CreateConversationResponseCopyWithImpl;
@override @useResult
$Res call({
 int statusCode, CreateConversationData data, String message, bool success
});


@override $CreateConversationDataCopyWith<$Res> get data;

}
/// @nodoc
class __$CreateConversationResponseCopyWithImpl<$Res>
    implements _$CreateConversationResponseCopyWith<$Res> {
  __$CreateConversationResponseCopyWithImpl(this._self, this._then);

  final _CreateConversationResponse _self;
  final $Res Function(_CreateConversationResponse) _then;

/// Create a copy of CreateConversationResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? statusCode = null,Object? data = null,Object? message = null,Object? success = null,}) {
  return _then(_CreateConversationResponse(
statusCode: null == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as int,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as CreateConversationData,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of CreateConversationResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CreateConversationDataCopyWith<$Res> get data {
  
  return $CreateConversationDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$CreateConversationData {

 ConversationModel get conversation;
/// Create a copy of CreateConversationData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateConversationDataCopyWith<CreateConversationData> get copyWith => _$CreateConversationDataCopyWithImpl<CreateConversationData>(this as CreateConversationData, _$identity);

  /// Serializes this CreateConversationData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateConversationData&&(identical(other.conversation, conversation) || other.conversation == conversation));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,conversation);

@override
String toString() {
  return 'CreateConversationData(conversation: $conversation)';
}


}

/// @nodoc
abstract mixin class $CreateConversationDataCopyWith<$Res>  {
  factory $CreateConversationDataCopyWith(CreateConversationData value, $Res Function(CreateConversationData) _then) = _$CreateConversationDataCopyWithImpl;
@useResult
$Res call({
 ConversationModel conversation
});


$ConversationModelCopyWith<$Res> get conversation;

}
/// @nodoc
class _$CreateConversationDataCopyWithImpl<$Res>
    implements $CreateConversationDataCopyWith<$Res> {
  _$CreateConversationDataCopyWithImpl(this._self, this._then);

  final CreateConversationData _self;
  final $Res Function(CreateConversationData) _then;

/// Create a copy of CreateConversationData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? conversation = null,}) {
  return _then(CreateConversationData(
conversation: null == conversation ? _self.conversation : conversation // ignore: cast_nullable_to_non_nullable
as ConversationModel,
  ));
}
/// Create a copy of CreateConversationData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ConversationModelCopyWith<$Res> get conversation {
  
  return $ConversationModelCopyWith<$Res>(_self.conversation, (value) {
    return _then(_self.copyWith(conversation: value));
  });
}
}


/// Adds pattern-matching-related methods to [CreateConversationData].
extension CreateConversationDataPatterns on CreateConversationData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateConversationData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateConversationData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateConversationData value)  $default,){
final _that = this;
switch (_that) {
case _CreateConversationData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateConversationData value)?  $default,){
final _that = this;
switch (_that) {
case _CreateConversationData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ConversationModel conversation)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateConversationData() when $default != null:
return $default(_that.conversation);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ConversationModel conversation)  $default,) {final _that = this;
switch (_that) {
case _CreateConversationData():
return $default(_that.conversation);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ConversationModel conversation)?  $default,) {final _that = this;
switch (_that) {
case _CreateConversationData() when $default != null:
return $default(_that.conversation);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateConversationData implements CreateConversationData {
  const _CreateConversationData({required this.conversation});
  factory _CreateConversationData.fromJson(Map<String, dynamic> json) => _$CreateConversationDataFromJson(json);

@override final  ConversationModel conversation;

/// Create a copy of CreateConversationData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateConversationDataCopyWith<_CreateConversationData> get copyWith => __$CreateConversationDataCopyWithImpl<_CreateConversationData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateConversationDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateConversationData&&(identical(other.conversation, conversation) || other.conversation == conversation));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,conversation);

@override
String toString() {
  return 'CreateConversationData(conversation: $conversation)';
}


}

/// @nodoc
abstract mixin class _$CreateConversationDataCopyWith<$Res> implements $CreateConversationDataCopyWith<$Res> {
  factory _$CreateConversationDataCopyWith(_CreateConversationData value, $Res Function(_CreateConversationData) _then) = __$CreateConversationDataCopyWithImpl;
@override @useResult
$Res call({
 ConversationModel conversation
});


@override $ConversationModelCopyWith<$Res> get conversation;

}
/// @nodoc
class __$CreateConversationDataCopyWithImpl<$Res>
    implements _$CreateConversationDataCopyWith<$Res> {
  __$CreateConversationDataCopyWithImpl(this._self, this._then);

  final _CreateConversationData _self;
  final $Res Function(_CreateConversationData) _then;

/// Create a copy of CreateConversationData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? conversation = null,}) {
  return _then(_CreateConversationData(
conversation: null == conversation ? _self.conversation : conversation // ignore: cast_nullable_to_non_nullable
as ConversationModel,
  ));
}

/// Create a copy of CreateConversationData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ConversationModelCopyWith<$Res> get conversation {
  
  return $ConversationModelCopyWith<$Res>(_self.conversation, (value) {
    return _then(_self.copyWith(conversation: value));
  });
}
}


/// @nodoc
mixin _$ConversationModel {

@JsonKey(name: '_id') String get id; List<MemberModel> get members; bool get isGroup; String get groupName; String get groupAvatar; Map<String, int> get unreadCount; DateTime get createdAt; DateTime get updatedAt;@JsonKey(name: '__v') int get v;
/// Create a copy of ConversationModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ConversationModelCopyWith<ConversationModel> get copyWith => _$ConversationModelCopyWithImpl<ConversationModel>(this as ConversationModel, _$identity);

  /// Serializes this ConversationModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConversationModel&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other.members, members)&&(identical(other.isGroup, isGroup) || other.isGroup == isGroup)&&(identical(other.groupName, groupName) || other.groupName == groupName)&&(identical(other.groupAvatar, groupAvatar) || other.groupAvatar == groupAvatar)&&const DeepCollectionEquality().equals(other.unreadCount, unreadCount)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.v, v) || other.v == v));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(members),isGroup,groupName,groupAvatar,const DeepCollectionEquality().hash(unreadCount),createdAt,updatedAt,v);

@override
String toString() {
  return 'ConversationModel(id: $id, members: $members, isGroup: $isGroup, groupName: $groupName, groupAvatar: $groupAvatar, unreadCount: $unreadCount, createdAt: $createdAt, updatedAt: $updatedAt, v: $v)';
}


}

/// @nodoc
abstract mixin class $ConversationModelCopyWith<$Res>  {
  factory $ConversationModelCopyWith(ConversationModel value, $Res Function(ConversationModel) _then) = _$ConversationModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: '_id') String id, List<MemberModel> members, bool isGroup, String groupName, String groupAvatar, Map<String, int> unreadCount, DateTime createdAt, DateTime updatedAt,@JsonKey(name: '__v') int v
});




}
/// @nodoc
class _$ConversationModelCopyWithImpl<$Res>
    implements $ConversationModelCopyWith<$Res> {
  _$ConversationModelCopyWithImpl(this._self, this._then);

  final ConversationModel _self;
  final $Res Function(ConversationModel) _then;

/// Create a copy of ConversationModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? members = null,Object? isGroup = null,Object? groupName = null,Object? groupAvatar = null,Object? unreadCount = null,Object? createdAt = null,Object? updatedAt = null,Object? v = null,}) {
  return _then(ConversationModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,members: null == members ? _self.members : members // ignore: cast_nullable_to_non_nullable
as List<MemberModel>,isGroup: null == isGroup ? _self.isGroup : isGroup // ignore: cast_nullable_to_non_nullable
as bool,groupName: null == groupName ? _self.groupName : groupName // ignore: cast_nullable_to_non_nullable
as String,groupAvatar: null == groupAvatar ? _self.groupAvatar : groupAvatar // ignore: cast_nullable_to_non_nullable
as String,unreadCount: null == unreadCount ? _self.unreadCount : unreadCount // ignore: cast_nullable_to_non_nullable
as Map<String, int>,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,v: null == v ? _self.v : v // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [ConversationModel].
extension ConversationModelPatterns on ConversationModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ConversationModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ConversationModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ConversationModel value)  $default,){
final _that = this;
switch (_that) {
case _ConversationModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ConversationModel value)?  $default,){
final _that = this;
switch (_that) {
case _ConversationModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String id,  List<MemberModel> members,  bool isGroup,  String groupName,  String groupAvatar,  Map<String, int> unreadCount,  DateTime createdAt,  DateTime updatedAt, @JsonKey(name: '__v')  int v)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ConversationModel() when $default != null:
return $default(_that.id,_that.members,_that.isGroup,_that.groupName,_that.groupAvatar,_that.unreadCount,_that.createdAt,_that.updatedAt,_that.v);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String id,  List<MemberModel> members,  bool isGroup,  String groupName,  String groupAvatar,  Map<String, int> unreadCount,  DateTime createdAt,  DateTime updatedAt, @JsonKey(name: '__v')  int v)  $default,) {final _that = this;
switch (_that) {
case _ConversationModel():
return $default(_that.id,_that.members,_that.isGroup,_that.groupName,_that.groupAvatar,_that.unreadCount,_that.createdAt,_that.updatedAt,_that.v);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: '_id')  String id,  List<MemberModel> members,  bool isGroup,  String groupName,  String groupAvatar,  Map<String, int> unreadCount,  DateTime createdAt,  DateTime updatedAt, @JsonKey(name: '__v')  int v)?  $default,) {final _that = this;
switch (_that) {
case _ConversationModel() when $default != null:
return $default(_that.id,_that.members,_that.isGroup,_that.groupName,_that.groupAvatar,_that.unreadCount,_that.createdAt,_that.updatedAt,_that.v);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ConversationModel implements ConversationModel {
  const _ConversationModel({@JsonKey(name: '_id') required this.id, required  List<MemberModel> members, required this.isGroup, required this.groupName, required this.groupAvatar, required  Map<String, int> unreadCount, required this.createdAt, required this.updatedAt, @JsonKey(name: '__v') required this.v}): _members = members,_unreadCount = unreadCount;
  factory _ConversationModel.fromJson(Map<String, dynamic> json) => _$ConversationModelFromJson(json);

@override@JsonKey(name: '_id') final  String id;
 final  List<MemberModel> _members;
@override List<MemberModel> get members {
  if (_members is EqualUnmodifiableListView) return _members;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_members);
}

@override final  bool isGroup;
@override final  String groupName;
@override final  String groupAvatar;
 final  Map<String, int> _unreadCount;
@override Map<String, int> get unreadCount {
  if (_unreadCount is EqualUnmodifiableMapView) return _unreadCount;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_unreadCount);
}

@override final  DateTime createdAt;
@override final  DateTime updatedAt;
@override@JsonKey(name: '__v') final  int v;

/// Create a copy of ConversationModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ConversationModelCopyWith<_ConversationModel> get copyWith => __$ConversationModelCopyWithImpl<_ConversationModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ConversationModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ConversationModel&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other._members, _members)&&(identical(other.isGroup, isGroup) || other.isGroup == isGroup)&&(identical(other.groupName, groupName) || other.groupName == groupName)&&(identical(other.groupAvatar, groupAvatar) || other.groupAvatar == groupAvatar)&&const DeepCollectionEquality().equals(other._unreadCount, _unreadCount)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.v, v) || other.v == v));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(_members),isGroup,groupName,groupAvatar,const DeepCollectionEquality().hash(_unreadCount),createdAt,updatedAt,v);

@override
String toString() {
  return 'ConversationModel(id: $id, members: $members, isGroup: $isGroup, groupName: $groupName, groupAvatar: $groupAvatar, unreadCount: $unreadCount, createdAt: $createdAt, updatedAt: $updatedAt, v: $v)';
}


}

/// @nodoc
abstract mixin class _$ConversationModelCopyWith<$Res> implements $ConversationModelCopyWith<$Res> {
  factory _$ConversationModelCopyWith(_ConversationModel value, $Res Function(_ConversationModel) _then) = __$ConversationModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: '_id') String id, List<MemberModel> members, bool isGroup, String groupName, String groupAvatar, Map<String, int> unreadCount, DateTime createdAt, DateTime updatedAt,@JsonKey(name: '__v') int v
});




}
/// @nodoc
class __$ConversationModelCopyWithImpl<$Res>
    implements _$ConversationModelCopyWith<$Res> {
  __$ConversationModelCopyWithImpl(this._self, this._then);

  final _ConversationModel _self;
  final $Res Function(_ConversationModel) _then;

/// Create a copy of ConversationModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? members = null,Object? isGroup = null,Object? groupName = null,Object? groupAvatar = null,Object? unreadCount = null,Object? createdAt = null,Object? updatedAt = null,Object? v = null,}) {
  return _then(_ConversationModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,members: null == members ? _self._members : members // ignore: cast_nullable_to_non_nullable
as List<MemberModel>,isGroup: null == isGroup ? _self.isGroup : isGroup // ignore: cast_nullable_to_non_nullable
as bool,groupName: null == groupName ? _self.groupName : groupName // ignore: cast_nullable_to_non_nullable
as String,groupAvatar: null == groupAvatar ? _self.groupAvatar : groupAvatar // ignore: cast_nullable_to_non_nullable
as String,unreadCount: null == unreadCount ? _self._unreadCount : unreadCount // ignore: cast_nullable_to_non_nullable
as Map<String, int>,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,v: null == v ? _self.v : v // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$MemberModel {

@JsonKey(name: '_id') String get id; String get username; String get email; String get fullName; String get avatar; bool get isOnline; DateTime get lastSeenAt;
/// Create a copy of MemberModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MemberModelCopyWith<MemberModel> get copyWith => _$MemberModelCopyWithImpl<MemberModel>(this as MemberModel, _$identity);

  /// Serializes this MemberModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MemberModel&&(identical(other.id, id) || other.id == id)&&(identical(other.username, username) || other.username == username)&&(identical(other.email, email) || other.email == email)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.avatar, avatar) || other.avatar == avatar)&&(identical(other.isOnline, isOnline) || other.isOnline == isOnline)&&(identical(other.lastSeenAt, lastSeenAt) || other.lastSeenAt == lastSeenAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,username,email,fullName,avatar,isOnline,lastSeenAt);

@override
String toString() {
  return 'MemberModel(id: $id, username: $username, email: $email, fullName: $fullName, avatar: $avatar, isOnline: $isOnline, lastSeenAt: $lastSeenAt)';
}


}

/// @nodoc
abstract mixin class $MemberModelCopyWith<$Res>  {
  factory $MemberModelCopyWith(MemberModel value, $Res Function(MemberModel) _then) = _$MemberModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: '_id') String id, String username, String email, String fullName, String avatar, bool isOnline, DateTime lastSeenAt
});




}
/// @nodoc
class _$MemberModelCopyWithImpl<$Res>
    implements $MemberModelCopyWith<$Res> {
  _$MemberModelCopyWithImpl(this._self, this._then);

  final MemberModel _self;
  final $Res Function(MemberModel) _then;

/// Create a copy of MemberModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? username = null,Object? email = null,Object? fullName = null,Object? avatar = null,Object? isOnline = null,Object? lastSeenAt = null,}) {
  return _then(MemberModel(
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


/// Adds pattern-matching-related methods to [MemberModel].
extension MemberModelPatterns on MemberModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MemberModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MemberModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MemberModel value)  $default,){
final _that = this;
switch (_that) {
case _MemberModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MemberModel value)?  $default,){
final _that = this;
switch (_that) {
case _MemberModel() when $default != null:
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
case _MemberModel() when $default != null:
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
case _MemberModel():
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
case _MemberModel() when $default != null:
return $default(_that.id,_that.username,_that.email,_that.fullName,_that.avatar,_that.isOnline,_that.lastSeenAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MemberModel implements MemberModel {
  const _MemberModel({@JsonKey(name: '_id') required this.id, required this.username, required this.email, required this.fullName, required this.avatar, required this.isOnline, required this.lastSeenAt});
  factory _MemberModel.fromJson(Map<String, dynamic> json) => _$MemberModelFromJson(json);

@override@JsonKey(name: '_id') final  String id;
@override final  String username;
@override final  String email;
@override final  String fullName;
@override final  String avatar;
@override final  bool isOnline;
@override final  DateTime lastSeenAt;

/// Create a copy of MemberModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MemberModelCopyWith<_MemberModel> get copyWith => __$MemberModelCopyWithImpl<_MemberModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MemberModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MemberModel&&(identical(other.id, id) || other.id == id)&&(identical(other.username, username) || other.username == username)&&(identical(other.email, email) || other.email == email)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.avatar, avatar) || other.avatar == avatar)&&(identical(other.isOnline, isOnline) || other.isOnline == isOnline)&&(identical(other.lastSeenAt, lastSeenAt) || other.lastSeenAt == lastSeenAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,username,email,fullName,avatar,isOnline,lastSeenAt);

@override
String toString() {
  return 'MemberModel(id: $id, username: $username, email: $email, fullName: $fullName, avatar: $avatar, isOnline: $isOnline, lastSeenAt: $lastSeenAt)';
}


}

/// @nodoc
abstract mixin class _$MemberModelCopyWith<$Res> implements $MemberModelCopyWith<$Res> {
  factory _$MemberModelCopyWith(_MemberModel value, $Res Function(_MemberModel) _then) = __$MemberModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: '_id') String id, String username, String email, String fullName, String avatar, bool isOnline, DateTime lastSeenAt
});




}
/// @nodoc
class __$MemberModelCopyWithImpl<$Res>
    implements _$MemberModelCopyWith<$Res> {
  __$MemberModelCopyWithImpl(this._self, this._then);

  final _MemberModel _self;
  final $Res Function(_MemberModel) _then;

/// Create a copy of MemberModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? username = null,Object? email = null,Object? fullName = null,Object? avatar = null,Object? isOnline = null,Object? lastSeenAt = null,}) {
  return _then(_MemberModel(
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
