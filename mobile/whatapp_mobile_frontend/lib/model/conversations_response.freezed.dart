// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'conversations_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ConversationsResponse {

 int get statusCode; ConversationsData get data; String get message; bool get success;
/// Create a copy of ConversationsResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ConversationsResponseCopyWith<ConversationsResponse> get copyWith => _$ConversationsResponseCopyWithImpl<ConversationsResponse>(this as ConversationsResponse, _$identity);

  /// Serializes this ConversationsResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConversationsResponse&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.data, data) || other.data == data)&&(identical(other.message, message) || other.message == message)&&(identical(other.success, success) || other.success == success));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,statusCode,data,message,success);

@override
String toString() {
  return 'ConversationsResponse(statusCode: $statusCode, data: $data, message: $message, success: $success)';
}


}

/// @nodoc
abstract mixin class $ConversationsResponseCopyWith<$Res>  {
  factory $ConversationsResponseCopyWith(ConversationsResponse value, $Res Function(ConversationsResponse) _then) = _$ConversationsResponseCopyWithImpl;
@useResult
$Res call({
 int statusCode, ConversationsData data, String message, bool success
});


$ConversationsDataCopyWith<$Res> get data;

}
/// @nodoc
class _$ConversationsResponseCopyWithImpl<$Res>
    implements $ConversationsResponseCopyWith<$Res> {
  _$ConversationsResponseCopyWithImpl(this._self, this._then);

  final ConversationsResponse _self;
  final $Res Function(ConversationsResponse) _then;

/// Create a copy of ConversationsResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? statusCode = null,Object? data = null,Object? message = null,Object? success = null,}) {
  return _then(ConversationsResponse(
statusCode: null == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as int,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as ConversationsData,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of ConversationsResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ConversationsDataCopyWith<$Res> get data {
  
  return $ConversationsDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [ConversationsResponse].
extension ConversationsResponsePatterns on ConversationsResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ConversationsResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ConversationsResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ConversationsResponse value)  $default,){
final _that = this;
switch (_that) {
case _ConversationsResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ConversationsResponse value)?  $default,){
final _that = this;
switch (_that) {
case _ConversationsResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int statusCode,  ConversationsData data,  String message,  bool success)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ConversationsResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int statusCode,  ConversationsData data,  String message,  bool success)  $default,) {final _that = this;
switch (_that) {
case _ConversationsResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int statusCode,  ConversationsData data,  String message,  bool success)?  $default,) {final _that = this;
switch (_that) {
case _ConversationsResponse() when $default != null:
return $default(_that.statusCode,_that.data,_that.message,_that.success);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ConversationsResponse implements ConversationsResponse {
  const _ConversationsResponse({required this.statusCode, required this.data, required this.message, required this.success});
  factory _ConversationsResponse.fromJson(Map<String, dynamic> json) => _$ConversationsResponseFromJson(json);

@override final  int statusCode;
@override final  ConversationsData data;
@override final  String message;
@override final  bool success;

/// Create a copy of ConversationsResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ConversationsResponseCopyWith<_ConversationsResponse> get copyWith => __$ConversationsResponseCopyWithImpl<_ConversationsResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ConversationsResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ConversationsResponse&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.data, data) || other.data == data)&&(identical(other.message, message) || other.message == message)&&(identical(other.success, success) || other.success == success));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,statusCode,data,message,success);

@override
String toString() {
  return 'ConversationsResponse(statusCode: $statusCode, data: $data, message: $message, success: $success)';
}


}

/// @nodoc
abstract mixin class _$ConversationsResponseCopyWith<$Res> implements $ConversationsResponseCopyWith<$Res> {
  factory _$ConversationsResponseCopyWith(_ConversationsResponse value, $Res Function(_ConversationsResponse) _then) = __$ConversationsResponseCopyWithImpl;
@override @useResult
$Res call({
 int statusCode, ConversationsData data, String message, bool success
});


@override $ConversationsDataCopyWith<$Res> get data;

}
/// @nodoc
class __$ConversationsResponseCopyWithImpl<$Res>
    implements _$ConversationsResponseCopyWith<$Res> {
  __$ConversationsResponseCopyWithImpl(this._self, this._then);

  final _ConversationsResponse _self;
  final $Res Function(_ConversationsResponse) _then;

/// Create a copy of ConversationsResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? statusCode = null,Object? data = null,Object? message = null,Object? success = null,}) {
  return _then(_ConversationsResponse(
statusCode: null == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as int,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as ConversationsData,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of ConversationsResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ConversationsDataCopyWith<$Res> get data {
  
  return $ConversationsDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$ConversationsData {

 List<Conversation> get conversations;
/// Create a copy of ConversationsData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ConversationsDataCopyWith<ConversationsData> get copyWith => _$ConversationsDataCopyWithImpl<ConversationsData>(this as ConversationsData, _$identity);

  /// Serializes this ConversationsData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConversationsData&&const DeepCollectionEquality().equals(other.conversations, conversations));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(conversations));

@override
String toString() {
  return 'ConversationsData(conversations: $conversations)';
}


}

/// @nodoc
abstract mixin class $ConversationsDataCopyWith<$Res>  {
  factory $ConversationsDataCopyWith(ConversationsData value, $Res Function(ConversationsData) _then) = _$ConversationsDataCopyWithImpl;
@useResult
$Res call({
 List<Conversation> conversations
});




}
/// @nodoc
class _$ConversationsDataCopyWithImpl<$Res>
    implements $ConversationsDataCopyWith<$Res> {
  _$ConversationsDataCopyWithImpl(this._self, this._then);

  final ConversationsData _self;
  final $Res Function(ConversationsData) _then;

/// Create a copy of ConversationsData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? conversations = null,}) {
  return _then(ConversationsData(
conversations: null == conversations ? _self.conversations : conversations // ignore: cast_nullable_to_non_nullable
as List<Conversation>,
  ));
}

}


/// Adds pattern-matching-related methods to [ConversationsData].
extension ConversationsDataPatterns on ConversationsData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ConversationsData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ConversationsData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ConversationsData value)  $default,){
final _that = this;
switch (_that) {
case _ConversationsData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ConversationsData value)?  $default,){
final _that = this;
switch (_that) {
case _ConversationsData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<Conversation> conversations)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ConversationsData() when $default != null:
return $default(_that.conversations);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<Conversation> conversations)  $default,) {final _that = this;
switch (_that) {
case _ConversationsData():
return $default(_that.conversations);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<Conversation> conversations)?  $default,) {final _that = this;
switch (_that) {
case _ConversationsData() when $default != null:
return $default(_that.conversations);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ConversationsData implements ConversationsData {
  const _ConversationsData({ List<Conversation> conversations = const []}): _conversations = conversations;
  factory _ConversationsData.fromJson(Map<String, dynamic> json) => _$ConversationsDataFromJson(json);

 final  List<Conversation> _conversations;
@override@JsonKey() List<Conversation> get conversations {
  if (_conversations is EqualUnmodifiableListView) return _conversations;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_conversations);
}


/// Create a copy of ConversationsData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ConversationsDataCopyWith<_ConversationsData> get copyWith => __$ConversationsDataCopyWithImpl<_ConversationsData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ConversationsDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ConversationsData&&const DeepCollectionEquality().equals(other._conversations, _conversations));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_conversations));

@override
String toString() {
  return 'ConversationsData(conversations: $conversations)';
}


}

/// @nodoc
abstract mixin class _$ConversationsDataCopyWith<$Res> implements $ConversationsDataCopyWith<$Res> {
  factory _$ConversationsDataCopyWith(_ConversationsData value, $Res Function(_ConversationsData) _then) = __$ConversationsDataCopyWithImpl;
@override @useResult
$Res call({
 List<Conversation> conversations
});




}
/// @nodoc
class __$ConversationsDataCopyWithImpl<$Res>
    implements _$ConversationsDataCopyWith<$Res> {
  __$ConversationsDataCopyWithImpl(this._self, this._then);

  final _ConversationsData _self;
  final $Res Function(_ConversationsData) _then;

/// Create a copy of ConversationsData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? conversations = null,}) {
  return _then(_ConversationsData(
conversations: null == conversations ? _self._conversations : conversations // ignore: cast_nullable_to_non_nullable
as List<Conversation>,
  ));
}


}


/// @nodoc
mixin _$Conversation {

@JsonKey(name: '_id') String get id; List<Member> get members; bool get isGroup; String get groupName; String get groupAvatar; Map<String, int> get unreadCount; DateTime get createdAt; DateTime get updatedAt;@JsonKey(name: '__v') int? get v; LastMessage? get lastMessage;
/// Create a copy of Conversation
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ConversationCopyWith<Conversation> get copyWith => _$ConversationCopyWithImpl<Conversation>(this as Conversation, _$identity);

  /// Serializes this Conversation to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Conversation&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other.members, members)&&(identical(other.isGroup, isGroup) || other.isGroup == isGroup)&&(identical(other.groupName, groupName) || other.groupName == groupName)&&(identical(other.groupAvatar, groupAvatar) || other.groupAvatar == groupAvatar)&&const DeepCollectionEquality().equals(other.unreadCount, unreadCount)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.v, v) || other.v == v)&&(identical(other.lastMessage, lastMessage) || other.lastMessage == lastMessage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(members),isGroup,groupName,groupAvatar,const DeepCollectionEquality().hash(unreadCount),createdAt,updatedAt,v,lastMessage);

@override
String toString() {
  return 'Conversation(id: $id, members: $members, isGroup: $isGroup, groupName: $groupName, groupAvatar: $groupAvatar, unreadCount: $unreadCount, createdAt: $createdAt, updatedAt: $updatedAt, v: $v, lastMessage: $lastMessage)';
}


}

/// @nodoc
abstract mixin class $ConversationCopyWith<$Res>  {
  factory $ConversationCopyWith(Conversation value, $Res Function(Conversation) _then) = _$ConversationCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: '_id') String id, List<Member> members, bool isGroup, String groupName, String groupAvatar, Map<String, int> unreadCount, DateTime createdAt, DateTime updatedAt,@JsonKey(name: '__v') int? v, LastMessage? lastMessage
});


$LastMessageCopyWith<$Res>? get lastMessage;

}
/// @nodoc
class _$ConversationCopyWithImpl<$Res>
    implements $ConversationCopyWith<$Res> {
  _$ConversationCopyWithImpl(this._self, this._then);

  final Conversation _self;
  final $Res Function(Conversation) _then;

/// Create a copy of Conversation
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? members = null,Object? isGroup = null,Object? groupName = null,Object? groupAvatar = null,Object? unreadCount = null,Object? createdAt = null,Object? updatedAt = null,Object? v = freezed,Object? lastMessage = freezed,}) {
  return _then(Conversation(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,members: null == members ? _self.members : members // ignore: cast_nullable_to_non_nullable
as List<Member>,isGroup: null == isGroup ? _self.isGroup : isGroup // ignore: cast_nullable_to_non_nullable
as bool,groupName: null == groupName ? _self.groupName : groupName // ignore: cast_nullable_to_non_nullable
as String,groupAvatar: null == groupAvatar ? _self.groupAvatar : groupAvatar // ignore: cast_nullable_to_non_nullable
as String,unreadCount: null == unreadCount ? _self.unreadCount : unreadCount // ignore: cast_nullable_to_non_nullable
as Map<String, int>,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,v: freezed == v ? _self.v : v // ignore: cast_nullable_to_non_nullable
as int?,lastMessage: freezed == lastMessage ? _self.lastMessage : lastMessage // ignore: cast_nullable_to_non_nullable
as LastMessage?,
  ));
}
/// Create a copy of Conversation
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LastMessageCopyWith<$Res>? get lastMessage {
    if (_self.lastMessage == null) {
    return null;
  }

  return $LastMessageCopyWith<$Res>(_self.lastMessage!, (value) {
    return _then(_self.copyWith(lastMessage: value));
  });
}
}


/// Adds pattern-matching-related methods to [Conversation].
extension ConversationPatterns on Conversation {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Conversation value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Conversation() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Conversation value)  $default,){
final _that = this;
switch (_that) {
case _Conversation():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Conversation value)?  $default,){
final _that = this;
switch (_that) {
case _Conversation() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String id,  List<Member> members,  bool isGroup,  String groupName,  String groupAvatar,  Map<String, int> unreadCount,  DateTime createdAt,  DateTime updatedAt, @JsonKey(name: '__v')  int? v,  LastMessage? lastMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Conversation() when $default != null:
return $default(_that.id,_that.members,_that.isGroup,_that.groupName,_that.groupAvatar,_that.unreadCount,_that.createdAt,_that.updatedAt,_that.v,_that.lastMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String id,  List<Member> members,  bool isGroup,  String groupName,  String groupAvatar,  Map<String, int> unreadCount,  DateTime createdAt,  DateTime updatedAt, @JsonKey(name: '__v')  int? v,  LastMessage? lastMessage)  $default,) {final _that = this;
switch (_that) {
case _Conversation():
return $default(_that.id,_that.members,_that.isGroup,_that.groupName,_that.groupAvatar,_that.unreadCount,_that.createdAt,_that.updatedAt,_that.v,_that.lastMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: '_id')  String id,  List<Member> members,  bool isGroup,  String groupName,  String groupAvatar,  Map<String, int> unreadCount,  DateTime createdAt,  DateTime updatedAt, @JsonKey(name: '__v')  int? v,  LastMessage? lastMessage)?  $default,) {final _that = this;
switch (_that) {
case _Conversation() when $default != null:
return $default(_that.id,_that.members,_that.isGroup,_that.groupName,_that.groupAvatar,_that.unreadCount,_that.createdAt,_that.updatedAt,_that.v,_that.lastMessage);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Conversation implements Conversation {
  const _Conversation({@JsonKey(name: '_id') required this.id,  List<Member> members = const [], this.isGroup = false, this.groupName = '', this.groupAvatar = '',  Map<String, int> unreadCount = const {}, required this.createdAt, required this.updatedAt, @JsonKey(name: '__v') this.v, this.lastMessage}): _members = members,_unreadCount = unreadCount;
  factory _Conversation.fromJson(Map<String, dynamic> json) => _$ConversationFromJson(json);

@override@JsonKey(name: '_id') final  String id;
 final  List<Member> _members;
@override@JsonKey() List<Member> get members {
  if (_members is EqualUnmodifiableListView) return _members;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_members);
}

@override@JsonKey() final  bool isGroup;
@override@JsonKey() final  String groupName;
@override@JsonKey() final  String groupAvatar;
 final  Map<String, int> _unreadCount;
@override@JsonKey() Map<String, int> get unreadCount {
  if (_unreadCount is EqualUnmodifiableMapView) return _unreadCount;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_unreadCount);
}

@override final  DateTime createdAt;
@override final  DateTime updatedAt;
@override@JsonKey(name: '__v') final  int? v;
@override final  LastMessage? lastMessage;

/// Create a copy of Conversation
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ConversationCopyWith<_Conversation> get copyWith => __$ConversationCopyWithImpl<_Conversation>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ConversationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Conversation&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other._members, _members)&&(identical(other.isGroup, isGroup) || other.isGroup == isGroup)&&(identical(other.groupName, groupName) || other.groupName == groupName)&&(identical(other.groupAvatar, groupAvatar) || other.groupAvatar == groupAvatar)&&const DeepCollectionEquality().equals(other._unreadCount, _unreadCount)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.v, v) || other.v == v)&&(identical(other.lastMessage, lastMessage) || other.lastMessage == lastMessage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(_members),isGroup,groupName,groupAvatar,const DeepCollectionEquality().hash(_unreadCount),createdAt,updatedAt,v,lastMessage);

@override
String toString() {
  return 'Conversation(id: $id, members: $members, isGroup: $isGroup, groupName: $groupName, groupAvatar: $groupAvatar, unreadCount: $unreadCount, createdAt: $createdAt, updatedAt: $updatedAt, v: $v, lastMessage: $lastMessage)';
}


}

/// @nodoc
abstract mixin class _$ConversationCopyWith<$Res> implements $ConversationCopyWith<$Res> {
  factory _$ConversationCopyWith(_Conversation value, $Res Function(_Conversation) _then) = __$ConversationCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: '_id') String id, List<Member> members, bool isGroup, String groupName, String groupAvatar, Map<String, int> unreadCount, DateTime createdAt, DateTime updatedAt,@JsonKey(name: '__v') int? v, LastMessage? lastMessage
});


@override $LastMessageCopyWith<$Res>? get lastMessage;

}
/// @nodoc
class __$ConversationCopyWithImpl<$Res>
    implements _$ConversationCopyWith<$Res> {
  __$ConversationCopyWithImpl(this._self, this._then);

  final _Conversation _self;
  final $Res Function(_Conversation) _then;

/// Create a copy of Conversation
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? members = null,Object? isGroup = null,Object? groupName = null,Object? groupAvatar = null,Object? unreadCount = null,Object? createdAt = null,Object? updatedAt = null,Object? v = freezed,Object? lastMessage = freezed,}) {
  return _then(_Conversation(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,members: null == members ? _self._members : members // ignore: cast_nullable_to_non_nullable
as List<Member>,isGroup: null == isGroup ? _self.isGroup : isGroup // ignore: cast_nullable_to_non_nullable
as bool,groupName: null == groupName ? _self.groupName : groupName // ignore: cast_nullable_to_non_nullable
as String,groupAvatar: null == groupAvatar ? _self.groupAvatar : groupAvatar // ignore: cast_nullable_to_non_nullable
as String,unreadCount: null == unreadCount ? _self._unreadCount : unreadCount // ignore: cast_nullable_to_non_nullable
as Map<String, int>,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,v: freezed == v ? _self.v : v // ignore: cast_nullable_to_non_nullable
as int?,lastMessage: freezed == lastMessage ? _self.lastMessage : lastMessage // ignore: cast_nullable_to_non_nullable
as LastMessage?,
  ));
}

/// Create a copy of Conversation
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LastMessageCopyWith<$Res>? get lastMessage {
    if (_self.lastMessage == null) {
    return null;
  }

  return $LastMessageCopyWith<$Res>(_self.lastMessage!, (value) {
    return _then(_self.copyWith(lastMessage: value));
  });
}
}


/// @nodoc
mixin _$Member {

@JsonKey(name: '_id') String get id; String get username; String get email; String get fullName; String get avatar; bool get isOnline; DateTime get lastSeenAt;
/// Create a copy of Member
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MemberCopyWith<Member> get copyWith => _$MemberCopyWithImpl<Member>(this as Member, _$identity);

  /// Serializes this Member to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Member&&(identical(other.id, id) || other.id == id)&&(identical(other.username, username) || other.username == username)&&(identical(other.email, email) || other.email == email)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.avatar, avatar) || other.avatar == avatar)&&(identical(other.isOnline, isOnline) || other.isOnline == isOnline)&&(identical(other.lastSeenAt, lastSeenAt) || other.lastSeenAt == lastSeenAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,username,email,fullName,avatar,isOnline,lastSeenAt);

@override
String toString() {
  return 'Member(id: $id, username: $username, email: $email, fullName: $fullName, avatar: $avatar, isOnline: $isOnline, lastSeenAt: $lastSeenAt)';
}


}

/// @nodoc
abstract mixin class $MemberCopyWith<$Res>  {
  factory $MemberCopyWith(Member value, $Res Function(Member) _then) = _$MemberCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: '_id') String id, String username, String email, String fullName, String avatar, bool isOnline, DateTime lastSeenAt
});




}
/// @nodoc
class _$MemberCopyWithImpl<$Res>
    implements $MemberCopyWith<$Res> {
  _$MemberCopyWithImpl(this._self, this._then);

  final Member _self;
  final $Res Function(Member) _then;

/// Create a copy of Member
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? username = null,Object? email = null,Object? fullName = null,Object? avatar = null,Object? isOnline = null,Object? lastSeenAt = null,}) {
  return _then(Member(
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


/// Adds pattern-matching-related methods to [Member].
extension MemberPatterns on Member {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Member value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Member() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Member value)  $default,){
final _that = this;
switch (_that) {
case _Member():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Member value)?  $default,){
final _that = this;
switch (_that) {
case _Member() when $default != null:
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
case _Member() when $default != null:
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
case _Member():
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
case _Member() when $default != null:
return $default(_that.id,_that.username,_that.email,_that.fullName,_that.avatar,_that.isOnline,_that.lastSeenAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Member implements Member {
  const _Member({@JsonKey(name: '_id') required this.id, required this.username, required this.email, required this.fullName, this.avatar = '', this.isOnline = false, required this.lastSeenAt});
  factory _Member.fromJson(Map<String, dynamic> json) => _$MemberFromJson(json);

@override@JsonKey(name: '_id') final  String id;
@override final  String username;
@override final  String email;
@override final  String fullName;
@override@JsonKey() final  String avatar;
@override@JsonKey() final  bool isOnline;
@override final  DateTime lastSeenAt;

/// Create a copy of Member
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MemberCopyWith<_Member> get copyWith => __$MemberCopyWithImpl<_Member>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MemberToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Member&&(identical(other.id, id) || other.id == id)&&(identical(other.username, username) || other.username == username)&&(identical(other.email, email) || other.email == email)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.avatar, avatar) || other.avatar == avatar)&&(identical(other.isOnline, isOnline) || other.isOnline == isOnline)&&(identical(other.lastSeenAt, lastSeenAt) || other.lastSeenAt == lastSeenAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,username,email,fullName,avatar,isOnline,lastSeenAt);

@override
String toString() {
  return 'Member(id: $id, username: $username, email: $email, fullName: $fullName, avatar: $avatar, isOnline: $isOnline, lastSeenAt: $lastSeenAt)';
}


}

/// @nodoc
abstract mixin class _$MemberCopyWith<$Res> implements $MemberCopyWith<$Res> {
  factory _$MemberCopyWith(_Member value, $Res Function(_Member) _then) = __$MemberCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: '_id') String id, String username, String email, String fullName, String avatar, bool isOnline, DateTime lastSeenAt
});




}
/// @nodoc
class __$MemberCopyWithImpl<$Res>
    implements _$MemberCopyWith<$Res> {
  __$MemberCopyWithImpl(this._self, this._then);

  final _Member _self;
  final $Res Function(_Member) _then;

/// Create a copy of Member
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? username = null,Object? email = null,Object? fullName = null,Object? avatar = null,Object? isOnline = null,Object? lastSeenAt = null,}) {
  return _then(_Member(
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


/// @nodoc
mixin _$LastMessage {

@JsonKey(name: '_id') String get id; String get conversation; MessageSender get sender; String get type; String? get callType; String? get callStatus; int get callDuration; String get content; String get mediaUrl; String get fileName; int get fileSize; List<String> get seenBy; bool get isEdited; bool get isDeleted; List<dynamic> get reactions; DateTime get createdAt; DateTime get updatedAt;@JsonKey(name: '__v') int? get v;
/// Create a copy of LastMessage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LastMessageCopyWith<LastMessage> get copyWith => _$LastMessageCopyWithImpl<LastMessage>(this as LastMessage, _$identity);

  /// Serializes this LastMessage to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LastMessage&&(identical(other.id, id) || other.id == id)&&(identical(other.conversation, conversation) || other.conversation == conversation)&&(identical(other.sender, sender) || other.sender == sender)&&(identical(other.type, type) || other.type == type)&&(identical(other.callType, callType) || other.callType == callType)&&(identical(other.callStatus, callStatus) || other.callStatus == callStatus)&&(identical(other.callDuration, callDuration) || other.callDuration == callDuration)&&(identical(other.content, content) || other.content == content)&&(identical(other.mediaUrl, mediaUrl) || other.mediaUrl == mediaUrl)&&(identical(other.fileName, fileName) || other.fileName == fileName)&&(identical(other.fileSize, fileSize) || other.fileSize == fileSize)&&const DeepCollectionEquality().equals(other.seenBy, seenBy)&&(identical(other.isEdited, isEdited) || other.isEdited == isEdited)&&(identical(other.isDeleted, isDeleted) || other.isDeleted == isDeleted)&&const DeepCollectionEquality().equals(other.reactions, reactions)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.v, v) || other.v == v));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,conversation,sender,type,callType,callStatus,callDuration,content,mediaUrl,fileName,fileSize,const DeepCollectionEquality().hash(seenBy),isEdited,isDeleted,const DeepCollectionEquality().hash(reactions),createdAt,updatedAt,v);

@override
String toString() {
  return 'LastMessage(id: $id, conversation: $conversation, sender: $sender, type: $type, callType: $callType, callStatus: $callStatus, callDuration: $callDuration, content: $content, mediaUrl: $mediaUrl, fileName: $fileName, fileSize: $fileSize, seenBy: $seenBy, isEdited: $isEdited, isDeleted: $isDeleted, reactions: $reactions, createdAt: $createdAt, updatedAt: $updatedAt, v: $v)';
}


}

/// @nodoc
abstract mixin class $LastMessageCopyWith<$Res>  {
  factory $LastMessageCopyWith(LastMessage value, $Res Function(LastMessage) _then) = _$LastMessageCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: '_id') String id, String conversation, MessageSender sender, String type, String? callType, String? callStatus, int callDuration, String content, String mediaUrl, String fileName, int fileSize, List<String> seenBy, bool isEdited, bool isDeleted, List<dynamic> reactions, DateTime createdAt, DateTime updatedAt,@JsonKey(name: '__v') int? v
});


$MessageSenderCopyWith<$Res> get sender;

}
/// @nodoc
class _$LastMessageCopyWithImpl<$Res>
    implements $LastMessageCopyWith<$Res> {
  _$LastMessageCopyWithImpl(this._self, this._then);

  final LastMessage _self;
  final $Res Function(LastMessage) _then;

/// Create a copy of LastMessage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? conversation = null,Object? sender = null,Object? type = null,Object? callType = freezed,Object? callStatus = freezed,Object? callDuration = null,Object? content = null,Object? mediaUrl = null,Object? fileName = null,Object? fileSize = null,Object? seenBy = null,Object? isEdited = null,Object? isDeleted = null,Object? reactions = null,Object? createdAt = null,Object? updatedAt = null,Object? v = freezed,}) {
  return _then(LastMessage(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,conversation: null == conversation ? _self.conversation : conversation // ignore: cast_nullable_to_non_nullable
as String,sender: null == sender ? _self.sender : sender // ignore: cast_nullable_to_non_nullable
as MessageSender,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,callType: freezed == callType ? _self.callType : callType // ignore: cast_nullable_to_non_nullable
as String?,callStatus: freezed == callStatus ? _self.callStatus : callStatus // ignore: cast_nullable_to_non_nullable
as String?,callDuration: null == callDuration ? _self.callDuration : callDuration // ignore: cast_nullable_to_non_nullable
as int,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,mediaUrl: null == mediaUrl ? _self.mediaUrl : mediaUrl // ignore: cast_nullable_to_non_nullable
as String,fileName: null == fileName ? _self.fileName : fileName // ignore: cast_nullable_to_non_nullable
as String,fileSize: null == fileSize ? _self.fileSize : fileSize // ignore: cast_nullable_to_non_nullable
as int,seenBy: null == seenBy ? _self.seenBy : seenBy // ignore: cast_nullable_to_non_nullable
as List<String>,isEdited: null == isEdited ? _self.isEdited : isEdited // ignore: cast_nullable_to_non_nullable
as bool,isDeleted: null == isDeleted ? _self.isDeleted : isDeleted // ignore: cast_nullable_to_non_nullable
as bool,reactions: null == reactions ? _self.reactions : reactions // ignore: cast_nullable_to_non_nullable
as List<dynamic>,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,v: freezed == v ? _self.v : v // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}
/// Create a copy of LastMessage
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MessageSenderCopyWith<$Res> get sender {
  
  return $MessageSenderCopyWith<$Res>(_self.sender, (value) {
    return _then(_self.copyWith(sender: value));
  });
}
}


/// Adds pattern-matching-related methods to [LastMessage].
extension LastMessagePatterns on LastMessage {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LastMessage value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LastMessage() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LastMessage value)  $default,){
final _that = this;
switch (_that) {
case _LastMessage():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LastMessage value)?  $default,){
final _that = this;
switch (_that) {
case _LastMessage() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String id,  String conversation,  MessageSender sender,  String type,  String? callType,  String? callStatus,  int callDuration,  String content,  String mediaUrl,  String fileName,  int fileSize,  List<String> seenBy,  bool isEdited,  bool isDeleted,  List<dynamic> reactions,  DateTime createdAt,  DateTime updatedAt, @JsonKey(name: '__v')  int? v)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LastMessage() when $default != null:
return $default(_that.id,_that.conversation,_that.sender,_that.type,_that.callType,_that.callStatus,_that.callDuration,_that.content,_that.mediaUrl,_that.fileName,_that.fileSize,_that.seenBy,_that.isEdited,_that.isDeleted,_that.reactions,_that.createdAt,_that.updatedAt,_that.v);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String id,  String conversation,  MessageSender sender,  String type,  String? callType,  String? callStatus,  int callDuration,  String content,  String mediaUrl,  String fileName,  int fileSize,  List<String> seenBy,  bool isEdited,  bool isDeleted,  List<dynamic> reactions,  DateTime createdAt,  DateTime updatedAt, @JsonKey(name: '__v')  int? v)  $default,) {final _that = this;
switch (_that) {
case _LastMessage():
return $default(_that.id,_that.conversation,_that.sender,_that.type,_that.callType,_that.callStatus,_that.callDuration,_that.content,_that.mediaUrl,_that.fileName,_that.fileSize,_that.seenBy,_that.isEdited,_that.isDeleted,_that.reactions,_that.createdAt,_that.updatedAt,_that.v);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: '_id')  String id,  String conversation,  MessageSender sender,  String type,  String? callType,  String? callStatus,  int callDuration,  String content,  String mediaUrl,  String fileName,  int fileSize,  List<String> seenBy,  bool isEdited,  bool isDeleted,  List<dynamic> reactions,  DateTime createdAt,  DateTime updatedAt, @JsonKey(name: '__v')  int? v)?  $default,) {final _that = this;
switch (_that) {
case _LastMessage() when $default != null:
return $default(_that.id,_that.conversation,_that.sender,_that.type,_that.callType,_that.callStatus,_that.callDuration,_that.content,_that.mediaUrl,_that.fileName,_that.fileSize,_that.seenBy,_that.isEdited,_that.isDeleted,_that.reactions,_that.createdAt,_that.updatedAt,_that.v);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LastMessage implements LastMessage {
  const _LastMessage({@JsonKey(name: '_id') required this.id, required this.conversation, required this.sender, this.type = 'text', this.callType, this.callStatus, this.callDuration = 0, this.content = '', this.mediaUrl = '', this.fileName = '', this.fileSize = 0,  List<String> seenBy = const [], this.isEdited = false, this.isDeleted = false,  List<dynamic> reactions = const [], required this.createdAt, required this.updatedAt, @JsonKey(name: '__v') this.v}): _seenBy = seenBy,_reactions = reactions;
  factory _LastMessage.fromJson(Map<String, dynamic> json) => _$LastMessageFromJson(json);

@override@JsonKey(name: '_id') final  String id;
@override final  String conversation;
@override final  MessageSender sender;
@override@JsonKey() final  String type;
@override final  String? callType;
@override final  String? callStatus;
@override@JsonKey() final  int callDuration;
@override@JsonKey() final  String content;
@override@JsonKey() final  String mediaUrl;
@override@JsonKey() final  String fileName;
@override@JsonKey() final  int fileSize;
 final  List<String> _seenBy;
@override@JsonKey() List<String> get seenBy {
  if (_seenBy is EqualUnmodifiableListView) return _seenBy;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_seenBy);
}

@override@JsonKey() final  bool isEdited;
@override@JsonKey() final  bool isDeleted;
 final  List<dynamic> _reactions;
@override@JsonKey() List<dynamic> get reactions {
  if (_reactions is EqualUnmodifiableListView) return _reactions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_reactions);
}

@override final  DateTime createdAt;
@override final  DateTime updatedAt;
@override@JsonKey(name: '__v') final  int? v;

/// Create a copy of LastMessage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LastMessageCopyWith<_LastMessage> get copyWith => __$LastMessageCopyWithImpl<_LastMessage>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LastMessageToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LastMessage&&(identical(other.id, id) || other.id == id)&&(identical(other.conversation, conversation) || other.conversation == conversation)&&(identical(other.sender, sender) || other.sender == sender)&&(identical(other.type, type) || other.type == type)&&(identical(other.callType, callType) || other.callType == callType)&&(identical(other.callStatus, callStatus) || other.callStatus == callStatus)&&(identical(other.callDuration, callDuration) || other.callDuration == callDuration)&&(identical(other.content, content) || other.content == content)&&(identical(other.mediaUrl, mediaUrl) || other.mediaUrl == mediaUrl)&&(identical(other.fileName, fileName) || other.fileName == fileName)&&(identical(other.fileSize, fileSize) || other.fileSize == fileSize)&&const DeepCollectionEquality().equals(other._seenBy, _seenBy)&&(identical(other.isEdited, isEdited) || other.isEdited == isEdited)&&(identical(other.isDeleted, isDeleted) || other.isDeleted == isDeleted)&&const DeepCollectionEquality().equals(other._reactions, _reactions)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.v, v) || other.v == v));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,conversation,sender,type,callType,callStatus,callDuration,content,mediaUrl,fileName,fileSize,const DeepCollectionEquality().hash(_seenBy),isEdited,isDeleted,const DeepCollectionEquality().hash(_reactions),createdAt,updatedAt,v);

@override
String toString() {
  return 'LastMessage(id: $id, conversation: $conversation, sender: $sender, type: $type, callType: $callType, callStatus: $callStatus, callDuration: $callDuration, content: $content, mediaUrl: $mediaUrl, fileName: $fileName, fileSize: $fileSize, seenBy: $seenBy, isEdited: $isEdited, isDeleted: $isDeleted, reactions: $reactions, createdAt: $createdAt, updatedAt: $updatedAt, v: $v)';
}


}

/// @nodoc
abstract mixin class _$LastMessageCopyWith<$Res> implements $LastMessageCopyWith<$Res> {
  factory _$LastMessageCopyWith(_LastMessage value, $Res Function(_LastMessage) _then) = __$LastMessageCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: '_id') String id, String conversation, MessageSender sender, String type, String? callType, String? callStatus, int callDuration, String content, String mediaUrl, String fileName, int fileSize, List<String> seenBy, bool isEdited, bool isDeleted, List<dynamic> reactions, DateTime createdAt, DateTime updatedAt,@JsonKey(name: '__v') int? v
});


@override $MessageSenderCopyWith<$Res> get sender;

}
/// @nodoc
class __$LastMessageCopyWithImpl<$Res>
    implements _$LastMessageCopyWith<$Res> {
  __$LastMessageCopyWithImpl(this._self, this._then);

  final _LastMessage _self;
  final $Res Function(_LastMessage) _then;

/// Create a copy of LastMessage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? conversation = null,Object? sender = null,Object? type = null,Object? callType = freezed,Object? callStatus = freezed,Object? callDuration = null,Object? content = null,Object? mediaUrl = null,Object? fileName = null,Object? fileSize = null,Object? seenBy = null,Object? isEdited = null,Object? isDeleted = null,Object? reactions = null,Object? createdAt = null,Object? updatedAt = null,Object? v = freezed,}) {
  return _then(_LastMessage(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,conversation: null == conversation ? _self.conversation : conversation // ignore: cast_nullable_to_non_nullable
as String,sender: null == sender ? _self.sender : sender // ignore: cast_nullable_to_non_nullable
as MessageSender,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,callType: freezed == callType ? _self.callType : callType // ignore: cast_nullable_to_non_nullable
as String?,callStatus: freezed == callStatus ? _self.callStatus : callStatus // ignore: cast_nullable_to_non_nullable
as String?,callDuration: null == callDuration ? _self.callDuration : callDuration // ignore: cast_nullable_to_non_nullable
as int,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,mediaUrl: null == mediaUrl ? _self.mediaUrl : mediaUrl // ignore: cast_nullable_to_non_nullable
as String,fileName: null == fileName ? _self.fileName : fileName // ignore: cast_nullable_to_non_nullable
as String,fileSize: null == fileSize ? _self.fileSize : fileSize // ignore: cast_nullable_to_non_nullable
as int,seenBy: null == seenBy ? _self._seenBy : seenBy // ignore: cast_nullable_to_non_nullable
as List<String>,isEdited: null == isEdited ? _self.isEdited : isEdited // ignore: cast_nullable_to_non_nullable
as bool,isDeleted: null == isDeleted ? _self.isDeleted : isDeleted // ignore: cast_nullable_to_non_nullable
as bool,reactions: null == reactions ? _self._reactions : reactions // ignore: cast_nullable_to_non_nullable
as List<dynamic>,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,v: freezed == v ? _self.v : v // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

/// Create a copy of LastMessage
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MessageSenderCopyWith<$Res> get sender {
  
  return $MessageSenderCopyWith<$Res>(_self.sender, (value) {
    return _then(_self.copyWith(sender: value));
  });
}
}


/// @nodoc
mixin _$MessageSender {

@JsonKey(name: '_id') String get id; String get username; String get fullName;
/// Create a copy of MessageSender
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MessageSenderCopyWith<MessageSender> get copyWith => _$MessageSenderCopyWithImpl<MessageSender>(this as MessageSender, _$identity);

  /// Serializes this MessageSender to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MessageSender&&(identical(other.id, id) || other.id == id)&&(identical(other.username, username) || other.username == username)&&(identical(other.fullName, fullName) || other.fullName == fullName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,username,fullName);

@override
String toString() {
  return 'MessageSender(id: $id, username: $username, fullName: $fullName)';
}


}

/// @nodoc
abstract mixin class $MessageSenderCopyWith<$Res>  {
  factory $MessageSenderCopyWith(MessageSender value, $Res Function(MessageSender) _then) = _$MessageSenderCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: '_id') String id, String username, String fullName
});




}
/// @nodoc
class _$MessageSenderCopyWithImpl<$Res>
    implements $MessageSenderCopyWith<$Res> {
  _$MessageSenderCopyWithImpl(this._self, this._then);

  final MessageSender _self;
  final $Res Function(MessageSender) _then;

/// Create a copy of MessageSender
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? username = null,Object? fullName = null,}) {
  return _then(MessageSender(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [MessageSender].
extension MessageSenderPatterns on MessageSender {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MessageSender value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MessageSender() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MessageSender value)  $default,){
final _that = this;
switch (_that) {
case _MessageSender():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MessageSender value)?  $default,){
final _that = this;
switch (_that) {
case _MessageSender() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String id,  String username,  String fullName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MessageSender() when $default != null:
return $default(_that.id,_that.username,_that.fullName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String id,  String username,  String fullName)  $default,) {final _that = this;
switch (_that) {
case _MessageSender():
return $default(_that.id,_that.username,_that.fullName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: '_id')  String id,  String username,  String fullName)?  $default,) {final _that = this;
switch (_that) {
case _MessageSender() when $default != null:
return $default(_that.id,_that.username,_that.fullName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MessageSender implements MessageSender {
  const _MessageSender({@JsonKey(name: '_id') required this.id, required this.username, required this.fullName});
  factory _MessageSender.fromJson(Map<String, dynamic> json) => _$MessageSenderFromJson(json);

@override@JsonKey(name: '_id') final  String id;
@override final  String username;
@override final  String fullName;

/// Create a copy of MessageSender
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MessageSenderCopyWith<_MessageSender> get copyWith => __$MessageSenderCopyWithImpl<_MessageSender>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MessageSenderToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MessageSender&&(identical(other.id, id) || other.id == id)&&(identical(other.username, username) || other.username == username)&&(identical(other.fullName, fullName) || other.fullName == fullName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,username,fullName);

@override
String toString() {
  return 'MessageSender(id: $id, username: $username, fullName: $fullName)';
}


}

/// @nodoc
abstract mixin class _$MessageSenderCopyWith<$Res> implements $MessageSenderCopyWith<$Res> {
  factory _$MessageSenderCopyWith(_MessageSender value, $Res Function(_MessageSender) _then) = __$MessageSenderCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: '_id') String id, String username, String fullName
});




}
/// @nodoc
class __$MessageSenderCopyWithImpl<$Res>
    implements _$MessageSenderCopyWith<$Res> {
  __$MessageSenderCopyWithImpl(this._self, this._then);

  final _MessageSender _self;
  final $Res Function(_MessageSender) _then;

/// Create a copy of MessageSender
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? username = null,Object? fullName = null,}) {
  return _then(_MessageSender(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
