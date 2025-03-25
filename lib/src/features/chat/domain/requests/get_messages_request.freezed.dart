// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_messages_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetMessagesRequest _$GetMessagesRequestFromJson(Map<String, dynamic> json) {
  return _GetMessagesRequest.fromJson(json);
}

/// @nodoc
mixin _$GetMessagesRequest {
  String get schoolId => throw _privateConstructorUsedError;
  String get chatId => throw _privateConstructorUsedError;
  String? get messageId => throw _privateConstructorUsedError;
  int? get before => throw _privateConstructorUsedError;
  int? get after => throw _privateConstructorUsedError;

  /// Serializes this GetMessagesRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetMessagesRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetMessagesRequestCopyWith<GetMessagesRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetMessagesRequestCopyWith<$Res> {
  factory $GetMessagesRequestCopyWith(
          GetMessagesRequest value, $Res Function(GetMessagesRequest) then) =
      _$GetMessagesRequestCopyWithImpl<$Res, GetMessagesRequest>;
  @useResult
  $Res call(
      {String schoolId,
      String chatId,
      String? messageId,
      int? before,
      int? after});
}

/// @nodoc
class _$GetMessagesRequestCopyWithImpl<$Res, $Val extends GetMessagesRequest>
    implements $GetMessagesRequestCopyWith<$Res> {
  _$GetMessagesRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetMessagesRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? schoolId = null,
    Object? chatId = null,
    Object? messageId = freezed,
    Object? before = freezed,
    Object? after = freezed,
  }) {
    return _then(_value.copyWith(
      schoolId: null == schoolId
          ? _value.schoolId
          : schoolId // ignore: cast_nullable_to_non_nullable
              as String,
      chatId: null == chatId
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as String,
      messageId: freezed == messageId
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as String?,
      before: freezed == before
          ? _value.before
          : before // ignore: cast_nullable_to_non_nullable
              as int?,
      after: freezed == after
          ? _value.after
          : after // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetMessagesRequestImplCopyWith<$Res>
    implements $GetMessagesRequestCopyWith<$Res> {
  factory _$$GetMessagesRequestImplCopyWith(_$GetMessagesRequestImpl value,
          $Res Function(_$GetMessagesRequestImpl) then) =
      __$$GetMessagesRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String schoolId,
      String chatId,
      String? messageId,
      int? before,
      int? after});
}

/// @nodoc
class __$$GetMessagesRequestImplCopyWithImpl<$Res>
    extends _$GetMessagesRequestCopyWithImpl<$Res, _$GetMessagesRequestImpl>
    implements _$$GetMessagesRequestImplCopyWith<$Res> {
  __$$GetMessagesRequestImplCopyWithImpl(_$GetMessagesRequestImpl _value,
      $Res Function(_$GetMessagesRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetMessagesRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? schoolId = null,
    Object? chatId = null,
    Object? messageId = freezed,
    Object? before = freezed,
    Object? after = freezed,
  }) {
    return _then(_$GetMessagesRequestImpl(
      schoolId: null == schoolId
          ? _value.schoolId
          : schoolId // ignore: cast_nullable_to_non_nullable
              as String,
      chatId: null == chatId
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as String,
      messageId: freezed == messageId
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as String?,
      before: freezed == before
          ? _value.before
          : before // ignore: cast_nullable_to_non_nullable
              as int?,
      after: freezed == after
          ? _value.after
          : after // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetMessagesRequestImpl implements _GetMessagesRequest {
  const _$GetMessagesRequestImpl(
      {required this.schoolId,
      required this.chatId,
      this.messageId,
      this.before,
      this.after});

  factory _$GetMessagesRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetMessagesRequestImplFromJson(json);

  @override
  final String schoolId;
  @override
  final String chatId;
  @override
  final String? messageId;
  @override
  final int? before;
  @override
  final int? after;

  @override
  String toString() {
    return 'GetMessagesRequest(schoolId: $schoolId, chatId: $chatId, messageId: $messageId, before: $before, after: $after)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetMessagesRequestImpl &&
            (identical(other.schoolId, schoolId) ||
                other.schoolId == schoolId) &&
            (identical(other.chatId, chatId) || other.chatId == chatId) &&
            (identical(other.messageId, messageId) ||
                other.messageId == messageId) &&
            (identical(other.before, before) || other.before == before) &&
            (identical(other.after, after) || other.after == after));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, schoolId, chatId, messageId, before, after);

  /// Create a copy of GetMessagesRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetMessagesRequestImplCopyWith<_$GetMessagesRequestImpl> get copyWith =>
      __$$GetMessagesRequestImplCopyWithImpl<_$GetMessagesRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetMessagesRequestImplToJson(
      this,
    );
  }
}

abstract class _GetMessagesRequest implements GetMessagesRequest {
  const factory _GetMessagesRequest(
      {required final String schoolId,
      required final String chatId,
      final String? messageId,
      final int? before,
      final int? after}) = _$GetMessagesRequestImpl;

  factory _GetMessagesRequest.fromJson(Map<String, dynamic> json) =
      _$GetMessagesRequestImpl.fromJson;

  @override
  String get schoolId;
  @override
  String get chatId;
  @override
  String? get messageId;
  @override
  int? get before;
  @override
  int? get after;

  /// Create a copy of GetMessagesRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetMessagesRequestImplCopyWith<_$GetMessagesRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
