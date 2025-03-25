// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'view_message_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ViewMessageRequest _$ViewMessageRequestFromJson(Map<String, dynamic> json) {
  return _ViewMessageRequest.fromJson(json);
}

/// @nodoc
mixin _$ViewMessageRequest {
  String get messageId => throw _privateConstructorUsedError;

  /// Serializes this ViewMessageRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ViewMessageRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ViewMessageRequestCopyWith<ViewMessageRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ViewMessageRequestCopyWith<$Res> {
  factory $ViewMessageRequestCopyWith(
          ViewMessageRequest value, $Res Function(ViewMessageRequest) then) =
      _$ViewMessageRequestCopyWithImpl<$Res, ViewMessageRequest>;
  @useResult
  $Res call({String messageId});
}

/// @nodoc
class _$ViewMessageRequestCopyWithImpl<$Res, $Val extends ViewMessageRequest>
    implements $ViewMessageRequestCopyWith<$Res> {
  _$ViewMessageRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ViewMessageRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messageId = null,
  }) {
    return _then(_value.copyWith(
      messageId: null == messageId
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ViewMessageRequestImplCopyWith<$Res>
    implements $ViewMessageRequestCopyWith<$Res> {
  factory _$$ViewMessageRequestImplCopyWith(_$ViewMessageRequestImpl value,
          $Res Function(_$ViewMessageRequestImpl) then) =
      __$$ViewMessageRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String messageId});
}

/// @nodoc
class __$$ViewMessageRequestImplCopyWithImpl<$Res>
    extends _$ViewMessageRequestCopyWithImpl<$Res, _$ViewMessageRequestImpl>
    implements _$$ViewMessageRequestImplCopyWith<$Res> {
  __$$ViewMessageRequestImplCopyWithImpl(_$ViewMessageRequestImpl _value,
      $Res Function(_$ViewMessageRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of ViewMessageRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messageId = null,
  }) {
    return _then(_$ViewMessageRequestImpl(
      messageId: null == messageId
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ViewMessageRequestImpl implements _ViewMessageRequest {
  const _$ViewMessageRequestImpl({required this.messageId});

  factory _$ViewMessageRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$ViewMessageRequestImplFromJson(json);

  @override
  final String messageId;

  @override
  String toString() {
    return 'ViewMessageRequest(messageId: $messageId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ViewMessageRequestImpl &&
            (identical(other.messageId, messageId) ||
                other.messageId == messageId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, messageId);

  /// Create a copy of ViewMessageRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ViewMessageRequestImplCopyWith<_$ViewMessageRequestImpl> get copyWith =>
      __$$ViewMessageRequestImplCopyWithImpl<_$ViewMessageRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ViewMessageRequestImplToJson(
      this,
    );
  }
}

abstract class _ViewMessageRequest implements ViewMessageRequest {
  const factory _ViewMessageRequest({required final String messageId}) =
      _$ViewMessageRequestImpl;

  factory _ViewMessageRequest.fromJson(Map<String, dynamic> json) =
      _$ViewMessageRequestImpl.fromJson;

  @override
  String get messageId;

  /// Create a copy of ViewMessageRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ViewMessageRequestImplCopyWith<_$ViewMessageRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
