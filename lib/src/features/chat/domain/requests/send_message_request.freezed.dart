// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'send_message_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SendMessageRequest _$SendMessageRequestFromJson(Map<String, dynamic> json) {
  return _SendMessageRequest.fromJson(json);
}

/// @nodoc
mixin _$SendMessageRequest {
  String get text => throw _privateConstructorUsedError;
  String? get chatId => throw _privateConstructorUsedError;
  String? get forwardedMessageId => throw _privateConstructorUsedError;
  String? get repliedMessageId => throw _privateConstructorUsedError;
  ChatMemberEntity? get author => throw _privateConstructorUsedError;
  String? get messageId => throw _privateConstructorUsedError;
  DateTime? get createdDate => throw _privateConstructorUsedError;
  bool get isViewed => throw _privateConstructorUsedError;
  List<AttachmentEntity>? get attachments => throw _privateConstructorUsedError;

  /// Serializes this SendMessageRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SendMessageRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SendMessageRequestCopyWith<SendMessageRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendMessageRequestCopyWith<$Res> {
  factory $SendMessageRequestCopyWith(
          SendMessageRequest value, $Res Function(SendMessageRequest) then) =
      _$SendMessageRequestCopyWithImpl<$Res, SendMessageRequest>;
  @useResult
  $Res call(
      {String text,
      String? chatId,
      String? forwardedMessageId,
      String? repliedMessageId,
      ChatMemberEntity? author,
      String? messageId,
      DateTime? createdDate,
      bool isViewed,
      List<AttachmentEntity>? attachments});

  $ChatMemberEntityCopyWith<$Res>? get author;
}

/// @nodoc
class _$SendMessageRequestCopyWithImpl<$Res, $Val extends SendMessageRequest>
    implements $SendMessageRequestCopyWith<$Res> {
  _$SendMessageRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SendMessageRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? chatId = freezed,
    Object? forwardedMessageId = freezed,
    Object? repliedMessageId = freezed,
    Object? author = freezed,
    Object? messageId = freezed,
    Object? createdDate = freezed,
    Object? isViewed = null,
    Object? attachments = freezed,
  }) {
    return _then(_value.copyWith(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      chatId: freezed == chatId
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as String?,
      forwardedMessageId: freezed == forwardedMessageId
          ? _value.forwardedMessageId
          : forwardedMessageId // ignore: cast_nullable_to_non_nullable
              as String?,
      repliedMessageId: freezed == repliedMessageId
          ? _value.repliedMessageId
          : repliedMessageId // ignore: cast_nullable_to_non_nullable
              as String?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as ChatMemberEntity?,
      messageId: freezed == messageId
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as String?,
      createdDate: freezed == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isViewed: null == isViewed
          ? _value.isViewed
          : isViewed // ignore: cast_nullable_to_non_nullable
              as bool,
      attachments: freezed == attachments
          ? _value.attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as List<AttachmentEntity>?,
    ) as $Val);
  }

  /// Create a copy of SendMessageRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatMemberEntityCopyWith<$Res>? get author {
    if (_value.author == null) {
      return null;
    }

    return $ChatMemberEntityCopyWith<$Res>(_value.author!, (value) {
      return _then(_value.copyWith(author: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SendMessageRequestImplCopyWith<$Res>
    implements $SendMessageRequestCopyWith<$Res> {
  factory _$$SendMessageRequestImplCopyWith(_$SendMessageRequestImpl value,
          $Res Function(_$SendMessageRequestImpl) then) =
      __$$SendMessageRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String text,
      String? chatId,
      String? forwardedMessageId,
      String? repliedMessageId,
      ChatMemberEntity? author,
      String? messageId,
      DateTime? createdDate,
      bool isViewed,
      List<AttachmentEntity>? attachments});

  @override
  $ChatMemberEntityCopyWith<$Res>? get author;
}

/// @nodoc
class __$$SendMessageRequestImplCopyWithImpl<$Res>
    extends _$SendMessageRequestCopyWithImpl<$Res, _$SendMessageRequestImpl>
    implements _$$SendMessageRequestImplCopyWith<$Res> {
  __$$SendMessageRequestImplCopyWithImpl(_$SendMessageRequestImpl _value,
      $Res Function(_$SendMessageRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of SendMessageRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? chatId = freezed,
    Object? forwardedMessageId = freezed,
    Object? repliedMessageId = freezed,
    Object? author = freezed,
    Object? messageId = freezed,
    Object? createdDate = freezed,
    Object? isViewed = null,
    Object? attachments = freezed,
  }) {
    return _then(_$SendMessageRequestImpl(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      chatId: freezed == chatId
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as String?,
      forwardedMessageId: freezed == forwardedMessageId
          ? _value.forwardedMessageId
          : forwardedMessageId // ignore: cast_nullable_to_non_nullable
              as String?,
      repliedMessageId: freezed == repliedMessageId
          ? _value.repliedMessageId
          : repliedMessageId // ignore: cast_nullable_to_non_nullable
              as String?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as ChatMemberEntity?,
      messageId: freezed == messageId
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as String?,
      createdDate: freezed == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isViewed: null == isViewed
          ? _value.isViewed
          : isViewed // ignore: cast_nullable_to_non_nullable
              as bool,
      attachments: freezed == attachments
          ? _value._attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as List<AttachmentEntity>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SendMessageRequestImpl implements _SendMessageRequest {
  const _$SendMessageRequestImpl(
      {required this.text,
      this.chatId,
      this.forwardedMessageId,
      this.repliedMessageId,
      this.author,
      this.messageId,
      this.createdDate,
      this.isViewed = false,
      final List<AttachmentEntity>? attachments})
      : _attachments = attachments;

  factory _$SendMessageRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$SendMessageRequestImplFromJson(json);

  @override
  final String text;
  @override
  final String? chatId;
  @override
  final String? forwardedMessageId;
  @override
  final String? repliedMessageId;
  @override
  final ChatMemberEntity? author;
  @override
  final String? messageId;
  @override
  final DateTime? createdDate;
  @override
  @JsonKey()
  final bool isViewed;
  final List<AttachmentEntity>? _attachments;
  @override
  List<AttachmentEntity>? get attachments {
    final value = _attachments;
    if (value == null) return null;
    if (_attachments is EqualUnmodifiableListView) return _attachments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SendMessageRequest(text: $text, chatId: $chatId, forwardedMessageId: $forwardedMessageId, repliedMessageId: $repliedMessageId, author: $author, messageId: $messageId, createdDate: $createdDate, isViewed: $isViewed, attachments: $attachments)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendMessageRequestImpl &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.chatId, chatId) || other.chatId == chatId) &&
            (identical(other.forwardedMessageId, forwardedMessageId) ||
                other.forwardedMessageId == forwardedMessageId) &&
            (identical(other.repliedMessageId, repliedMessageId) ||
                other.repliedMessageId == repliedMessageId) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.messageId, messageId) ||
                other.messageId == messageId) &&
            (identical(other.createdDate, createdDate) ||
                other.createdDate == createdDate) &&
            (identical(other.isViewed, isViewed) ||
                other.isViewed == isViewed) &&
            const DeepCollectionEquality()
                .equals(other._attachments, _attachments));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      text,
      chatId,
      forwardedMessageId,
      repliedMessageId,
      author,
      messageId,
      createdDate,
      isViewed,
      const DeepCollectionEquality().hash(_attachments));

  /// Create a copy of SendMessageRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SendMessageRequestImplCopyWith<_$SendMessageRequestImpl> get copyWith =>
      __$$SendMessageRequestImplCopyWithImpl<_$SendMessageRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SendMessageRequestImplToJson(
      this,
    );
  }
}

abstract class _SendMessageRequest implements SendMessageRequest {
  const factory _SendMessageRequest(
      {required final String text,
      final String? chatId,
      final String? forwardedMessageId,
      final String? repliedMessageId,
      final ChatMemberEntity? author,
      final String? messageId,
      final DateTime? createdDate,
      final bool isViewed,
      final List<AttachmentEntity>? attachments}) = _$SendMessageRequestImpl;

  factory _SendMessageRequest.fromJson(Map<String, dynamic> json) =
      _$SendMessageRequestImpl.fromJson;

  @override
  String get text;
  @override
  String? get chatId;
  @override
  String? get forwardedMessageId;
  @override
  String? get repliedMessageId;
  @override
  ChatMemberEntity? get author;
  @override
  String? get messageId;
  @override
  DateTime? get createdDate;
  @override
  bool get isViewed;
  @override
  List<AttachmentEntity>? get attachments;

  /// Create a copy of SendMessageRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SendMessageRequestImplCopyWith<_$SendMessageRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
