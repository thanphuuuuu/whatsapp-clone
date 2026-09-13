// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_group_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateGroupResponse {

 int get statusCode; CreateGroupData get data; String get message; bool get success;
/// Create a copy of CreateGroupResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateGroupResponseCopyWith<CreateGroupResponse> get copyWith => _$CreateGroupResponseCopyWithImpl<CreateGroupResponse>(this as CreateGroupResponse, _$identity);

  /// Serializes this CreateGroupResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateGroupResponse&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.data, data) || other.data == data)&&(identical(other.message, message) || other.message == message)&&(identical(other.success, success) || other.success == success));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,statusCode,data,message,success);

@override
String toString() {
  return 'CreateGroupResponse(statusCode: $statusCode, data: $data, message: $message, success: $success)';
}


}

/// @nodoc
abstract mixin class $CreateGroupResponseCopyWith<$Res>  {
  factory $CreateGroupResponseCopyWith(CreateGroupResponse value, $Res Function(CreateGroupResponse) _then) = _$CreateGroupResponseCopyWithImpl;
@useResult
$Res call({
 int statusCode, CreateGroupData data, String message, bool success
});


$CreateGroupDataCopyWith<$Res> get data;

}
/// @nodoc
class _$CreateGroupResponseCopyWithImpl<$Res>
    implements $CreateGroupResponseCopyWith<$Res> {
  _$CreateGroupResponseCopyWithImpl(this._self, this._then);

  final CreateGroupResponse _self;
  final $Res Function(CreateGroupResponse) _then;

/// Create a copy of CreateGroupResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? statusCode = null,Object? data = null,Object? message = null,Object? success = null,}) {
  return _then(CreateGroupResponse(
statusCode: null == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as int,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as CreateGroupData,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of CreateGroupResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CreateGroupDataCopyWith<$Res> get data {
  
  return $CreateGroupDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [CreateGroupResponse].
extension CreateGroupResponsePatterns on CreateGroupResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateGroupResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateGroupResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateGroupResponse value)  $default,){
final _that = this;
switch (_that) {
case _CreateGroupResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateGroupResponse value)?  $default,){
final _that = this;
switch (_that) {
case _CreateGroupResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int statusCode,  CreateGroupData data,  String message,  bool success)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateGroupResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int statusCode,  CreateGroupData data,  String message,  bool success)  $default,) {final _that = this;
switch (_that) {
case _CreateGroupResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int statusCode,  CreateGroupData data,  String message,  bool success)?  $default,) {final _that = this;
switch (_that) {
case _CreateGroupResponse() when $default != null:
return $default(_that.statusCode,_that.data,_that.message,_that.success);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateGroupResponse implements CreateGroupResponse {
  const _CreateGroupResponse({required this.statusCode, required this.data, required this.message, required this.success});
  factory _CreateGroupResponse.fromJson(Map<String, dynamic> json) => _$CreateGroupResponseFromJson(json);

@override final  int statusCode;
@override final  CreateGroupData data;
@override final  String message;
@override final  bool success;

/// Create a copy of CreateGroupResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateGroupResponseCopyWith<_CreateGroupResponse> get copyWith => __$CreateGroupResponseCopyWithImpl<_CreateGroupResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateGroupResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateGroupResponse&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.data, data) || other.data == data)&&(identical(other.message, message) || other.message == message)&&(identical(other.success, success) || other.success == success));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,statusCode,data,message,success);

@override
String toString() {
  return 'CreateGroupResponse(statusCode: $statusCode, data: $data, message: $message, success: $success)';
}


}

/// @nodoc
abstract mixin class _$CreateGroupResponseCopyWith<$Res> implements $CreateGroupResponseCopyWith<$Res> {
  factory _$CreateGroupResponseCopyWith(_CreateGroupResponse value, $Res Function(_CreateGroupResponse) _then) = __$CreateGroupResponseCopyWithImpl;
@override @useResult
$Res call({
 int statusCode, CreateGroupData data, String message, bool success
});


@override $CreateGroupDataCopyWith<$Res> get data;

}
/// @nodoc
class __$CreateGroupResponseCopyWithImpl<$Res>
    implements _$CreateGroupResponseCopyWith<$Res> {
  __$CreateGroupResponseCopyWithImpl(this._self, this._then);

  final _CreateGroupResponse _self;
  final $Res Function(_CreateGroupResponse) _then;

/// Create a copy of CreateGroupResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? statusCode = null,Object? data = null,Object? message = null,Object? success = null,}) {
  return _then(_CreateGroupResponse(
statusCode: null == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as int,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as CreateGroupData,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of CreateGroupResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CreateGroupDataCopyWith<$Res> get data {
  
  return $CreateGroupDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$CreateGroupData {

 GroupConversation get conversation;
/// Create a copy of CreateGroupData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateGroupDataCopyWith<CreateGroupData> get copyWith => _$CreateGroupDataCopyWithImpl<CreateGroupData>(this as CreateGroupData, _$identity);

  /// Serializes this CreateGroupData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateGroupData&&(identical(other.conversation, conversation) || other.conversation == conversation));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,conversation);

@override
String toString() {
  return 'CreateGroupData(conversation: $conversation)';
}


}

/// @nodoc
abstract mixin class $CreateGroupDataCopyWith<$Res>  {
  factory $CreateGroupDataCopyWith(CreateGroupData value, $Res Function(CreateGroupData) _then) = _$CreateGroupDataCopyWithImpl;
@useResult
$Res call({
 GroupConversation conversation
});


$GroupConversationCopyWith<$Res> get conversation;

}
/// @nodoc
class _$CreateGroupDataCopyWithImpl<$Res>
    implements $CreateGroupDataCopyWith<$Res> {
  _$CreateGroupDataCopyWithImpl(this._self, this._then);

  final CreateGroupData _self;
  final $Res Function(CreateGroupData) _then;

/// Create a copy of CreateGroupData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? conversation = null,}) {
  return _then(CreateGroupData(
conversation: null == conversation ? _self.conversation : conversation // ignore: cast_nullable_to_non_nullable
as GroupConversation,
  ));
}
/// Create a copy of CreateGroupData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GroupConversationCopyWith<$Res> get conversation {
  
  return $GroupConversationCopyWith<$Res>(_self.conversation, (value) {
    return _then(_self.copyWith(conversation: value));
  });
}
}


/// Adds pattern-matching-related methods to [CreateGroupData].
extension CreateGroupDataPatterns on CreateGroupData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateGroupData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateGroupData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateGroupData value)  $default,){
final _that = this;
switch (_that) {
case _CreateGroupData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateGroupData value)?  $default,){
final _that = this;
switch (_that) {
case _CreateGroupData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( GroupConversation conversation)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateGroupData() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( GroupConversation conversation)  $default,) {final _that = this;
switch (_that) {
case _CreateGroupData():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( GroupConversation conversation)?  $default,) {final _that = this;
switch (_that) {
case _CreateGroupData() when $default != null:
return $default(_that.conversation);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateGroupData implements CreateGroupData {
  const _CreateGroupData({required this.conversation});
  factory _CreateGroupData.fromJson(Map<String, dynamic> json) => _$CreateGroupDataFromJson(json);

@override final  GroupConversation conversation;

/// Create a copy of CreateGroupData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateGroupDataCopyWith<_CreateGroupData> get copyWith => __$CreateGroupDataCopyWithImpl<_CreateGroupData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateGroupDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateGroupData&&(identical(other.conversation, conversation) || other.conversation == conversation));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,conversation);

@override
String toString() {
  return 'CreateGroupData(conversation: $conversation)';
}


}

/// @nodoc
abstract mixin class _$CreateGroupDataCopyWith<$Res> implements $CreateGroupDataCopyWith<$Res> {
  factory _$CreateGroupDataCopyWith(_CreateGroupData value, $Res Function(_CreateGroupData) _then) = __$CreateGroupDataCopyWithImpl;
@override @useResult
$Res call({
 GroupConversation conversation
});


@override $GroupConversationCopyWith<$Res> get conversation;

}
/// @nodoc
class __$CreateGroupDataCopyWithImpl<$Res>
    implements _$CreateGroupDataCopyWith<$Res> {
  __$CreateGroupDataCopyWithImpl(this._self, this._then);

  final _CreateGroupData _self;
  final $Res Function(_CreateGroupData) _then;

/// Create a copy of CreateGroupData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? conversation = null,}) {
  return _then(_CreateGroupData(
conversation: null == conversation ? _self.conversation : conversation // ignore: cast_nullable_to_non_nullable
as GroupConversation,
  ));
}

/// Create a copy of CreateGroupData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GroupConversationCopyWith<$Res> get conversation {
  
  return $GroupConversationCopyWith<$Res>(_self.conversation, (value) {
    return _then(_self.copyWith(conversation: value));
  });
}
}


/// @nodoc
mixin _$GroupConversation {

@JsonKey(name: '_id') String get id; List<GroupMember> get members; bool get isGroup; String get groupName; String get groupAvatar; GroupAdmin get groupAdmin; Map<String, int> get unreadCount; DateTime get createdAt; DateTime get updatedAt;@JsonKey(name: '__v') int get v;
/// Create a copy of GroupConversation
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GroupConversationCopyWith<GroupConversation> get copyWith => _$GroupConversationCopyWithImpl<GroupConversation>(this as GroupConversation, _$identity);

  /// Serializes this GroupConversation to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GroupConversation&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other.members, members)&&(identical(other.isGroup, isGroup) || other.isGroup == isGroup)&&(identical(other.groupName, groupName) || other.groupName == groupName)&&(identical(other.groupAvatar, groupAvatar) || other.groupAvatar == groupAvatar)&&(identical(other.groupAdmin, groupAdmin) || other.groupAdmin == groupAdmin)&&const DeepCollectionEquality().equals(other.unreadCount, unreadCount)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.v, v) || other.v == v));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(members),isGroup,groupName,groupAvatar,groupAdmin,const DeepCollectionEquality().hash(unreadCount),createdAt,updatedAt,v);

@override
String toString() {
  return 'GroupConversation(id: $id, members: $members, isGroup: $isGroup, groupName: $groupName, groupAvatar: $groupAvatar, groupAdmin: $groupAdmin, unreadCount: $unreadCount, createdAt: $createdAt, updatedAt: $updatedAt, v: $v)';
}


}

/// @nodoc
abstract mixin class $GroupConversationCopyWith<$Res>  {
  factory $GroupConversationCopyWith(GroupConversation value, $Res Function(GroupConversation) _then) = _$GroupConversationCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: '_id') String id, List<GroupMember> members, bool isGroup, String groupName, String groupAvatar, GroupAdmin groupAdmin, Map<String, int> unreadCount, DateTime createdAt, DateTime updatedAt,@JsonKey(name: '__v') int v
});


$GroupAdminCopyWith<$Res> get groupAdmin;

}
/// @nodoc
class _$GroupConversationCopyWithImpl<$Res>
    implements $GroupConversationCopyWith<$Res> {
  _$GroupConversationCopyWithImpl(this._self, this._then);

  final GroupConversation _self;
  final $Res Function(GroupConversation) _then;

/// Create a copy of GroupConversation
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? members = null,Object? isGroup = null,Object? groupName = null,Object? groupAvatar = null,Object? groupAdmin = null,Object? unreadCount = null,Object? createdAt = null,Object? updatedAt = null,Object? v = null,}) {
  return _then(GroupConversation(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,members: null == members ? _self.members : members // ignore: cast_nullable_to_non_nullable
as List<GroupMember>,isGroup: null == isGroup ? _self.isGroup : isGroup // ignore: cast_nullable_to_non_nullable
as bool,groupName: null == groupName ? _self.groupName : groupName // ignore: cast_nullable_to_non_nullable
as String,groupAvatar: null == groupAvatar ? _self.groupAvatar : groupAvatar // ignore: cast_nullable_to_non_nullable
as String,groupAdmin: null == groupAdmin ? _self.groupAdmin : groupAdmin // ignore: cast_nullable_to_non_nullable
as GroupAdmin,unreadCount: null == unreadCount ? _self.unreadCount : unreadCount // ignore: cast_nullable_to_non_nullable
as Map<String, int>,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,v: null == v ? _self.v : v // ignore: cast_nullable_to_non_nullable
as int,
  ));
}
/// Create a copy of GroupConversation
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GroupAdminCopyWith<$Res> get groupAdmin {
  
  return $GroupAdminCopyWith<$Res>(_self.groupAdmin, (value) {
    return _then(_self.copyWith(groupAdmin: value));
  });
}
}


/// Adds pattern-matching-related methods to [GroupConversation].
extension GroupConversationPatterns on GroupConversation {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GroupConversation value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GroupConversation() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GroupConversation value)  $default,){
final _that = this;
switch (_that) {
case _GroupConversation():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GroupConversation value)?  $default,){
final _that = this;
switch (_that) {
case _GroupConversation() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String id,  List<GroupMember> members,  bool isGroup,  String groupName,  String groupAvatar,  GroupAdmin groupAdmin,  Map<String, int> unreadCount,  DateTime createdAt,  DateTime updatedAt, @JsonKey(name: '__v')  int v)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GroupConversation() when $default != null:
return $default(_that.id,_that.members,_that.isGroup,_that.groupName,_that.groupAvatar,_that.groupAdmin,_that.unreadCount,_that.createdAt,_that.updatedAt,_that.v);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String id,  List<GroupMember> members,  bool isGroup,  String groupName,  String groupAvatar,  GroupAdmin groupAdmin,  Map<String, int> unreadCount,  DateTime createdAt,  DateTime updatedAt, @JsonKey(name: '__v')  int v)  $default,) {final _that = this;
switch (_that) {
case _GroupConversation():
return $default(_that.id,_that.members,_that.isGroup,_that.groupName,_that.groupAvatar,_that.groupAdmin,_that.unreadCount,_that.createdAt,_that.updatedAt,_that.v);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: '_id')  String id,  List<GroupMember> members,  bool isGroup,  String groupName,  String groupAvatar,  GroupAdmin groupAdmin,  Map<String, int> unreadCount,  DateTime createdAt,  DateTime updatedAt, @JsonKey(name: '__v')  int v)?  $default,) {final _that = this;
switch (_that) {
case _GroupConversation() when $default != null:
return $default(_that.id,_that.members,_that.isGroup,_that.groupName,_that.groupAvatar,_that.groupAdmin,_that.unreadCount,_that.createdAt,_that.updatedAt,_that.v);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GroupConversation implements GroupConversation {
  const _GroupConversation({@JsonKey(name: '_id') required this.id, required  List<GroupMember> members, required this.isGroup, required this.groupName, this.groupAvatar = '', required this.groupAdmin,  Map<String, int> unreadCount = const {}, required this.createdAt, required this.updatedAt, @JsonKey(name: '__v') required this.v}): _members = members,_unreadCount = unreadCount;
  factory _GroupConversation.fromJson(Map<String, dynamic> json) => _$GroupConversationFromJson(json);

@override@JsonKey(name: '_id') final  String id;
 final  List<GroupMember> _members;
@override List<GroupMember> get members {
  if (_members is EqualUnmodifiableListView) return _members;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_members);
}

@override final  bool isGroup;
@override final  String groupName;
@override@JsonKey() final  String groupAvatar;
@override final  GroupAdmin groupAdmin;
 final  Map<String, int> _unreadCount;
@override@JsonKey() Map<String, int> get unreadCount {
  if (_unreadCount is EqualUnmodifiableMapView) return _unreadCount;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_unreadCount);
}

@override final  DateTime createdAt;
@override final  DateTime updatedAt;
@override@JsonKey(name: '__v') final  int v;

/// Create a copy of GroupConversation
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GroupConversationCopyWith<_GroupConversation> get copyWith => __$GroupConversationCopyWithImpl<_GroupConversation>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GroupConversationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GroupConversation&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other._members, _members)&&(identical(other.isGroup, isGroup) || other.isGroup == isGroup)&&(identical(other.groupName, groupName) || other.groupName == groupName)&&(identical(other.groupAvatar, groupAvatar) || other.groupAvatar == groupAvatar)&&(identical(other.groupAdmin, groupAdmin) || other.groupAdmin == groupAdmin)&&const DeepCollectionEquality().equals(other._unreadCount, _unreadCount)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.v, v) || other.v == v));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(_members),isGroup,groupName,groupAvatar,groupAdmin,const DeepCollectionEquality().hash(_unreadCount),createdAt,updatedAt,v);

@override
String toString() {
  return 'GroupConversation(id: $id, members: $members, isGroup: $isGroup, groupName: $groupName, groupAvatar: $groupAvatar, groupAdmin: $groupAdmin, unreadCount: $unreadCount, createdAt: $createdAt, updatedAt: $updatedAt, v: $v)';
}


}

/// @nodoc
abstract mixin class _$GroupConversationCopyWith<$Res> implements $GroupConversationCopyWith<$Res> {
  factory _$GroupConversationCopyWith(_GroupConversation value, $Res Function(_GroupConversation) _then) = __$GroupConversationCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: '_id') String id, List<GroupMember> members, bool isGroup, String groupName, String groupAvatar, GroupAdmin groupAdmin, Map<String, int> unreadCount, DateTime createdAt, DateTime updatedAt,@JsonKey(name: '__v') int v
});


@override $GroupAdminCopyWith<$Res> get groupAdmin;

}
/// @nodoc
class __$GroupConversationCopyWithImpl<$Res>
    implements _$GroupConversationCopyWith<$Res> {
  __$GroupConversationCopyWithImpl(this._self, this._then);

  final _GroupConversation _self;
  final $Res Function(_GroupConversation) _then;

/// Create a copy of GroupConversation
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? members = null,Object? isGroup = null,Object? groupName = null,Object? groupAvatar = null,Object? groupAdmin = null,Object? unreadCount = null,Object? createdAt = null,Object? updatedAt = null,Object? v = null,}) {
  return _then(_GroupConversation(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,members: null == members ? _self._members : members // ignore: cast_nullable_to_non_nullable
as List<GroupMember>,isGroup: null == isGroup ? _self.isGroup : isGroup // ignore: cast_nullable_to_non_nullable
as bool,groupName: null == groupName ? _self.groupName : groupName // ignore: cast_nullable_to_non_nullable
as String,groupAvatar: null == groupAvatar ? _self.groupAvatar : groupAvatar // ignore: cast_nullable_to_non_nullable
as String,groupAdmin: null == groupAdmin ? _self.groupAdmin : groupAdmin // ignore: cast_nullable_to_non_nullable
as GroupAdmin,unreadCount: null == unreadCount ? _self._unreadCount : unreadCount // ignore: cast_nullable_to_non_nullable
as Map<String, int>,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,v: null == v ? _self.v : v // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of GroupConversation
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GroupAdminCopyWith<$Res> get groupAdmin {
  
  return $GroupAdminCopyWith<$Res>(_self.groupAdmin, (value) {
    return _then(_self.copyWith(groupAdmin: value));
  });
}
}


/// @nodoc
mixin _$GroupMember {

@JsonKey(name: '_id') String get id; String get username; String get email; String get fullName; String get avatar; bool get isOnline; DateTime? get lastSeenAt;
/// Create a copy of GroupMember
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GroupMemberCopyWith<GroupMember> get copyWith => _$GroupMemberCopyWithImpl<GroupMember>(this as GroupMember, _$identity);

  /// Serializes this GroupMember to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GroupMember&&(identical(other.id, id) || other.id == id)&&(identical(other.username, username) || other.username == username)&&(identical(other.email, email) || other.email == email)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.avatar, avatar) || other.avatar == avatar)&&(identical(other.isOnline, isOnline) || other.isOnline == isOnline)&&(identical(other.lastSeenAt, lastSeenAt) || other.lastSeenAt == lastSeenAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,username,email,fullName,avatar,isOnline,lastSeenAt);

@override
String toString() {
  return 'GroupMember(id: $id, username: $username, email: $email, fullName: $fullName, avatar: $avatar, isOnline: $isOnline, lastSeenAt: $lastSeenAt)';
}


}

/// @nodoc
abstract mixin class $GroupMemberCopyWith<$Res>  {
  factory $GroupMemberCopyWith(GroupMember value, $Res Function(GroupMember) _then) = _$GroupMemberCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: '_id') String id, String username, String email, String fullName, String avatar, bool isOnline, DateTime? lastSeenAt
});




}
/// @nodoc
class _$GroupMemberCopyWithImpl<$Res>
    implements $GroupMemberCopyWith<$Res> {
  _$GroupMemberCopyWithImpl(this._self, this._then);

  final GroupMember _self;
  final $Res Function(GroupMember) _then;

/// Create a copy of GroupMember
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? username = null,Object? email = null,Object? fullName = null,Object? avatar = null,Object? isOnline = null,Object? lastSeenAt = freezed,}) {
  return _then(GroupMember(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,avatar: null == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as String,isOnline: null == isOnline ? _self.isOnline : isOnline // ignore: cast_nullable_to_non_nullable
as bool,lastSeenAt: freezed == lastSeenAt ? _self.lastSeenAt : lastSeenAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [GroupMember].
extension GroupMemberPatterns on GroupMember {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GroupMember value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GroupMember() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GroupMember value)  $default,){
final _that = this;
switch (_that) {
case _GroupMember():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GroupMember value)?  $default,){
final _that = this;
switch (_that) {
case _GroupMember() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String id,  String username,  String email,  String fullName,  String avatar,  bool isOnline,  DateTime? lastSeenAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GroupMember() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String id,  String username,  String email,  String fullName,  String avatar,  bool isOnline,  DateTime? lastSeenAt)  $default,) {final _that = this;
switch (_that) {
case _GroupMember():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: '_id')  String id,  String username,  String email,  String fullName,  String avatar,  bool isOnline,  DateTime? lastSeenAt)?  $default,) {final _that = this;
switch (_that) {
case _GroupMember() when $default != null:
return $default(_that.id,_that.username,_that.email,_that.fullName,_that.avatar,_that.isOnline,_that.lastSeenAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GroupMember implements GroupMember {
  const _GroupMember({@JsonKey(name: '_id') required this.id, required this.username, required this.email, required this.fullName, this.avatar = '', this.isOnline = false, this.lastSeenAt});
  factory _GroupMember.fromJson(Map<String, dynamic> json) => _$GroupMemberFromJson(json);

@override@JsonKey(name: '_id') final  String id;
@override final  String username;
@override final  String email;
@override final  String fullName;
@override@JsonKey() final  String avatar;
@override@JsonKey() final  bool isOnline;
@override final  DateTime? lastSeenAt;

/// Create a copy of GroupMember
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GroupMemberCopyWith<_GroupMember> get copyWith => __$GroupMemberCopyWithImpl<_GroupMember>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GroupMemberToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GroupMember&&(identical(other.id, id) || other.id == id)&&(identical(other.username, username) || other.username == username)&&(identical(other.email, email) || other.email == email)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.avatar, avatar) || other.avatar == avatar)&&(identical(other.isOnline, isOnline) || other.isOnline == isOnline)&&(identical(other.lastSeenAt, lastSeenAt) || other.lastSeenAt == lastSeenAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,username,email,fullName,avatar,isOnline,lastSeenAt);

@override
String toString() {
  return 'GroupMember(id: $id, username: $username, email: $email, fullName: $fullName, avatar: $avatar, isOnline: $isOnline, lastSeenAt: $lastSeenAt)';
}


}

/// @nodoc
abstract mixin class _$GroupMemberCopyWith<$Res> implements $GroupMemberCopyWith<$Res> {
  factory _$GroupMemberCopyWith(_GroupMember value, $Res Function(_GroupMember) _then) = __$GroupMemberCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: '_id') String id, String username, String email, String fullName, String avatar, bool isOnline, DateTime? lastSeenAt
});




}
/// @nodoc
class __$GroupMemberCopyWithImpl<$Res>
    implements _$GroupMemberCopyWith<$Res> {
  __$GroupMemberCopyWithImpl(this._self, this._then);

  final _GroupMember _self;
  final $Res Function(_GroupMember) _then;

/// Create a copy of GroupMember
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? username = null,Object? email = null,Object? fullName = null,Object? avatar = null,Object? isOnline = null,Object? lastSeenAt = freezed,}) {
  return _then(_GroupMember(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,avatar: null == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as String,isOnline: null == isOnline ? _self.isOnline : isOnline // ignore: cast_nullable_to_non_nullable
as bool,lastSeenAt: freezed == lastSeenAt ? _self.lastSeenAt : lastSeenAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}


/// @nodoc
mixin _$GroupAdmin {

@JsonKey(name: '_id') String get id; String get username; String get fullName; String get avatar;
/// Create a copy of GroupAdmin
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GroupAdminCopyWith<GroupAdmin> get copyWith => _$GroupAdminCopyWithImpl<GroupAdmin>(this as GroupAdmin, _$identity);

  /// Serializes this GroupAdmin to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GroupAdmin&&(identical(other.id, id) || other.id == id)&&(identical(other.username, username) || other.username == username)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.avatar, avatar) || other.avatar == avatar));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,username,fullName,avatar);

@override
String toString() {
  return 'GroupAdmin(id: $id, username: $username, fullName: $fullName, avatar: $avatar)';
}


}

/// @nodoc
abstract mixin class $GroupAdminCopyWith<$Res>  {
  factory $GroupAdminCopyWith(GroupAdmin value, $Res Function(GroupAdmin) _then) = _$GroupAdminCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: '_id') String id, String username, String fullName, String avatar
});




}
/// @nodoc
class _$GroupAdminCopyWithImpl<$Res>
    implements $GroupAdminCopyWith<$Res> {
  _$GroupAdminCopyWithImpl(this._self, this._then);

  final GroupAdmin _self;
  final $Res Function(GroupAdmin) _then;

/// Create a copy of GroupAdmin
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? username = null,Object? fullName = null,Object? avatar = null,}) {
  return _then(GroupAdmin(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,avatar: null == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [GroupAdmin].
extension GroupAdminPatterns on GroupAdmin {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GroupAdmin value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GroupAdmin() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GroupAdmin value)  $default,){
final _that = this;
switch (_that) {
case _GroupAdmin():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GroupAdmin value)?  $default,){
final _that = this;
switch (_that) {
case _GroupAdmin() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String id,  String username,  String fullName,  String avatar)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GroupAdmin() when $default != null:
return $default(_that.id,_that.username,_that.fullName,_that.avatar);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String id,  String username,  String fullName,  String avatar)  $default,) {final _that = this;
switch (_that) {
case _GroupAdmin():
return $default(_that.id,_that.username,_that.fullName,_that.avatar);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: '_id')  String id,  String username,  String fullName,  String avatar)?  $default,) {final _that = this;
switch (_that) {
case _GroupAdmin() when $default != null:
return $default(_that.id,_that.username,_that.fullName,_that.avatar);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GroupAdmin implements GroupAdmin {
  const _GroupAdmin({@JsonKey(name: '_id') required this.id, required this.username, required this.fullName, this.avatar = ''});
  factory _GroupAdmin.fromJson(Map<String, dynamic> json) => _$GroupAdminFromJson(json);

@override@JsonKey(name: '_id') final  String id;
@override final  String username;
@override final  String fullName;
@override@JsonKey() final  String avatar;

/// Create a copy of GroupAdmin
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GroupAdminCopyWith<_GroupAdmin> get copyWith => __$GroupAdminCopyWithImpl<_GroupAdmin>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GroupAdminToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GroupAdmin&&(identical(other.id, id) || other.id == id)&&(identical(other.username, username) || other.username == username)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.avatar, avatar) || other.avatar == avatar));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,username,fullName,avatar);

@override
String toString() {
  return 'GroupAdmin(id: $id, username: $username, fullName: $fullName, avatar: $avatar)';
}


}

/// @nodoc
abstract mixin class _$GroupAdminCopyWith<$Res> implements $GroupAdminCopyWith<$Res> {
  factory _$GroupAdminCopyWith(_GroupAdmin value, $Res Function(_GroupAdmin) _then) = __$GroupAdminCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: '_id') String id, String username, String fullName, String avatar
});




}
/// @nodoc
class __$GroupAdminCopyWithImpl<$Res>
    implements _$GroupAdminCopyWith<$Res> {
  __$GroupAdminCopyWithImpl(this._self, this._then);

  final _GroupAdmin _self;
  final $Res Function(_GroupAdmin) _then;

/// Create a copy of GroupAdmin
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? username = null,Object? fullName = null,Object? avatar = null,}) {
  return _then(_GroupAdmin(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,avatar: null == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
