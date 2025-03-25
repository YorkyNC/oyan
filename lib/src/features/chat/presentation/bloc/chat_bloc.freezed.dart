// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChatEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(GetChatsRequest request) getChats,
    required TResult Function(GetMessagesRequest request) getMessages,
    required TResult Function(GetMessageRequest request) getMessage,
    required TResult Function(SendMessageRequest message) sendMessage,
    required TResult Function(ViewMessageRequest message) viewMessage,
    required TResult Function(MessageEntity message) newMessageArrived,
    required TResult Function(String chatId, String schoolId, String? messageId)
        loadMoreBefore,
    required TResult Function(String chatId, String schoolId, String? messageId)
        loadMoreAfter,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(GetChatsRequest request)? getChats,
    TResult? Function(GetMessagesRequest request)? getMessages,
    TResult? Function(GetMessageRequest request)? getMessage,
    TResult? Function(SendMessageRequest message)? sendMessage,
    TResult? Function(ViewMessageRequest message)? viewMessage,
    TResult? Function(MessageEntity message)? newMessageArrived,
    TResult? Function(String chatId, String schoolId, String? messageId)?
        loadMoreBefore,
    TResult? Function(String chatId, String schoolId, String? messageId)?
        loadMoreAfter,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(GetChatsRequest request)? getChats,
    TResult Function(GetMessagesRequest request)? getMessages,
    TResult Function(GetMessageRequest request)? getMessage,
    TResult Function(SendMessageRequest message)? sendMessage,
    TResult Function(ViewMessageRequest message)? viewMessage,
    TResult Function(MessageEntity message)? newMessageArrived,
    TResult Function(String chatId, String schoolId, String? messageId)?
        loadMoreBefore,
    TResult Function(String chatId, String schoolId, String? messageId)?
        loadMoreAfter,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetChats value) getChats,
    required TResult Function(_GetMessages value) getMessages,
    required TResult Function(_GetMessage value) getMessage,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_ViewMessage value) viewMessage,
    required TResult Function(_NewMessageArrived value) newMessageArrived,
    required TResult Function(_LoadMoreBefore value) loadMoreBefore,
    required TResult Function(_LoadMoreAfter value) loadMoreAfter,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetChats value)? getChats,
    TResult? Function(_GetMessages value)? getMessages,
    TResult? Function(_GetMessage value)? getMessage,
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_ViewMessage value)? viewMessage,
    TResult? Function(_NewMessageArrived value)? newMessageArrived,
    TResult? Function(_LoadMoreBefore value)? loadMoreBefore,
    TResult? Function(_LoadMoreAfter value)? loadMoreAfter,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetChats value)? getChats,
    TResult Function(_GetMessages value)? getMessages,
    TResult Function(_GetMessage value)? getMessage,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_ViewMessage value)? viewMessage,
    TResult Function(_NewMessageArrived value)? newMessageArrived,
    TResult Function(_LoadMoreBefore value)? loadMoreBefore,
    TResult Function(_LoadMoreAfter value)? loadMoreAfter,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatEventCopyWith<$Res> {
  factory $ChatEventCopyWith(ChatEvent value, $Res Function(ChatEvent) then) =
      _$ChatEventCopyWithImpl<$Res, ChatEvent>;
}

/// @nodoc
class _$ChatEventCopyWithImpl<$Res, $Val extends ChatEvent>
    implements $ChatEventCopyWith<$Res> {
  _$ChatEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'ChatEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(GetChatsRequest request) getChats,
    required TResult Function(GetMessagesRequest request) getMessages,
    required TResult Function(GetMessageRequest request) getMessage,
    required TResult Function(SendMessageRequest message) sendMessage,
    required TResult Function(ViewMessageRequest message) viewMessage,
    required TResult Function(MessageEntity message) newMessageArrived,
    required TResult Function(String chatId, String schoolId, String? messageId)
        loadMoreBefore,
    required TResult Function(String chatId, String schoolId, String? messageId)
        loadMoreAfter,
    required TResult Function(String message) error,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(GetChatsRequest request)? getChats,
    TResult? Function(GetMessagesRequest request)? getMessages,
    TResult? Function(GetMessageRequest request)? getMessage,
    TResult? Function(SendMessageRequest message)? sendMessage,
    TResult? Function(ViewMessageRequest message)? viewMessage,
    TResult? Function(MessageEntity message)? newMessageArrived,
    TResult? Function(String chatId, String schoolId, String? messageId)?
        loadMoreBefore,
    TResult? Function(String chatId, String schoolId, String? messageId)?
        loadMoreAfter,
    TResult? Function(String message)? error,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(GetChatsRequest request)? getChats,
    TResult Function(GetMessagesRequest request)? getMessages,
    TResult Function(GetMessageRequest request)? getMessage,
    TResult Function(SendMessageRequest message)? sendMessage,
    TResult Function(ViewMessageRequest message)? viewMessage,
    TResult Function(MessageEntity message)? newMessageArrived,
    TResult Function(String chatId, String schoolId, String? messageId)?
        loadMoreBefore,
    TResult Function(String chatId, String schoolId, String? messageId)?
        loadMoreAfter,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetChats value) getChats,
    required TResult Function(_GetMessages value) getMessages,
    required TResult Function(_GetMessage value) getMessage,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_ViewMessage value) viewMessage,
    required TResult Function(_NewMessageArrived value) newMessageArrived,
    required TResult Function(_LoadMoreBefore value) loadMoreBefore,
    required TResult Function(_LoadMoreAfter value) loadMoreAfter,
    required TResult Function(_Error value) error,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetChats value)? getChats,
    TResult? Function(_GetMessages value)? getMessages,
    TResult? Function(_GetMessage value)? getMessage,
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_ViewMessage value)? viewMessage,
    TResult? Function(_NewMessageArrived value)? newMessageArrived,
    TResult? Function(_LoadMoreBefore value)? loadMoreBefore,
    TResult? Function(_LoadMoreAfter value)? loadMoreAfter,
    TResult? Function(_Error value)? error,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetChats value)? getChats,
    TResult Function(_GetMessages value)? getMessages,
    TResult Function(_GetMessage value)? getMessage,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_ViewMessage value)? viewMessage,
    TResult Function(_NewMessageArrived value)? newMessageArrived,
    TResult Function(_LoadMoreBefore value)? loadMoreBefore,
    TResult Function(_LoadMoreAfter value)? loadMoreAfter,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ChatEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$GetChatsImplCopyWith<$Res> {
  factory _$$GetChatsImplCopyWith(
          _$GetChatsImpl value, $Res Function(_$GetChatsImpl) then) =
      __$$GetChatsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({GetChatsRequest request});

  $GetChatsRequestCopyWith<$Res> get request;
}

/// @nodoc
class __$$GetChatsImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$GetChatsImpl>
    implements _$$GetChatsImplCopyWith<$Res> {
  __$$GetChatsImplCopyWithImpl(
      _$GetChatsImpl _value, $Res Function(_$GetChatsImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
  }) {
    return _then(_$GetChatsImpl(
      null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as GetChatsRequest,
    ));
  }

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GetChatsRequestCopyWith<$Res> get request {
    return $GetChatsRequestCopyWith<$Res>(_value.request, (value) {
      return _then(_value.copyWith(request: value));
    });
  }
}

/// @nodoc

class _$GetChatsImpl implements _GetChats {
  const _$GetChatsImpl(this.request);

  @override
  final GetChatsRequest request;

  @override
  String toString() {
    return 'ChatEvent.getChats(request: $request)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetChatsImpl &&
            (identical(other.request, request) || other.request == request));
  }

  @override
  int get hashCode => Object.hash(runtimeType, request);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetChatsImplCopyWith<_$GetChatsImpl> get copyWith =>
      __$$GetChatsImplCopyWithImpl<_$GetChatsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(GetChatsRequest request) getChats,
    required TResult Function(GetMessagesRequest request) getMessages,
    required TResult Function(GetMessageRequest request) getMessage,
    required TResult Function(SendMessageRequest message) sendMessage,
    required TResult Function(ViewMessageRequest message) viewMessage,
    required TResult Function(MessageEntity message) newMessageArrived,
    required TResult Function(String chatId, String schoolId, String? messageId)
        loadMoreBefore,
    required TResult Function(String chatId, String schoolId, String? messageId)
        loadMoreAfter,
    required TResult Function(String message) error,
  }) {
    return getChats(request);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(GetChatsRequest request)? getChats,
    TResult? Function(GetMessagesRequest request)? getMessages,
    TResult? Function(GetMessageRequest request)? getMessage,
    TResult? Function(SendMessageRequest message)? sendMessage,
    TResult? Function(ViewMessageRequest message)? viewMessage,
    TResult? Function(MessageEntity message)? newMessageArrived,
    TResult? Function(String chatId, String schoolId, String? messageId)?
        loadMoreBefore,
    TResult? Function(String chatId, String schoolId, String? messageId)?
        loadMoreAfter,
    TResult? Function(String message)? error,
  }) {
    return getChats?.call(request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(GetChatsRequest request)? getChats,
    TResult Function(GetMessagesRequest request)? getMessages,
    TResult Function(GetMessageRequest request)? getMessage,
    TResult Function(SendMessageRequest message)? sendMessage,
    TResult Function(ViewMessageRequest message)? viewMessage,
    TResult Function(MessageEntity message)? newMessageArrived,
    TResult Function(String chatId, String schoolId, String? messageId)?
        loadMoreBefore,
    TResult Function(String chatId, String schoolId, String? messageId)?
        loadMoreAfter,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (getChats != null) {
      return getChats(request);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetChats value) getChats,
    required TResult Function(_GetMessages value) getMessages,
    required TResult Function(_GetMessage value) getMessage,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_ViewMessage value) viewMessage,
    required TResult Function(_NewMessageArrived value) newMessageArrived,
    required TResult Function(_LoadMoreBefore value) loadMoreBefore,
    required TResult Function(_LoadMoreAfter value) loadMoreAfter,
    required TResult Function(_Error value) error,
  }) {
    return getChats(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetChats value)? getChats,
    TResult? Function(_GetMessages value)? getMessages,
    TResult? Function(_GetMessage value)? getMessage,
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_ViewMessage value)? viewMessage,
    TResult? Function(_NewMessageArrived value)? newMessageArrived,
    TResult? Function(_LoadMoreBefore value)? loadMoreBefore,
    TResult? Function(_LoadMoreAfter value)? loadMoreAfter,
    TResult? Function(_Error value)? error,
  }) {
    return getChats?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetChats value)? getChats,
    TResult Function(_GetMessages value)? getMessages,
    TResult Function(_GetMessage value)? getMessage,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_ViewMessage value)? viewMessage,
    TResult Function(_NewMessageArrived value)? newMessageArrived,
    TResult Function(_LoadMoreBefore value)? loadMoreBefore,
    TResult Function(_LoadMoreAfter value)? loadMoreAfter,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (getChats != null) {
      return getChats(this);
    }
    return orElse();
  }
}

abstract class _GetChats implements ChatEvent {
  const factory _GetChats(final GetChatsRequest request) = _$GetChatsImpl;

  GetChatsRequest get request;

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetChatsImplCopyWith<_$GetChatsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetMessagesImplCopyWith<$Res> {
  factory _$$GetMessagesImplCopyWith(
          _$GetMessagesImpl value, $Res Function(_$GetMessagesImpl) then) =
      __$$GetMessagesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({GetMessagesRequest request});

  $GetMessagesRequestCopyWith<$Res> get request;
}

/// @nodoc
class __$$GetMessagesImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$GetMessagesImpl>
    implements _$$GetMessagesImplCopyWith<$Res> {
  __$$GetMessagesImplCopyWithImpl(
      _$GetMessagesImpl _value, $Res Function(_$GetMessagesImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
  }) {
    return _then(_$GetMessagesImpl(
      null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as GetMessagesRequest,
    ));
  }

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GetMessagesRequestCopyWith<$Res> get request {
    return $GetMessagesRequestCopyWith<$Res>(_value.request, (value) {
      return _then(_value.copyWith(request: value));
    });
  }
}

/// @nodoc

class _$GetMessagesImpl implements _GetMessages {
  const _$GetMessagesImpl(this.request);

  @override
  final GetMessagesRequest request;

  @override
  String toString() {
    return 'ChatEvent.getMessages(request: $request)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetMessagesImpl &&
            (identical(other.request, request) || other.request == request));
  }

  @override
  int get hashCode => Object.hash(runtimeType, request);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetMessagesImplCopyWith<_$GetMessagesImpl> get copyWith =>
      __$$GetMessagesImplCopyWithImpl<_$GetMessagesImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(GetChatsRequest request) getChats,
    required TResult Function(GetMessagesRequest request) getMessages,
    required TResult Function(GetMessageRequest request) getMessage,
    required TResult Function(SendMessageRequest message) sendMessage,
    required TResult Function(ViewMessageRequest message) viewMessage,
    required TResult Function(MessageEntity message) newMessageArrived,
    required TResult Function(String chatId, String schoolId, String? messageId)
        loadMoreBefore,
    required TResult Function(String chatId, String schoolId, String? messageId)
        loadMoreAfter,
    required TResult Function(String message) error,
  }) {
    return getMessages(request);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(GetChatsRequest request)? getChats,
    TResult? Function(GetMessagesRequest request)? getMessages,
    TResult? Function(GetMessageRequest request)? getMessage,
    TResult? Function(SendMessageRequest message)? sendMessage,
    TResult? Function(ViewMessageRequest message)? viewMessage,
    TResult? Function(MessageEntity message)? newMessageArrived,
    TResult? Function(String chatId, String schoolId, String? messageId)?
        loadMoreBefore,
    TResult? Function(String chatId, String schoolId, String? messageId)?
        loadMoreAfter,
    TResult? Function(String message)? error,
  }) {
    return getMessages?.call(request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(GetChatsRequest request)? getChats,
    TResult Function(GetMessagesRequest request)? getMessages,
    TResult Function(GetMessageRequest request)? getMessage,
    TResult Function(SendMessageRequest message)? sendMessage,
    TResult Function(ViewMessageRequest message)? viewMessage,
    TResult Function(MessageEntity message)? newMessageArrived,
    TResult Function(String chatId, String schoolId, String? messageId)?
        loadMoreBefore,
    TResult Function(String chatId, String schoolId, String? messageId)?
        loadMoreAfter,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (getMessages != null) {
      return getMessages(request);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetChats value) getChats,
    required TResult Function(_GetMessages value) getMessages,
    required TResult Function(_GetMessage value) getMessage,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_ViewMessage value) viewMessage,
    required TResult Function(_NewMessageArrived value) newMessageArrived,
    required TResult Function(_LoadMoreBefore value) loadMoreBefore,
    required TResult Function(_LoadMoreAfter value) loadMoreAfter,
    required TResult Function(_Error value) error,
  }) {
    return getMessages(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetChats value)? getChats,
    TResult? Function(_GetMessages value)? getMessages,
    TResult? Function(_GetMessage value)? getMessage,
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_ViewMessage value)? viewMessage,
    TResult? Function(_NewMessageArrived value)? newMessageArrived,
    TResult? Function(_LoadMoreBefore value)? loadMoreBefore,
    TResult? Function(_LoadMoreAfter value)? loadMoreAfter,
    TResult? Function(_Error value)? error,
  }) {
    return getMessages?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetChats value)? getChats,
    TResult Function(_GetMessages value)? getMessages,
    TResult Function(_GetMessage value)? getMessage,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_ViewMessage value)? viewMessage,
    TResult Function(_NewMessageArrived value)? newMessageArrived,
    TResult Function(_LoadMoreBefore value)? loadMoreBefore,
    TResult Function(_LoadMoreAfter value)? loadMoreAfter,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (getMessages != null) {
      return getMessages(this);
    }
    return orElse();
  }
}

abstract class _GetMessages implements ChatEvent {
  const factory _GetMessages(final GetMessagesRequest request) =
      _$GetMessagesImpl;

  GetMessagesRequest get request;

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetMessagesImplCopyWith<_$GetMessagesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetMessageImplCopyWith<$Res> {
  factory _$$GetMessageImplCopyWith(
          _$GetMessageImpl value, $Res Function(_$GetMessageImpl) then) =
      __$$GetMessageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({GetMessageRequest request});

  $GetMessageRequestCopyWith<$Res> get request;
}

/// @nodoc
class __$$GetMessageImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$GetMessageImpl>
    implements _$$GetMessageImplCopyWith<$Res> {
  __$$GetMessageImplCopyWithImpl(
      _$GetMessageImpl _value, $Res Function(_$GetMessageImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
  }) {
    return _then(_$GetMessageImpl(
      null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as GetMessageRequest,
    ));
  }

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GetMessageRequestCopyWith<$Res> get request {
    return $GetMessageRequestCopyWith<$Res>(_value.request, (value) {
      return _then(_value.copyWith(request: value));
    });
  }
}

/// @nodoc

class _$GetMessageImpl implements _GetMessage {
  const _$GetMessageImpl(this.request);

  @override
  final GetMessageRequest request;

  @override
  String toString() {
    return 'ChatEvent.getMessage(request: $request)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetMessageImpl &&
            (identical(other.request, request) || other.request == request));
  }

  @override
  int get hashCode => Object.hash(runtimeType, request);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetMessageImplCopyWith<_$GetMessageImpl> get copyWith =>
      __$$GetMessageImplCopyWithImpl<_$GetMessageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(GetChatsRequest request) getChats,
    required TResult Function(GetMessagesRequest request) getMessages,
    required TResult Function(GetMessageRequest request) getMessage,
    required TResult Function(SendMessageRequest message) sendMessage,
    required TResult Function(ViewMessageRequest message) viewMessage,
    required TResult Function(MessageEntity message) newMessageArrived,
    required TResult Function(String chatId, String schoolId, String? messageId)
        loadMoreBefore,
    required TResult Function(String chatId, String schoolId, String? messageId)
        loadMoreAfter,
    required TResult Function(String message) error,
  }) {
    return getMessage(request);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(GetChatsRequest request)? getChats,
    TResult? Function(GetMessagesRequest request)? getMessages,
    TResult? Function(GetMessageRequest request)? getMessage,
    TResult? Function(SendMessageRequest message)? sendMessage,
    TResult? Function(ViewMessageRequest message)? viewMessage,
    TResult? Function(MessageEntity message)? newMessageArrived,
    TResult? Function(String chatId, String schoolId, String? messageId)?
        loadMoreBefore,
    TResult? Function(String chatId, String schoolId, String? messageId)?
        loadMoreAfter,
    TResult? Function(String message)? error,
  }) {
    return getMessage?.call(request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(GetChatsRequest request)? getChats,
    TResult Function(GetMessagesRequest request)? getMessages,
    TResult Function(GetMessageRequest request)? getMessage,
    TResult Function(SendMessageRequest message)? sendMessage,
    TResult Function(ViewMessageRequest message)? viewMessage,
    TResult Function(MessageEntity message)? newMessageArrived,
    TResult Function(String chatId, String schoolId, String? messageId)?
        loadMoreBefore,
    TResult Function(String chatId, String schoolId, String? messageId)?
        loadMoreAfter,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (getMessage != null) {
      return getMessage(request);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetChats value) getChats,
    required TResult Function(_GetMessages value) getMessages,
    required TResult Function(_GetMessage value) getMessage,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_ViewMessage value) viewMessage,
    required TResult Function(_NewMessageArrived value) newMessageArrived,
    required TResult Function(_LoadMoreBefore value) loadMoreBefore,
    required TResult Function(_LoadMoreAfter value) loadMoreAfter,
    required TResult Function(_Error value) error,
  }) {
    return getMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetChats value)? getChats,
    TResult? Function(_GetMessages value)? getMessages,
    TResult? Function(_GetMessage value)? getMessage,
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_ViewMessage value)? viewMessage,
    TResult? Function(_NewMessageArrived value)? newMessageArrived,
    TResult? Function(_LoadMoreBefore value)? loadMoreBefore,
    TResult? Function(_LoadMoreAfter value)? loadMoreAfter,
    TResult? Function(_Error value)? error,
  }) {
    return getMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetChats value)? getChats,
    TResult Function(_GetMessages value)? getMessages,
    TResult Function(_GetMessage value)? getMessage,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_ViewMessage value)? viewMessage,
    TResult Function(_NewMessageArrived value)? newMessageArrived,
    TResult Function(_LoadMoreBefore value)? loadMoreBefore,
    TResult Function(_LoadMoreAfter value)? loadMoreAfter,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (getMessage != null) {
      return getMessage(this);
    }
    return orElse();
  }
}

abstract class _GetMessage implements ChatEvent {
  const factory _GetMessage(final GetMessageRequest request) = _$GetMessageImpl;

  GetMessageRequest get request;

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetMessageImplCopyWith<_$GetMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SendMessageImplCopyWith<$Res> {
  factory _$$SendMessageImplCopyWith(
          _$SendMessageImpl value, $Res Function(_$SendMessageImpl) then) =
      __$$SendMessageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SendMessageRequest message});

  $SendMessageRequestCopyWith<$Res> get message;
}

/// @nodoc
class __$$SendMessageImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$SendMessageImpl>
    implements _$$SendMessageImplCopyWith<$Res> {
  __$$SendMessageImplCopyWithImpl(
      _$SendMessageImpl _value, $Res Function(_$SendMessageImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$SendMessageImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as SendMessageRequest,
    ));
  }

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SendMessageRequestCopyWith<$Res> get message {
    return $SendMessageRequestCopyWith<$Res>(_value.message, (value) {
      return _then(_value.copyWith(message: value));
    });
  }
}

/// @nodoc

class _$SendMessageImpl implements _SendMessage {
  const _$SendMessageImpl(this.message);

  @override
  final SendMessageRequest message;

  @override
  String toString() {
    return 'ChatEvent.sendMessage(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendMessageImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SendMessageImplCopyWith<_$SendMessageImpl> get copyWith =>
      __$$SendMessageImplCopyWithImpl<_$SendMessageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(GetChatsRequest request) getChats,
    required TResult Function(GetMessagesRequest request) getMessages,
    required TResult Function(GetMessageRequest request) getMessage,
    required TResult Function(SendMessageRequest message) sendMessage,
    required TResult Function(ViewMessageRequest message) viewMessage,
    required TResult Function(MessageEntity message) newMessageArrived,
    required TResult Function(String chatId, String schoolId, String? messageId)
        loadMoreBefore,
    required TResult Function(String chatId, String schoolId, String? messageId)
        loadMoreAfter,
    required TResult Function(String message) error,
  }) {
    return sendMessage(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(GetChatsRequest request)? getChats,
    TResult? Function(GetMessagesRequest request)? getMessages,
    TResult? Function(GetMessageRequest request)? getMessage,
    TResult? Function(SendMessageRequest message)? sendMessage,
    TResult? Function(ViewMessageRequest message)? viewMessage,
    TResult? Function(MessageEntity message)? newMessageArrived,
    TResult? Function(String chatId, String schoolId, String? messageId)?
        loadMoreBefore,
    TResult? Function(String chatId, String schoolId, String? messageId)?
        loadMoreAfter,
    TResult? Function(String message)? error,
  }) {
    return sendMessage?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(GetChatsRequest request)? getChats,
    TResult Function(GetMessagesRequest request)? getMessages,
    TResult Function(GetMessageRequest request)? getMessage,
    TResult Function(SendMessageRequest message)? sendMessage,
    TResult Function(ViewMessageRequest message)? viewMessage,
    TResult Function(MessageEntity message)? newMessageArrived,
    TResult Function(String chatId, String schoolId, String? messageId)?
        loadMoreBefore,
    TResult Function(String chatId, String schoolId, String? messageId)?
        loadMoreAfter,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (sendMessage != null) {
      return sendMessage(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetChats value) getChats,
    required TResult Function(_GetMessages value) getMessages,
    required TResult Function(_GetMessage value) getMessage,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_ViewMessage value) viewMessage,
    required TResult Function(_NewMessageArrived value) newMessageArrived,
    required TResult Function(_LoadMoreBefore value) loadMoreBefore,
    required TResult Function(_LoadMoreAfter value) loadMoreAfter,
    required TResult Function(_Error value) error,
  }) {
    return sendMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetChats value)? getChats,
    TResult? Function(_GetMessages value)? getMessages,
    TResult? Function(_GetMessage value)? getMessage,
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_ViewMessage value)? viewMessage,
    TResult? Function(_NewMessageArrived value)? newMessageArrived,
    TResult? Function(_LoadMoreBefore value)? loadMoreBefore,
    TResult? Function(_LoadMoreAfter value)? loadMoreAfter,
    TResult? Function(_Error value)? error,
  }) {
    return sendMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetChats value)? getChats,
    TResult Function(_GetMessages value)? getMessages,
    TResult Function(_GetMessage value)? getMessage,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_ViewMessage value)? viewMessage,
    TResult Function(_NewMessageArrived value)? newMessageArrived,
    TResult Function(_LoadMoreBefore value)? loadMoreBefore,
    TResult Function(_LoadMoreAfter value)? loadMoreAfter,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (sendMessage != null) {
      return sendMessage(this);
    }
    return orElse();
  }
}

abstract class _SendMessage implements ChatEvent {
  const factory _SendMessage(final SendMessageRequest message) =
      _$SendMessageImpl;

  SendMessageRequest get message;

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SendMessageImplCopyWith<_$SendMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ViewMessageImplCopyWith<$Res> {
  factory _$$ViewMessageImplCopyWith(
          _$ViewMessageImpl value, $Res Function(_$ViewMessageImpl) then) =
      __$$ViewMessageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ViewMessageRequest message});

  $ViewMessageRequestCopyWith<$Res> get message;
}

/// @nodoc
class __$$ViewMessageImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$ViewMessageImpl>
    implements _$$ViewMessageImplCopyWith<$Res> {
  __$$ViewMessageImplCopyWithImpl(
      _$ViewMessageImpl _value, $Res Function(_$ViewMessageImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ViewMessageImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as ViewMessageRequest,
    ));
  }

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ViewMessageRequestCopyWith<$Res> get message {
    return $ViewMessageRequestCopyWith<$Res>(_value.message, (value) {
      return _then(_value.copyWith(message: value));
    });
  }
}

/// @nodoc

class _$ViewMessageImpl implements _ViewMessage {
  const _$ViewMessageImpl(this.message);

  @override
  final ViewMessageRequest message;

  @override
  String toString() {
    return 'ChatEvent.viewMessage(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ViewMessageImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ViewMessageImplCopyWith<_$ViewMessageImpl> get copyWith =>
      __$$ViewMessageImplCopyWithImpl<_$ViewMessageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(GetChatsRequest request) getChats,
    required TResult Function(GetMessagesRequest request) getMessages,
    required TResult Function(GetMessageRequest request) getMessage,
    required TResult Function(SendMessageRequest message) sendMessage,
    required TResult Function(ViewMessageRequest message) viewMessage,
    required TResult Function(MessageEntity message) newMessageArrived,
    required TResult Function(String chatId, String schoolId, String? messageId)
        loadMoreBefore,
    required TResult Function(String chatId, String schoolId, String? messageId)
        loadMoreAfter,
    required TResult Function(String message) error,
  }) {
    return viewMessage(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(GetChatsRequest request)? getChats,
    TResult? Function(GetMessagesRequest request)? getMessages,
    TResult? Function(GetMessageRequest request)? getMessage,
    TResult? Function(SendMessageRequest message)? sendMessage,
    TResult? Function(ViewMessageRequest message)? viewMessage,
    TResult? Function(MessageEntity message)? newMessageArrived,
    TResult? Function(String chatId, String schoolId, String? messageId)?
        loadMoreBefore,
    TResult? Function(String chatId, String schoolId, String? messageId)?
        loadMoreAfter,
    TResult? Function(String message)? error,
  }) {
    return viewMessage?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(GetChatsRequest request)? getChats,
    TResult Function(GetMessagesRequest request)? getMessages,
    TResult Function(GetMessageRequest request)? getMessage,
    TResult Function(SendMessageRequest message)? sendMessage,
    TResult Function(ViewMessageRequest message)? viewMessage,
    TResult Function(MessageEntity message)? newMessageArrived,
    TResult Function(String chatId, String schoolId, String? messageId)?
        loadMoreBefore,
    TResult Function(String chatId, String schoolId, String? messageId)?
        loadMoreAfter,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (viewMessage != null) {
      return viewMessage(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetChats value) getChats,
    required TResult Function(_GetMessages value) getMessages,
    required TResult Function(_GetMessage value) getMessage,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_ViewMessage value) viewMessage,
    required TResult Function(_NewMessageArrived value) newMessageArrived,
    required TResult Function(_LoadMoreBefore value) loadMoreBefore,
    required TResult Function(_LoadMoreAfter value) loadMoreAfter,
    required TResult Function(_Error value) error,
  }) {
    return viewMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetChats value)? getChats,
    TResult? Function(_GetMessages value)? getMessages,
    TResult? Function(_GetMessage value)? getMessage,
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_ViewMessage value)? viewMessage,
    TResult? Function(_NewMessageArrived value)? newMessageArrived,
    TResult? Function(_LoadMoreBefore value)? loadMoreBefore,
    TResult? Function(_LoadMoreAfter value)? loadMoreAfter,
    TResult? Function(_Error value)? error,
  }) {
    return viewMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetChats value)? getChats,
    TResult Function(_GetMessages value)? getMessages,
    TResult Function(_GetMessage value)? getMessage,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_ViewMessage value)? viewMessage,
    TResult Function(_NewMessageArrived value)? newMessageArrived,
    TResult Function(_LoadMoreBefore value)? loadMoreBefore,
    TResult Function(_LoadMoreAfter value)? loadMoreAfter,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (viewMessage != null) {
      return viewMessage(this);
    }
    return orElse();
  }
}

abstract class _ViewMessage implements ChatEvent {
  const factory _ViewMessage(final ViewMessageRequest message) =
      _$ViewMessageImpl;

  ViewMessageRequest get message;

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ViewMessageImplCopyWith<_$ViewMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NewMessageArrivedImplCopyWith<$Res> {
  factory _$$NewMessageArrivedImplCopyWith(_$NewMessageArrivedImpl value,
          $Res Function(_$NewMessageArrivedImpl) then) =
      __$$NewMessageArrivedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({MessageEntity message});

  $MessageEntityCopyWith<$Res> get message;
}

/// @nodoc
class __$$NewMessageArrivedImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$NewMessageArrivedImpl>
    implements _$$NewMessageArrivedImplCopyWith<$Res> {
  __$$NewMessageArrivedImplCopyWithImpl(_$NewMessageArrivedImpl _value,
      $Res Function(_$NewMessageArrivedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$NewMessageArrivedImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as MessageEntity,
    ));
  }

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MessageEntityCopyWith<$Res> get message {
    return $MessageEntityCopyWith<$Res>(_value.message, (value) {
      return _then(_value.copyWith(message: value));
    });
  }
}

/// @nodoc

class _$NewMessageArrivedImpl implements _NewMessageArrived {
  const _$NewMessageArrivedImpl(this.message);

  @override
  final MessageEntity message;

  @override
  String toString() {
    return 'ChatEvent.newMessageArrived(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewMessageArrivedImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NewMessageArrivedImplCopyWith<_$NewMessageArrivedImpl> get copyWith =>
      __$$NewMessageArrivedImplCopyWithImpl<_$NewMessageArrivedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(GetChatsRequest request) getChats,
    required TResult Function(GetMessagesRequest request) getMessages,
    required TResult Function(GetMessageRequest request) getMessage,
    required TResult Function(SendMessageRequest message) sendMessage,
    required TResult Function(ViewMessageRequest message) viewMessage,
    required TResult Function(MessageEntity message) newMessageArrived,
    required TResult Function(String chatId, String schoolId, String? messageId)
        loadMoreBefore,
    required TResult Function(String chatId, String schoolId, String? messageId)
        loadMoreAfter,
    required TResult Function(String message) error,
  }) {
    return newMessageArrived(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(GetChatsRequest request)? getChats,
    TResult? Function(GetMessagesRequest request)? getMessages,
    TResult? Function(GetMessageRequest request)? getMessage,
    TResult? Function(SendMessageRequest message)? sendMessage,
    TResult? Function(ViewMessageRequest message)? viewMessage,
    TResult? Function(MessageEntity message)? newMessageArrived,
    TResult? Function(String chatId, String schoolId, String? messageId)?
        loadMoreBefore,
    TResult? Function(String chatId, String schoolId, String? messageId)?
        loadMoreAfter,
    TResult? Function(String message)? error,
  }) {
    return newMessageArrived?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(GetChatsRequest request)? getChats,
    TResult Function(GetMessagesRequest request)? getMessages,
    TResult Function(GetMessageRequest request)? getMessage,
    TResult Function(SendMessageRequest message)? sendMessage,
    TResult Function(ViewMessageRequest message)? viewMessage,
    TResult Function(MessageEntity message)? newMessageArrived,
    TResult Function(String chatId, String schoolId, String? messageId)?
        loadMoreBefore,
    TResult Function(String chatId, String schoolId, String? messageId)?
        loadMoreAfter,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (newMessageArrived != null) {
      return newMessageArrived(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetChats value) getChats,
    required TResult Function(_GetMessages value) getMessages,
    required TResult Function(_GetMessage value) getMessage,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_ViewMessage value) viewMessage,
    required TResult Function(_NewMessageArrived value) newMessageArrived,
    required TResult Function(_LoadMoreBefore value) loadMoreBefore,
    required TResult Function(_LoadMoreAfter value) loadMoreAfter,
    required TResult Function(_Error value) error,
  }) {
    return newMessageArrived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetChats value)? getChats,
    TResult? Function(_GetMessages value)? getMessages,
    TResult? Function(_GetMessage value)? getMessage,
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_ViewMessage value)? viewMessage,
    TResult? Function(_NewMessageArrived value)? newMessageArrived,
    TResult? Function(_LoadMoreBefore value)? loadMoreBefore,
    TResult? Function(_LoadMoreAfter value)? loadMoreAfter,
    TResult? Function(_Error value)? error,
  }) {
    return newMessageArrived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetChats value)? getChats,
    TResult Function(_GetMessages value)? getMessages,
    TResult Function(_GetMessage value)? getMessage,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_ViewMessage value)? viewMessage,
    TResult Function(_NewMessageArrived value)? newMessageArrived,
    TResult Function(_LoadMoreBefore value)? loadMoreBefore,
    TResult Function(_LoadMoreAfter value)? loadMoreAfter,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (newMessageArrived != null) {
      return newMessageArrived(this);
    }
    return orElse();
  }
}

abstract class _NewMessageArrived implements ChatEvent {
  const factory _NewMessageArrived(final MessageEntity message) =
      _$NewMessageArrivedImpl;

  MessageEntity get message;

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NewMessageArrivedImplCopyWith<_$NewMessageArrivedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadMoreBeforeImplCopyWith<$Res> {
  factory _$$LoadMoreBeforeImplCopyWith(_$LoadMoreBeforeImpl value,
          $Res Function(_$LoadMoreBeforeImpl) then) =
      __$$LoadMoreBeforeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String chatId, String schoolId, String? messageId});
}

/// @nodoc
class __$$LoadMoreBeforeImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$LoadMoreBeforeImpl>
    implements _$$LoadMoreBeforeImplCopyWith<$Res> {
  __$$LoadMoreBeforeImplCopyWithImpl(
      _$LoadMoreBeforeImpl _value, $Res Function(_$LoadMoreBeforeImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatId = null,
    Object? schoolId = null,
    Object? messageId = freezed,
  }) {
    return _then(_$LoadMoreBeforeImpl(
      null == chatId
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as String,
      null == schoolId
          ? _value.schoolId
          : schoolId // ignore: cast_nullable_to_non_nullable
              as String,
      messageId: freezed == messageId
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$LoadMoreBeforeImpl implements _LoadMoreBefore {
  const _$LoadMoreBeforeImpl(this.chatId, this.schoolId, {this.messageId});

  @override
  final String chatId;
  @override
  final String schoolId;
  @override
  final String? messageId;

  @override
  String toString() {
    return 'ChatEvent.loadMoreBefore(chatId: $chatId, schoolId: $schoolId, messageId: $messageId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadMoreBeforeImpl &&
            (identical(other.chatId, chatId) || other.chatId == chatId) &&
            (identical(other.schoolId, schoolId) ||
                other.schoolId == schoolId) &&
            (identical(other.messageId, messageId) ||
                other.messageId == messageId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, chatId, schoolId, messageId);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadMoreBeforeImplCopyWith<_$LoadMoreBeforeImpl> get copyWith =>
      __$$LoadMoreBeforeImplCopyWithImpl<_$LoadMoreBeforeImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(GetChatsRequest request) getChats,
    required TResult Function(GetMessagesRequest request) getMessages,
    required TResult Function(GetMessageRequest request) getMessage,
    required TResult Function(SendMessageRequest message) sendMessage,
    required TResult Function(ViewMessageRequest message) viewMessage,
    required TResult Function(MessageEntity message) newMessageArrived,
    required TResult Function(String chatId, String schoolId, String? messageId)
        loadMoreBefore,
    required TResult Function(String chatId, String schoolId, String? messageId)
        loadMoreAfter,
    required TResult Function(String message) error,
  }) {
    return loadMoreBefore(chatId, schoolId, messageId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(GetChatsRequest request)? getChats,
    TResult? Function(GetMessagesRequest request)? getMessages,
    TResult? Function(GetMessageRequest request)? getMessage,
    TResult? Function(SendMessageRequest message)? sendMessage,
    TResult? Function(ViewMessageRequest message)? viewMessage,
    TResult? Function(MessageEntity message)? newMessageArrived,
    TResult? Function(String chatId, String schoolId, String? messageId)?
        loadMoreBefore,
    TResult? Function(String chatId, String schoolId, String? messageId)?
        loadMoreAfter,
    TResult? Function(String message)? error,
  }) {
    return loadMoreBefore?.call(chatId, schoolId, messageId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(GetChatsRequest request)? getChats,
    TResult Function(GetMessagesRequest request)? getMessages,
    TResult Function(GetMessageRequest request)? getMessage,
    TResult Function(SendMessageRequest message)? sendMessage,
    TResult Function(ViewMessageRequest message)? viewMessage,
    TResult Function(MessageEntity message)? newMessageArrived,
    TResult Function(String chatId, String schoolId, String? messageId)?
        loadMoreBefore,
    TResult Function(String chatId, String schoolId, String? messageId)?
        loadMoreAfter,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loadMoreBefore != null) {
      return loadMoreBefore(chatId, schoolId, messageId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetChats value) getChats,
    required TResult Function(_GetMessages value) getMessages,
    required TResult Function(_GetMessage value) getMessage,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_ViewMessage value) viewMessage,
    required TResult Function(_NewMessageArrived value) newMessageArrived,
    required TResult Function(_LoadMoreBefore value) loadMoreBefore,
    required TResult Function(_LoadMoreAfter value) loadMoreAfter,
    required TResult Function(_Error value) error,
  }) {
    return loadMoreBefore(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetChats value)? getChats,
    TResult? Function(_GetMessages value)? getMessages,
    TResult? Function(_GetMessage value)? getMessage,
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_ViewMessage value)? viewMessage,
    TResult? Function(_NewMessageArrived value)? newMessageArrived,
    TResult? Function(_LoadMoreBefore value)? loadMoreBefore,
    TResult? Function(_LoadMoreAfter value)? loadMoreAfter,
    TResult? Function(_Error value)? error,
  }) {
    return loadMoreBefore?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetChats value)? getChats,
    TResult Function(_GetMessages value)? getMessages,
    TResult Function(_GetMessage value)? getMessage,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_ViewMessage value)? viewMessage,
    TResult Function(_NewMessageArrived value)? newMessageArrived,
    TResult Function(_LoadMoreBefore value)? loadMoreBefore,
    TResult Function(_LoadMoreAfter value)? loadMoreAfter,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loadMoreBefore != null) {
      return loadMoreBefore(this);
    }
    return orElse();
  }
}

abstract class _LoadMoreBefore implements ChatEvent {
  const factory _LoadMoreBefore(final String chatId, final String schoolId,
      {final String? messageId}) = _$LoadMoreBeforeImpl;

  String get chatId;
  String get schoolId;
  String? get messageId;

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadMoreBeforeImplCopyWith<_$LoadMoreBeforeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadMoreAfterImplCopyWith<$Res> {
  factory _$$LoadMoreAfterImplCopyWith(
          _$LoadMoreAfterImpl value, $Res Function(_$LoadMoreAfterImpl) then) =
      __$$LoadMoreAfterImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String chatId, String schoolId, String? messageId});
}

/// @nodoc
class __$$LoadMoreAfterImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$LoadMoreAfterImpl>
    implements _$$LoadMoreAfterImplCopyWith<$Res> {
  __$$LoadMoreAfterImplCopyWithImpl(
      _$LoadMoreAfterImpl _value, $Res Function(_$LoadMoreAfterImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatId = null,
    Object? schoolId = null,
    Object? messageId = freezed,
  }) {
    return _then(_$LoadMoreAfterImpl(
      null == chatId
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as String,
      null == schoolId
          ? _value.schoolId
          : schoolId // ignore: cast_nullable_to_non_nullable
              as String,
      messageId: freezed == messageId
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$LoadMoreAfterImpl implements _LoadMoreAfter {
  const _$LoadMoreAfterImpl(this.chatId, this.schoolId, {this.messageId});

  @override
  final String chatId;
  @override
  final String schoolId;
  @override
  final String? messageId;

  @override
  String toString() {
    return 'ChatEvent.loadMoreAfter(chatId: $chatId, schoolId: $schoolId, messageId: $messageId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadMoreAfterImpl &&
            (identical(other.chatId, chatId) || other.chatId == chatId) &&
            (identical(other.schoolId, schoolId) ||
                other.schoolId == schoolId) &&
            (identical(other.messageId, messageId) ||
                other.messageId == messageId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, chatId, schoolId, messageId);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadMoreAfterImplCopyWith<_$LoadMoreAfterImpl> get copyWith =>
      __$$LoadMoreAfterImplCopyWithImpl<_$LoadMoreAfterImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(GetChatsRequest request) getChats,
    required TResult Function(GetMessagesRequest request) getMessages,
    required TResult Function(GetMessageRequest request) getMessage,
    required TResult Function(SendMessageRequest message) sendMessage,
    required TResult Function(ViewMessageRequest message) viewMessage,
    required TResult Function(MessageEntity message) newMessageArrived,
    required TResult Function(String chatId, String schoolId, String? messageId)
        loadMoreBefore,
    required TResult Function(String chatId, String schoolId, String? messageId)
        loadMoreAfter,
    required TResult Function(String message) error,
  }) {
    return loadMoreAfter(chatId, schoolId, messageId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(GetChatsRequest request)? getChats,
    TResult? Function(GetMessagesRequest request)? getMessages,
    TResult? Function(GetMessageRequest request)? getMessage,
    TResult? Function(SendMessageRequest message)? sendMessage,
    TResult? Function(ViewMessageRequest message)? viewMessage,
    TResult? Function(MessageEntity message)? newMessageArrived,
    TResult? Function(String chatId, String schoolId, String? messageId)?
        loadMoreBefore,
    TResult? Function(String chatId, String schoolId, String? messageId)?
        loadMoreAfter,
    TResult? Function(String message)? error,
  }) {
    return loadMoreAfter?.call(chatId, schoolId, messageId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(GetChatsRequest request)? getChats,
    TResult Function(GetMessagesRequest request)? getMessages,
    TResult Function(GetMessageRequest request)? getMessage,
    TResult Function(SendMessageRequest message)? sendMessage,
    TResult Function(ViewMessageRequest message)? viewMessage,
    TResult Function(MessageEntity message)? newMessageArrived,
    TResult Function(String chatId, String schoolId, String? messageId)?
        loadMoreBefore,
    TResult Function(String chatId, String schoolId, String? messageId)?
        loadMoreAfter,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loadMoreAfter != null) {
      return loadMoreAfter(chatId, schoolId, messageId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetChats value) getChats,
    required TResult Function(_GetMessages value) getMessages,
    required TResult Function(_GetMessage value) getMessage,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_ViewMessage value) viewMessage,
    required TResult Function(_NewMessageArrived value) newMessageArrived,
    required TResult Function(_LoadMoreBefore value) loadMoreBefore,
    required TResult Function(_LoadMoreAfter value) loadMoreAfter,
    required TResult Function(_Error value) error,
  }) {
    return loadMoreAfter(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetChats value)? getChats,
    TResult? Function(_GetMessages value)? getMessages,
    TResult? Function(_GetMessage value)? getMessage,
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_ViewMessage value)? viewMessage,
    TResult? Function(_NewMessageArrived value)? newMessageArrived,
    TResult? Function(_LoadMoreBefore value)? loadMoreBefore,
    TResult? Function(_LoadMoreAfter value)? loadMoreAfter,
    TResult? Function(_Error value)? error,
  }) {
    return loadMoreAfter?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetChats value)? getChats,
    TResult Function(_GetMessages value)? getMessages,
    TResult Function(_GetMessage value)? getMessage,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_ViewMessage value)? viewMessage,
    TResult Function(_NewMessageArrived value)? newMessageArrived,
    TResult Function(_LoadMoreBefore value)? loadMoreBefore,
    TResult Function(_LoadMoreAfter value)? loadMoreAfter,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loadMoreAfter != null) {
      return loadMoreAfter(this);
    }
    return orElse();
  }
}

abstract class _LoadMoreAfter implements ChatEvent {
  const factory _LoadMoreAfter(final String chatId, final String schoolId,
      {final String? messageId}) = _$LoadMoreAfterImpl;

  String get chatId;
  String get schoolId;
  String? get messageId;

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadMoreAfterImplCopyWith<_$LoadMoreAfterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'ChatEvent.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(GetChatsRequest request) getChats,
    required TResult Function(GetMessagesRequest request) getMessages,
    required TResult Function(GetMessageRequest request) getMessage,
    required TResult Function(SendMessageRequest message) sendMessage,
    required TResult Function(ViewMessageRequest message) viewMessage,
    required TResult Function(MessageEntity message) newMessageArrived,
    required TResult Function(String chatId, String schoolId, String? messageId)
        loadMoreBefore,
    required TResult Function(String chatId, String schoolId, String? messageId)
        loadMoreAfter,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(GetChatsRequest request)? getChats,
    TResult? Function(GetMessagesRequest request)? getMessages,
    TResult? Function(GetMessageRequest request)? getMessage,
    TResult? Function(SendMessageRequest message)? sendMessage,
    TResult? Function(ViewMessageRequest message)? viewMessage,
    TResult? Function(MessageEntity message)? newMessageArrived,
    TResult? Function(String chatId, String schoolId, String? messageId)?
        loadMoreBefore,
    TResult? Function(String chatId, String schoolId, String? messageId)?
        loadMoreAfter,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(GetChatsRequest request)? getChats,
    TResult Function(GetMessagesRequest request)? getMessages,
    TResult Function(GetMessageRequest request)? getMessage,
    TResult Function(SendMessageRequest message)? sendMessage,
    TResult Function(ViewMessageRequest message)? viewMessage,
    TResult Function(MessageEntity message)? newMessageArrived,
    TResult Function(String chatId, String schoolId, String? messageId)?
        loadMoreBefore,
    TResult Function(String chatId, String schoolId, String? messageId)?
        loadMoreAfter,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetChats value) getChats,
    required TResult Function(_GetMessages value) getMessages,
    required TResult Function(_GetMessage value) getMessage,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_ViewMessage value) viewMessage,
    required TResult Function(_NewMessageArrived value) newMessageArrived,
    required TResult Function(_LoadMoreBefore value) loadMoreBefore,
    required TResult Function(_LoadMoreAfter value) loadMoreAfter,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetChats value)? getChats,
    TResult? Function(_GetMessages value)? getMessages,
    TResult? Function(_GetMessage value)? getMessage,
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_ViewMessage value)? viewMessage,
    TResult? Function(_NewMessageArrived value)? newMessageArrived,
    TResult? Function(_LoadMoreBefore value)? loadMoreBefore,
    TResult? Function(_LoadMoreAfter value)? loadMoreAfter,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetChats value)? getChats,
    TResult Function(_GetMessages value)? getMessages,
    TResult Function(_GetMessage value)? getMessage,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_ViewMessage value)? viewMessage,
    TResult Function(_NewMessageArrived value)? newMessageArrived,
    TResult Function(_LoadMoreBefore value)? loadMoreBefore,
    TResult Function(_LoadMoreAfter value)? loadMoreAfter,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements ChatEvent {
  const factory _Error(final String message) = _$ErrorImpl;

  String get message;

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ChatState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(ChatViewModel viewModel) loadingMore,
    required TResult Function(ChatViewModel viewModel) loaded,
    required TResult Function(String message) errorState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(ChatViewModel viewModel)? loadingMore,
    TResult? Function(ChatViewModel viewModel)? loaded,
    TResult? Function(String message)? errorState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(ChatViewModel viewModel)? loadingMore,
    TResult Function(ChatViewModel viewModel)? loaded,
    TResult Function(String message)? errorState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadingMore value) loadingMore,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_ErrorState value) errorState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadingMore value)? loadingMore,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_ErrorState value)? errorState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadingMore value)? loadingMore,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_ErrorState value)? errorState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatStateCopyWith<$Res> {
  factory $ChatStateCopyWith(ChatState value, $Res Function(ChatState) then) =
      _$ChatStateCopyWithImpl<$Res, ChatState>;
}

/// @nodoc
class _$ChatStateCopyWithImpl<$Res, $Val extends ChatState>
    implements $ChatStateCopyWith<$Res> {
  _$ChatStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'ChatState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(ChatViewModel viewModel) loadingMore,
    required TResult Function(ChatViewModel viewModel) loaded,
    required TResult Function(String message) errorState,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(ChatViewModel viewModel)? loadingMore,
    TResult? Function(ChatViewModel viewModel)? loaded,
    TResult? Function(String message)? errorState,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(ChatViewModel viewModel)? loadingMore,
    TResult Function(ChatViewModel viewModel)? loaded,
    TResult Function(String message)? errorState,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadingMore value) loadingMore,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_ErrorState value) errorState,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadingMore value)? loadingMore,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_ErrorState value)? errorState,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadingMore value)? loadingMore,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_ErrorState value)? errorState,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements ChatState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadingMoreImplCopyWith<$Res> {
  factory _$$LoadingMoreImplCopyWith(
          _$LoadingMoreImpl value, $Res Function(_$LoadingMoreImpl) then) =
      __$$LoadingMoreImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ChatViewModel viewModel});

  $ChatViewModelCopyWith<$Res> get viewModel;
}

/// @nodoc
class __$$LoadingMoreImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$LoadingMoreImpl>
    implements _$$LoadingMoreImplCopyWith<$Res> {
  __$$LoadingMoreImplCopyWithImpl(
      _$LoadingMoreImpl _value, $Res Function(_$LoadingMoreImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? viewModel = null,
  }) {
    return _then(_$LoadingMoreImpl(
      viewModel: null == viewModel
          ? _value.viewModel
          : viewModel // ignore: cast_nullable_to_non_nullable
              as ChatViewModel,
    ));
  }

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatViewModelCopyWith<$Res> get viewModel {
    return $ChatViewModelCopyWith<$Res>(_value.viewModel, (value) {
      return _then(_value.copyWith(viewModel: value));
    });
  }
}

/// @nodoc

class _$LoadingMoreImpl implements _LoadingMore {
  const _$LoadingMoreImpl({required this.viewModel});

  @override
  final ChatViewModel viewModel;

  @override
  String toString() {
    return 'ChatState.loadingMore(viewModel: $viewModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingMoreImpl &&
            (identical(other.viewModel, viewModel) ||
                other.viewModel == viewModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, viewModel);

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingMoreImplCopyWith<_$LoadingMoreImpl> get copyWith =>
      __$$LoadingMoreImplCopyWithImpl<_$LoadingMoreImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(ChatViewModel viewModel) loadingMore,
    required TResult Function(ChatViewModel viewModel) loaded,
    required TResult Function(String message) errorState,
  }) {
    return loadingMore(viewModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(ChatViewModel viewModel)? loadingMore,
    TResult? Function(ChatViewModel viewModel)? loaded,
    TResult? Function(String message)? errorState,
  }) {
    return loadingMore?.call(viewModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(ChatViewModel viewModel)? loadingMore,
    TResult Function(ChatViewModel viewModel)? loaded,
    TResult Function(String message)? errorState,
    required TResult orElse(),
  }) {
    if (loadingMore != null) {
      return loadingMore(viewModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadingMore value) loadingMore,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_ErrorState value) errorState,
  }) {
    return loadingMore(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadingMore value)? loadingMore,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_ErrorState value)? errorState,
  }) {
    return loadingMore?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadingMore value)? loadingMore,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_ErrorState value)? errorState,
    required TResult orElse(),
  }) {
    if (loadingMore != null) {
      return loadingMore(this);
    }
    return orElse();
  }
}

abstract class _LoadingMore implements ChatState {
  const factory _LoadingMore({required final ChatViewModel viewModel}) =
      _$LoadingMoreImpl;

  ChatViewModel get viewModel;

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadingMoreImplCopyWith<_$LoadingMoreImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ChatViewModel viewModel});

  $ChatViewModelCopyWith<$Res> get viewModel;
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? viewModel = null,
  }) {
    return _then(_$LoadedImpl(
      viewModel: null == viewModel
          ? _value.viewModel
          : viewModel // ignore: cast_nullable_to_non_nullable
              as ChatViewModel,
    ));
  }

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatViewModelCopyWith<$Res> get viewModel {
    return $ChatViewModelCopyWith<$Res>(_value.viewModel, (value) {
      return _then(_value.copyWith(viewModel: value));
    });
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl({required this.viewModel});

  @override
  final ChatViewModel viewModel;

  @override
  String toString() {
    return 'ChatState.loaded(viewModel: $viewModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            (identical(other.viewModel, viewModel) ||
                other.viewModel == viewModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, viewModel);

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(ChatViewModel viewModel) loadingMore,
    required TResult Function(ChatViewModel viewModel) loaded,
    required TResult Function(String message) errorState,
  }) {
    return loaded(viewModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(ChatViewModel viewModel)? loadingMore,
    TResult? Function(ChatViewModel viewModel)? loaded,
    TResult? Function(String message)? errorState,
  }) {
    return loaded?.call(viewModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(ChatViewModel viewModel)? loadingMore,
    TResult Function(ChatViewModel viewModel)? loaded,
    TResult Function(String message)? errorState,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(viewModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadingMore value) loadingMore,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_ErrorState value) errorState,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadingMore value)? loadingMore,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_ErrorState value)? errorState,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadingMore value)? loadingMore,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_ErrorState value)? errorState,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements ChatState {
  const factory _Loaded({required final ChatViewModel viewModel}) =
      _$LoadedImpl;

  ChatViewModel get viewModel;

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorStateImplCopyWith<$Res> {
  factory _$$ErrorStateImplCopyWith(
          _$ErrorStateImpl value, $Res Function(_$ErrorStateImpl) then) =
      __$$ErrorStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorStateImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$ErrorStateImpl>
    implements _$$ErrorStateImplCopyWith<$Res> {
  __$$ErrorStateImplCopyWithImpl(
      _$ErrorStateImpl _value, $Res Function(_$ErrorStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorStateImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorStateImpl implements _ErrorState {
  const _$ErrorStateImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'ChatState.errorState(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorStateImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorStateImplCopyWith<_$ErrorStateImpl> get copyWith =>
      __$$ErrorStateImplCopyWithImpl<_$ErrorStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(ChatViewModel viewModel) loadingMore,
    required TResult Function(ChatViewModel viewModel) loaded,
    required TResult Function(String message) errorState,
  }) {
    return errorState(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(ChatViewModel viewModel)? loadingMore,
    TResult? Function(ChatViewModel viewModel)? loaded,
    TResult? Function(String message)? errorState,
  }) {
    return errorState?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(ChatViewModel viewModel)? loadingMore,
    TResult Function(ChatViewModel viewModel)? loaded,
    TResult Function(String message)? errorState,
    required TResult orElse(),
  }) {
    if (errorState != null) {
      return errorState(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadingMore value) loadingMore,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_ErrorState value) errorState,
  }) {
    return errorState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadingMore value)? loadingMore,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_ErrorState value)? errorState,
  }) {
    return errorState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadingMore value)? loadingMore,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_ErrorState value)? errorState,
    required TResult orElse(),
  }) {
    if (errorState != null) {
      return errorState(this);
    }
    return orElse();
  }
}

abstract class _ErrorState implements ChatState {
  const factory _ErrorState(final String message) = _$ErrorStateImpl;

  String get message;

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorStateImplCopyWith<_$ErrorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ChatViewModel {
  List<ChatEntity>? get chats => throw _privateConstructorUsedError;
  List<MessageEntity>? get messages => throw _privateConstructorUsedError;
  bool get hasMoreBefore => throw _privateConstructorUsedError;
  bool get hasMoreAfter => throw _privateConstructorUsedError;
  MessageEntity? get repliedMessage => throw _privateConstructorUsedError;

  /// Create a copy of ChatViewModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatViewModelCopyWith<ChatViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatViewModelCopyWith<$Res> {
  factory $ChatViewModelCopyWith(
          ChatViewModel value, $Res Function(ChatViewModel) then) =
      _$ChatViewModelCopyWithImpl<$Res, ChatViewModel>;
  @useResult
  $Res call(
      {List<ChatEntity>? chats,
      List<MessageEntity>? messages,
      bool hasMoreBefore,
      bool hasMoreAfter,
      MessageEntity? repliedMessage});

  $MessageEntityCopyWith<$Res>? get repliedMessage;
}

/// @nodoc
class _$ChatViewModelCopyWithImpl<$Res, $Val extends ChatViewModel>
    implements $ChatViewModelCopyWith<$Res> {
  _$ChatViewModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatViewModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chats = freezed,
    Object? messages = freezed,
    Object? hasMoreBefore = null,
    Object? hasMoreAfter = null,
    Object? repliedMessage = freezed,
  }) {
    return _then(_value.copyWith(
      chats: freezed == chats
          ? _value.chats
          : chats // ignore: cast_nullable_to_non_nullable
              as List<ChatEntity>?,
      messages: freezed == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<MessageEntity>?,
      hasMoreBefore: null == hasMoreBefore
          ? _value.hasMoreBefore
          : hasMoreBefore // ignore: cast_nullable_to_non_nullable
              as bool,
      hasMoreAfter: null == hasMoreAfter
          ? _value.hasMoreAfter
          : hasMoreAfter // ignore: cast_nullable_to_non_nullable
              as bool,
      repliedMessage: freezed == repliedMessage
          ? _value.repliedMessage
          : repliedMessage // ignore: cast_nullable_to_non_nullable
              as MessageEntity?,
    ) as $Val);
  }

  /// Create a copy of ChatViewModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MessageEntityCopyWith<$Res>? get repliedMessage {
    if (_value.repliedMessage == null) {
      return null;
    }

    return $MessageEntityCopyWith<$Res>(_value.repliedMessage!, (value) {
      return _then(_value.copyWith(repliedMessage: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ChatViewModelImplCopyWith<$Res>
    implements $ChatViewModelCopyWith<$Res> {
  factory _$$ChatViewModelImplCopyWith(
          _$ChatViewModelImpl value, $Res Function(_$ChatViewModelImpl) then) =
      __$$ChatViewModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<ChatEntity>? chats,
      List<MessageEntity>? messages,
      bool hasMoreBefore,
      bool hasMoreAfter,
      MessageEntity? repliedMessage});

  @override
  $MessageEntityCopyWith<$Res>? get repliedMessage;
}

/// @nodoc
class __$$ChatViewModelImplCopyWithImpl<$Res>
    extends _$ChatViewModelCopyWithImpl<$Res, _$ChatViewModelImpl>
    implements _$$ChatViewModelImplCopyWith<$Res> {
  __$$ChatViewModelImplCopyWithImpl(
      _$ChatViewModelImpl _value, $Res Function(_$ChatViewModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatViewModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chats = freezed,
    Object? messages = freezed,
    Object? hasMoreBefore = null,
    Object? hasMoreAfter = null,
    Object? repliedMessage = freezed,
  }) {
    return _then(_$ChatViewModelImpl(
      chats: freezed == chats
          ? _value._chats
          : chats // ignore: cast_nullable_to_non_nullable
              as List<ChatEntity>?,
      messages: freezed == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<MessageEntity>?,
      hasMoreBefore: null == hasMoreBefore
          ? _value.hasMoreBefore
          : hasMoreBefore // ignore: cast_nullable_to_non_nullable
              as bool,
      hasMoreAfter: null == hasMoreAfter
          ? _value.hasMoreAfter
          : hasMoreAfter // ignore: cast_nullable_to_non_nullable
              as bool,
      repliedMessage: freezed == repliedMessage
          ? _value.repliedMessage
          : repliedMessage // ignore: cast_nullable_to_non_nullable
              as MessageEntity?,
    ));
  }
}

/// @nodoc

class _$ChatViewModelImpl implements _ChatViewModel {
  const _$ChatViewModelImpl(
      {final List<ChatEntity>? chats = const [],
      final List<MessageEntity>? messages = const [],
      this.hasMoreBefore = false,
      this.hasMoreAfter = false,
      this.repliedMessage = null})
      : _chats = chats,
        _messages = messages;

  final List<ChatEntity>? _chats;
  @override
  @JsonKey()
  List<ChatEntity>? get chats {
    final value = _chats;
    if (value == null) return null;
    if (_chats is EqualUnmodifiableListView) return _chats;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<MessageEntity>? _messages;
  @override
  @JsonKey()
  List<MessageEntity>? get messages {
    final value = _messages;
    if (value == null) return null;
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final bool hasMoreBefore;
  @override
  @JsonKey()
  final bool hasMoreAfter;
  @override
  @JsonKey()
  final MessageEntity? repliedMessage;

  @override
  String toString() {
    return 'ChatViewModel(chats: $chats, messages: $messages, hasMoreBefore: $hasMoreBefore, hasMoreAfter: $hasMoreAfter, repliedMessage: $repliedMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatViewModelImpl &&
            const DeepCollectionEquality().equals(other._chats, _chats) &&
            const DeepCollectionEquality().equals(other._messages, _messages) &&
            (identical(other.hasMoreBefore, hasMoreBefore) ||
                other.hasMoreBefore == hasMoreBefore) &&
            (identical(other.hasMoreAfter, hasMoreAfter) ||
                other.hasMoreAfter == hasMoreAfter) &&
            (identical(other.repliedMessage, repliedMessage) ||
                other.repliedMessage == repliedMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_chats),
      const DeepCollectionEquality().hash(_messages),
      hasMoreBefore,
      hasMoreAfter,
      repliedMessage);

  /// Create a copy of ChatViewModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatViewModelImplCopyWith<_$ChatViewModelImpl> get copyWith =>
      __$$ChatViewModelImplCopyWithImpl<_$ChatViewModelImpl>(this, _$identity);
}

abstract class _ChatViewModel implements ChatViewModel {
  const factory _ChatViewModel(
      {final List<ChatEntity>? chats,
      final List<MessageEntity>? messages,
      final bool hasMoreBefore,
      final bool hasMoreAfter,
      final MessageEntity? repliedMessage}) = _$ChatViewModelImpl;

  @override
  List<ChatEntity>? get chats;
  @override
  List<MessageEntity>? get messages;
  @override
  bool get hasMoreBefore;
  @override
  bool get hasMoreAfter;
  @override
  MessageEntity? get repliedMessage;

  /// Create a copy of ChatViewModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatViewModelImplCopyWith<_$ChatViewModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
