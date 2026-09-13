// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'conversation_messager_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ConversationMessagerResponse {

 int? get statusCode; ConversationData? get data; String? get message; bool? get success;
/// Create a copy of ConversationMessagerResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ConversationMessagerResponseCopyWith<ConversationMessagerResponse> get copyWith => _$ConversationMessagerResponseCopyWithImpl<ConversationMessagerResponse>(this as ConversationMessagerResponse, _$identity);

  /// Serializes this ConversationMessagerResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConversationMessagerResponse&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.data, data) || other.data == data)&&(identical(other.message, message) || other.message == message)&&(identical(other.success, success) || other.success == success));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,statusCode,data,message,success);

@override
String toString() {
  return 'ConversationMessagerResponse(statusCode: $statusCode, data: $data, message: $message, success: $success)';
}


}

/// @nodoc
abstract mixin class $ConversationMessagerResponseCopyWith<$Res>  {
  factory $ConversationMessagerResponseCopyWith(ConversationMessagerResponse value, $Res Function(ConversationMessagerResponse) _then) = _$ConversationMessagerResponseCopyWithImpl;
@useResult
$Res call({
 int? statusCode, ConversationData? data, String? message, bool? success
});


$ConversationDataCopyWith<$Res>? get data;

}
/// @nodoc
class _$ConversationMessagerResponseCopyWithImpl<$Res>
    implements $ConversationMessagerResponseCopyWith<$Res> {
  _$ConversationMessagerResponseCopyWithImpl(this._self, this._then);

  final ConversationMessagerResponse _self;
  final $Res Function(ConversationMessagerResponse) _then;

/// Create a copy of ConversationMessagerResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? statusCode = freezed,Object? data = freezed,Object? message = freezed,Object? success = freezed,}) {
  return _then(ConversationMessagerResponse(
statusCode: freezed == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as int?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as ConversationData?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,success: freezed == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}
/// Create a copy of ConversationMessagerResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ConversationDataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $ConversationDataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [ConversationMessagerResponse].
extension ConversationMessagerResponsePatterns on ConversationMessagerResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ConversationMessagerResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ConversationMessagerResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ConversationMessagerResponse value)  $default,){
final _that = this;
switch (_that) {
case _ConversationMessagerResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ConversationMessagerResponse value)?  $default,){
final _that = this;
switch (_that) {
case _ConversationMessagerResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? statusCode,  ConversationData? data,  String? message,  bool? success)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ConversationMessagerResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? statusCode,  ConversationData? data,  String? message,  bool? success)  $default,) {final _that = this;
switch (_that) {
case _ConversationMessagerResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? statusCode,  ConversationData? data,  String? message,  bool? success)?  $default,) {final _that = this;
switch (_that) {
case _ConversationMessagerResponse() when $default != null:
return $default(_that.statusCode,_that.data,_that.message,_that.success);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ConversationMessagerResponse implements ConversationMessagerResponse {
  const _ConversationMessagerResponse({this.statusCode, this.data, this.message, this.success});
  factory _ConversationMessagerResponse.fromJson(Map<String, dynamic> json) => _$ConversationMessagerResponseFromJson(json);

@override final  int? statusCode;
@override final  ConversationData? data;
@override final  String? message;
@override final  bool? success;

/// Create a copy of ConversationMessagerResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ConversationMessagerResponseCopyWith<_ConversationMessagerResponse> get copyWith => __$ConversationMessagerResponseCopyWithImpl<_ConversationMessagerResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ConversationMessagerResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ConversationMessagerResponse&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.data, data) || other.data == data)&&(identical(other.message, message) || other.message == message)&&(identical(other.success, success) || other.success == success));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,statusCode,data,message,success);

@override
String toString() {
  return 'ConversationMessagerResponse(statusCode: $statusCode, data: $data, message: $message, success: $success)';
}


}

/// @nodoc
abstract mixin class _$ConversationMessagerResponseCopyWith<$Res> implements $ConversationMessagerResponseCopyWith<$Res> {
  factory _$ConversationMessagerResponseCopyWith(_ConversationMessagerResponse value, $Res Function(_ConversationMessagerResponse) _then) = __$ConversationMessagerResponseCopyWithImpl;
@override @useResult
$Res call({
 int? statusCode, ConversationData? data, String? message, bool? success
});


@override $ConversationDataCopyWith<$Res>? get data;

}
/// @nodoc
class __$ConversationMessagerResponseCopyWithImpl<$Res>
    implements _$ConversationMessagerResponseCopyWith<$Res> {
  __$ConversationMessagerResponseCopyWithImpl(this._self, this._then);

  final _ConversationMessagerResponse _self;
  final $Res Function(_ConversationMessagerResponse) _then;

/// Create a copy of ConversationMessagerResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? statusCode = freezed,Object? data = freezed,Object? message = freezed,Object? success = freezed,}) {
  return _then(_ConversationMessagerResponse(
statusCode: freezed == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as int?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as ConversationData?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,success: freezed == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

/// Create a copy of ConversationMessagerResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ConversationDataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $ConversationDataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$ConversationData {

 List<MessageItem> get messages; String? get nextCursor; bool get hasMore;
/// Create a copy of ConversationData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ConversationDataCopyWith<ConversationData> get copyWith => _$ConversationDataCopyWithImpl<ConversationData>(this as ConversationData, _$identity);

  /// Serializes this ConversationData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConversationData&&const DeepCollectionEquality().equals(other.messages, messages)&&(identical(other.nextCursor, nextCursor) || other.nextCursor == nextCursor)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(messages),nextCursor,hasMore);

@override
String toString() {
  return 'ConversationData(messages: $messages, nextCursor: $nextCursor, hasMore: $hasMore)';
}


}

/// @nodoc
abstract mixin class $ConversationDataCopyWith<$Res>  {
  factory $ConversationDataCopyWith(ConversationData value, $Res Function(ConversationData) _then) = _$ConversationDataCopyWithImpl;
@useResult
$Res call({
 List<MessageItem> messages, String? nextCursor, bool hasMore
});




}
/// @nodoc
class _$ConversationDataCopyWithImpl<$Res>
    implements $ConversationDataCopyWith<$Res> {
  _$ConversationDataCopyWithImpl(this._self, this._then);

  final ConversationData _self;
  final $Res Function(ConversationData) _then;

/// Create a copy of ConversationData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? messages = null,Object? nextCursor = freezed,Object? hasMore = null,}) {
  return _then(ConversationData(
messages: null == messages ? _self.messages : messages // ignore: cast_nullable_to_non_nullable
as List<MessageItem>,nextCursor: freezed == nextCursor ? _self.nextCursor : nextCursor // ignore: cast_nullable_to_non_nullable
as String?,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [ConversationData].
extension ConversationDataPatterns on ConversationData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ConversationData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ConversationData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ConversationData value)  $default,){
final _that = this;
switch (_that) {
case _ConversationData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ConversationData value)?  $default,){
final _that = this;
switch (_that) {
case _ConversationData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<MessageItem> messages,  String? nextCursor,  bool hasMore)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ConversationData() when $default != null:
return $default(_that.messages,_that.nextCursor,_that.hasMore);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<MessageItem> messages,  String? nextCursor,  bool hasMore)  $default,) {final _that = this;
switch (_that) {
case _ConversationData():
return $default(_that.messages,_that.nextCursor,_that.hasMore);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<MessageItem> messages,  String? nextCursor,  bool hasMore)?  $default,) {final _that = this;
switch (_that) {
case _ConversationData() when $default != null:
return $default(_that.messages,_that.nextCursor,_that.hasMore);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ConversationData implements ConversationData {
  const _ConversationData({ List<MessageItem> messages = const [], this.nextCursor, this.hasMore = false}): _messages = messages;
  factory _ConversationData.fromJson(Map<String, dynamic> json) => _$ConversationDataFromJson(json);

 final  List<MessageItem> _messages;
@override@JsonKey() List<MessageItem> get messages {
  if (_messages is EqualUnmodifiableListView) return _messages;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_messages);
}

@override final  String? nextCursor;
@override@JsonKey() final  bool hasMore;

/// Create a copy of ConversationData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ConversationDataCopyWith<_ConversationData> get copyWith => __$ConversationDataCopyWithImpl<_ConversationData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ConversationDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ConversationData&&const DeepCollectionEquality().equals(other._messages, _messages)&&(identical(other.nextCursor, nextCursor) || other.nextCursor == nextCursor)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_messages),nextCursor,hasMore);

@override
String toString() {
  return 'ConversationData(messages: $messages, nextCursor: $nextCursor, hasMore: $hasMore)';
}


}

/// @nodoc
abstract mixin class _$ConversationDataCopyWith<$Res> implements $ConversationDataCopyWith<$Res> {
  factory _$ConversationDataCopyWith(_ConversationData value, $Res Function(_ConversationData) _then) = __$ConversationDataCopyWithImpl;
@override @useResult
$Res call({
 List<MessageItem> messages, String? nextCursor, bool hasMore
});




}
/// @nodoc
class __$ConversationDataCopyWithImpl<$Res>
    implements _$ConversationDataCopyWith<$Res> {
  __$ConversationDataCopyWithImpl(this._self, this._then);

  final _ConversationData _self;
  final $Res Function(_ConversationData) _then;

/// Create a copy of ConversationData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? messages = null,Object? nextCursor = freezed,Object? hasMore = null,}) {
  return _then(_ConversationData(
messages: null == messages ? _self._messages : messages // ignore: cast_nullable_to_non_nullable
as List<MessageItem>,nextCursor: freezed == nextCursor ? _self.nextCursor : nextCursor // ignore: cast_nullable_to_non_nullable
as String?,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$MessageItem {

@JsonKey(name: '_id') String? get id; String? get conversation; Sender? get sender; String? get type; String? get callType; String? get callStatus; int get callDuration; String? get content; String? get mediaUrl; String? get fileName; int get fileSize; List<String> get seenBy; bool get isEdited; bool get isDeleted; List<dynamic> get reactions; String? get createdAt; String? get updatedAt;@JsonKey(name: '__v') int? get v;
/// Create a copy of MessageItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MessageItemCopyWith<MessageItem> get copyWith => _$MessageItemCopyWithImpl<MessageItem>(this as MessageItem, _$identity);

  /// Serializes this MessageItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MessageItem&&(identical(other.id, id) || other.id == id)&&(identical(other.conversation, conversation) || other.conversation == conversation)&&(identical(other.sender, sender) || other.sender == sender)&&(identical(other.type, type) || other.type == type)&&(identical(other.callType, callType) || other.callType == callType)&&(identical(other.callStatus, callStatus) || other.callStatus == callStatus)&&(identical(other.callDuration, callDuration) || other.callDuration == callDuration)&&(identical(other.content, content) || other.content == content)&&(identical(other.mediaUrl, mediaUrl) || other.mediaUrl == mediaUrl)&&(identical(other.fileName, fileName) || other.fileName == fileName)&&(identical(other.fileSize, fileSize) || other.fileSize == fileSize)&&const DeepCollectionEquality().equals(other.seenBy, seenBy)&&(identical(other.isEdited, isEdited) || other.isEdited == isEdited)&&(identical(other.isDeleted, isDeleted) || other.isDeleted == isDeleted)&&const DeepCollectionEquality().equals(other.reactions, reactions)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.v, v) || other.v == v));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,conversation,sender,type,callType,callStatus,callDuration,content,mediaUrl,fileName,fileSize,const DeepCollectionEquality().hash(seenBy),isEdited,isDeleted,const DeepCollectionEquality().hash(reactions),createdAt,updatedAt,v);

@override
String toString() {
  return 'MessageItem(id: $id, conversation: $conversation, sender: $sender, type: $type, callType: $callType, callStatus: $callStatus, callDuration: $callDuration, content: $content, mediaUrl: $mediaUrl, fileName: $fileName, fileSize: $fileSize, seenBy: $seenBy, isEdited: $isEdited, isDeleted: $isDeleted, reactions: $reactions, createdAt: $createdAt, updatedAt: $updatedAt, v: $v)';
}


}

/// @nodoc
abstract mixin class $MessageItemCopyWith<$Res>  {
  factory $MessageItemCopyWith(MessageItem value, $Res Function(MessageItem) _then) = _$MessageItemCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: '_id') String? id, String? conversation, Sender? sender, String? type, String? callType, String? callStatus, int callDuration, String? content, String? mediaUrl, String? fileName, int fileSize, List<String> seenBy, bool isEdited, bool isDeleted, List<dynamic> reactions, String? createdAt, String? updatedAt,@JsonKey(name: '__v') int? v
});


$SenderCopyWith<$Res>? get sender;

}
/// @nodoc
class _$MessageItemCopyWithImpl<$Res>
    implements $MessageItemCopyWith<$Res> {
  _$MessageItemCopyWithImpl(this._self, this._then);

  final MessageItem _self;
  final $Res Function(MessageItem) _then;

/// Create a copy of MessageItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? conversation = freezed,Object? sender = freezed,Object? type = freezed,Object? callType = freezed,Object? callStatus = freezed,Object? callDuration = null,Object? content = freezed,Object? mediaUrl = freezed,Object? fileName = freezed,Object? fileSize = null,Object? seenBy = null,Object? isEdited = null,Object? isDeleted = null,Object? reactions = null,Object? createdAt = freezed,Object? updatedAt = freezed,Object? v = freezed,}) {
  return _then(MessageItem(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,conversation: freezed == conversation ? _self.conversation : conversation // ignore: cast_nullable_to_non_nullable
as String?,sender: freezed == sender ? _self.sender : sender // ignore: cast_nullable_to_non_nullable
as Sender?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,callType: freezed == callType ? _self.callType : callType // ignore: cast_nullable_to_non_nullable
as String?,callStatus: freezed == callStatus ? _self.callStatus : callStatus // ignore: cast_nullable_to_non_nullable
as String?,callDuration: null == callDuration ? _self.callDuration : callDuration // ignore: cast_nullable_to_non_nullable
as int,content: freezed == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String?,mediaUrl: freezed == mediaUrl ? _self.mediaUrl : mediaUrl // ignore: cast_nullable_to_non_nullable
as String?,fileName: freezed == fileName ? _self.fileName : fileName // ignore: cast_nullable_to_non_nullable
as String?,fileSize: null == fileSize ? _self.fileSize : fileSize // ignore: cast_nullable_to_non_nullable
as int,seenBy: null == seenBy ? _self.seenBy : seenBy // ignore: cast_nullable_to_non_nullable
as List<String>,isEdited: null == isEdited ? _self.isEdited : isEdited // ignore: cast_nullable_to_non_nullable
as bool,isDeleted: null == isDeleted ? _self.isDeleted : isDeleted // ignore: cast_nullable_to_non_nullable
as bool,reactions: null == reactions ? _self.reactions : reactions // ignore: cast_nullable_to_non_nullable
as List<dynamic>,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,v: freezed == v ? _self.v : v // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}
/// Create a copy of MessageItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SenderCopyWith<$Res>? get sender {
    if (_self.sender == null) {
    return null;
  }

  return $SenderCopyWith<$Res>(_self.sender!, (value) {
    return _then(_self.copyWith(sender: value));
  });
}
}


/// Adds pattern-matching-related methods to [MessageItem].
extension MessageItemPatterns on MessageItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MessageItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MessageItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MessageItem value)  $default,){
final _that = this;
switch (_that) {
case _MessageItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MessageItem value)?  $default,){
final _that = this;
switch (_that) {
case _MessageItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String? id,  String? conversation,  Sender? sender,  String? type,  String? callType,  String? callStatus,  int callDuration,  String? content,  String? mediaUrl,  String? fileName,  int fileSize,  List<String> seenBy,  bool isEdited,  bool isDeleted,  List<dynamic> reactions,  String? createdAt,  String? updatedAt, @JsonKey(name: '__v')  int? v)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MessageItem() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String? id,  String? conversation,  Sender? sender,  String? type,  String? callType,  String? callStatus,  int callDuration,  String? content,  String? mediaUrl,  String? fileName,  int fileSize,  List<String> seenBy,  bool isEdited,  bool isDeleted,  List<dynamic> reactions,  String? createdAt,  String? updatedAt, @JsonKey(name: '__v')  int? v)  $default,) {final _that = this;
switch (_that) {
case _MessageItem():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: '_id')  String? id,  String? conversation,  Sender? sender,  String? type,  String? callType,  String? callStatus,  int callDuration,  String? content,  String? mediaUrl,  String? fileName,  int fileSize,  List<String> seenBy,  bool isEdited,  bool isDeleted,  List<dynamic> reactions,  String? createdAt,  String? updatedAt, @JsonKey(name: '__v')  int? v)?  $default,) {final _that = this;
switch (_that) {
case _MessageItem() when $default != null:
return $default(_that.id,_that.conversation,_that.sender,_that.type,_that.callType,_that.callStatus,_that.callDuration,_that.content,_that.mediaUrl,_that.fileName,_that.fileSize,_that.seenBy,_that.isEdited,_that.isDeleted,_that.reactions,_that.createdAt,_that.updatedAt,_that.v);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MessageItem implements MessageItem {
  const _MessageItem({@JsonKey(name: '_id') this.id, this.conversation, this.sender, this.type, this.callType, this.callStatus, this.callDuration = 0, this.content, this.mediaUrl, this.fileName, this.fileSize = 0,  List<String> seenBy = const [], this.isEdited = false, this.isDeleted = false,  List<dynamic> reactions = const [], this.createdAt, this.updatedAt, @JsonKey(name: '__v') this.v}): _seenBy = seenBy,_reactions = reactions;
  factory _MessageItem.fromJson(Map<String, dynamic> json) => _$MessageItemFromJson(json);

@override@JsonKey(name: '_id') final  String? id;
@override final  String? conversation;
@override final  Sender? sender;
@override final  String? type;
@override final  String? callType;
@override final  String? callStatus;
@override@JsonKey() final  int callDuration;
@override final  String? content;
@override final  String? mediaUrl;
@override final  String? fileName;
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

@override final  String? createdAt;
@override final  String? updatedAt;
@override@JsonKey(name: '__v') final  int? v;

/// Create a copy of MessageItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MessageItemCopyWith<_MessageItem> get copyWith => __$MessageItemCopyWithImpl<_MessageItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MessageItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MessageItem&&(identical(other.id, id) || other.id == id)&&(identical(other.conversation, conversation) || other.conversation == conversation)&&(identical(other.sender, sender) || other.sender == sender)&&(identical(other.type, type) || other.type == type)&&(identical(other.callType, callType) || other.callType == callType)&&(identical(other.callStatus, callStatus) || other.callStatus == callStatus)&&(identical(other.callDuration, callDuration) || other.callDuration == callDuration)&&(identical(other.content, content) || other.content == content)&&(identical(other.mediaUrl, mediaUrl) || other.mediaUrl == mediaUrl)&&(identical(other.fileName, fileName) || other.fileName == fileName)&&(identical(other.fileSize, fileSize) || other.fileSize == fileSize)&&const DeepCollectionEquality().equals(other._seenBy, _seenBy)&&(identical(other.isEdited, isEdited) || other.isEdited == isEdited)&&(identical(other.isDeleted, isDeleted) || other.isDeleted == isDeleted)&&const DeepCollectionEquality().equals(other._reactions, _reactions)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.v, v) || other.v == v));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,conversation,sender,type,callType,callStatus,callDuration,content,mediaUrl,fileName,fileSize,const DeepCollectionEquality().hash(_seenBy),isEdited,isDeleted,const DeepCollectionEquality().hash(_reactions),createdAt,updatedAt,v);

@override
String toString() {
  return 'MessageItem(id: $id, conversation: $conversation, sender: $sender, type: $type, callType: $callType, callStatus: $callStatus, callDuration: $callDuration, content: $content, mediaUrl: $mediaUrl, fileName: $fileName, fileSize: $fileSize, seenBy: $seenBy, isEdited: $isEdited, isDeleted: $isDeleted, reactions: $reactions, createdAt: $createdAt, updatedAt: $updatedAt, v: $v)';
}


}

/// @nodoc
abstract mixin class _$MessageItemCopyWith<$Res> implements $MessageItemCopyWith<$Res> {
  factory _$MessageItemCopyWith(_MessageItem value, $Res Function(_MessageItem) _then) = __$MessageItemCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: '_id') String? id, String? conversation, Sender? sender, String? type, String? callType, String? callStatus, int callDuration, String? content, String? mediaUrl, String? fileName, int fileSize, List<String> seenBy, bool isEdited, bool isDeleted, List<dynamic> reactions, String? createdAt, String? updatedAt,@JsonKey(name: '__v') int? v
});


@override $SenderCopyWith<$Res>? get sender;

}
/// @nodoc
class __$MessageItemCopyWithImpl<$Res>
    implements _$MessageItemCopyWith<$Res> {
  __$MessageItemCopyWithImpl(this._self, this._then);

  final _MessageItem _self;
  final $Res Function(_MessageItem) _then;

/// Create a copy of MessageItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? conversation = freezed,Object? sender = freezed,Object? type = freezed,Object? callType = freezed,Object? callStatus = freezed,Object? callDuration = null,Object? content = freezed,Object? mediaUrl = freezed,Object? fileName = freezed,Object? fileSize = null,Object? seenBy = null,Object? isEdited = null,Object? isDeleted = null,Object? reactions = null,Object? createdAt = freezed,Object? updatedAt = freezed,Object? v = freezed,}) {
  return _then(_MessageItem(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,conversation: freezed == conversation ? _self.conversation : conversation // ignore: cast_nullable_to_non_nullable
as String?,sender: freezed == sender ? _self.sender : sender // ignore: cast_nullable_to_non_nullable
as Sender?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,callType: freezed == callType ? _self.callType : callType // ignore: cast_nullable_to_non_nullable
as String?,callStatus: freezed == callStatus ? _self.callStatus : callStatus // ignore: cast_nullable_to_non_nullable
as String?,callDuration: null == callDuration ? _self.callDuration : callDuration // ignore: cast_nullable_to_non_nullable
as int,content: freezed == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String?,mediaUrl: freezed == mediaUrl ? _self.mediaUrl : mediaUrl // ignore: cast_nullable_to_non_nullable
as String?,fileName: freezed == fileName ? _self.fileName : fileName // ignore: cast_nullable_to_non_nullable
as String?,fileSize: null == fileSize ? _self.fileSize : fileSize // ignore: cast_nullable_to_non_nullable
as int,seenBy: null == seenBy ? _self._seenBy : seenBy // ignore: cast_nullable_to_non_nullable
as List<String>,isEdited: null == isEdited ? _self.isEdited : isEdited // ignore: cast_nullable_to_non_nullable
as bool,isDeleted: null == isDeleted ? _self.isDeleted : isDeleted // ignore: cast_nullable_to_non_nullable
as bool,reactions: null == reactions ? _self._reactions : reactions // ignore: cast_nullable_to_non_nullable
as List<dynamic>,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,v: freezed == v ? _self.v : v // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

/// Create a copy of MessageItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SenderCopyWith<$Res>? get sender {
    if (_self.sender == null) {
    return null;
  }

  return $SenderCopyWith<$Res>(_self.sender!, (value) {
    return _then(_self.copyWith(sender: value));
  });
}
}


/// @nodoc
mixin _$Sender {

@JsonKey(name: '_id') String? get id; String? get username; String? get fullName; String? get avatar;
/// Create a copy of Sender
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SenderCopyWith<Sender> get copyWith => _$SenderCopyWithImpl<Sender>(this as Sender, _$identity);

  /// Serializes this Sender to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Sender&&(identical(other.id, id) || other.id == id)&&(identical(other.username, username) || other.username == username)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.avatar, avatar) || other.avatar == avatar));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,username,fullName,avatar);

@override
String toString() {
  return 'Sender(id: $id, username: $username, fullName: $fullName, avatar: $avatar)';
}


}

/// @nodoc
abstract mixin class $SenderCopyWith<$Res>  {
  factory $SenderCopyWith(Sender value, $Res Function(Sender) _then) = _$SenderCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: '_id') String? id, String? username, String? fullName, String? avatar
});




}
/// @nodoc
class _$SenderCopyWithImpl<$Res>
    implements $SenderCopyWith<$Res> {
  _$SenderCopyWithImpl(this._self, this._then);

  final Sender _self;
  final $Res Function(Sender) _then;

/// Create a copy of Sender
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? username = freezed,Object? fullName = freezed,Object? avatar = freezed,}) {
  return _then(Sender(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,username: freezed == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String?,fullName: freezed == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String?,avatar: freezed == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Sender].
extension SenderPatterns on Sender {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Sender value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Sender() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Sender value)  $default,){
final _that = this;
switch (_that) {
case _Sender():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Sender value)?  $default,){
final _that = this;
switch (_that) {
case _Sender() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String? id,  String? username,  String? fullName,  String? avatar)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Sender() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String? id,  String? username,  String? fullName,  String? avatar)  $default,) {final _that = this;
switch (_that) {
case _Sender():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: '_id')  String? id,  String? username,  String? fullName,  String? avatar)?  $default,) {final _that = this;
switch (_that) {
case _Sender() when $default != null:
return $default(_that.id,_that.username,_that.fullName,_that.avatar);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Sender implements Sender {
  const _Sender({@JsonKey(name: '_id') this.id, this.username, this.fullName, this.avatar});
  factory _Sender.fromJson(Map<String, dynamic> json) => _$SenderFromJson(json);

@override@JsonKey(name: '_id') final  String? id;
@override final  String? username;
@override final  String? fullName;
@override final  String? avatar;

/// Create a copy of Sender
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SenderCopyWith<_Sender> get copyWith => __$SenderCopyWithImpl<_Sender>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SenderToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Sender&&(identical(other.id, id) || other.id == id)&&(identical(other.username, username) || other.username == username)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.avatar, avatar) || other.avatar == avatar));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,username,fullName,avatar);

@override
String toString() {
  return 'Sender(id: $id, username: $username, fullName: $fullName, avatar: $avatar)';
}


}

/// @nodoc
abstract mixin class _$SenderCopyWith<$Res> implements $SenderCopyWith<$Res> {
  factory _$SenderCopyWith(_Sender value, $Res Function(_Sender) _then) = __$SenderCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: '_id') String? id, String? username, String? fullName, String? avatar
});




}
/// @nodoc
class __$SenderCopyWithImpl<$Res>
    implements _$SenderCopyWith<$Res> {
  __$SenderCopyWithImpl(this._self, this._then);

  final _Sender _self;
  final $Res Function(_Sender) _then;

/// Create a copy of Sender
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? username = freezed,Object? fullName = freezed,Object? avatar = freezed,}) {
  return _then(_Sender(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,username: freezed == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String?,fullName: freezed == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String?,avatar: freezed == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
