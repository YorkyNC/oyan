// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'csrf_token_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CsrfTokenResponse _$CsrfTokenResponseFromJson(Map<String, dynamic> json) {
  return _CsrfTokenResponse.fromJson(json);
}

/// @nodoc
mixin _$CsrfTokenResponse {
  String get csrfToken => throw _privateConstructorUsedError;

  /// Serializes this CsrfTokenResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CsrfTokenResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CsrfTokenResponseCopyWith<CsrfTokenResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CsrfTokenResponseCopyWith<$Res> {
  factory $CsrfTokenResponseCopyWith(
          CsrfTokenResponse value, $Res Function(CsrfTokenResponse) then) =
      _$CsrfTokenResponseCopyWithImpl<$Res, CsrfTokenResponse>;
  @useResult
  $Res call({String csrfToken});
}

/// @nodoc
class _$CsrfTokenResponseCopyWithImpl<$Res, $Val extends CsrfTokenResponse>
    implements $CsrfTokenResponseCopyWith<$Res> {
  _$CsrfTokenResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CsrfTokenResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? csrfToken = null,
  }) {
    return _then(_value.copyWith(
      csrfToken: null == csrfToken
          ? _value.csrfToken
          : csrfToken // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CsrfTokenResponseImplCopyWith<$Res>
    implements $CsrfTokenResponseCopyWith<$Res> {
  factory _$$CsrfTokenResponseImplCopyWith(_$CsrfTokenResponseImpl value,
          $Res Function(_$CsrfTokenResponseImpl) then) =
      __$$CsrfTokenResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String csrfToken});
}

/// @nodoc
class __$$CsrfTokenResponseImplCopyWithImpl<$Res>
    extends _$CsrfTokenResponseCopyWithImpl<$Res, _$CsrfTokenResponseImpl>
    implements _$$CsrfTokenResponseImplCopyWith<$Res> {
  __$$CsrfTokenResponseImplCopyWithImpl(_$CsrfTokenResponseImpl _value,
      $Res Function(_$CsrfTokenResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of CsrfTokenResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? csrfToken = null,
  }) {
    return _then(_$CsrfTokenResponseImpl(
      csrfToken: null == csrfToken
          ? _value.csrfToken
          : csrfToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CsrfTokenResponseImpl implements _CsrfTokenResponse {
  const _$CsrfTokenResponseImpl({required this.csrfToken});

  factory _$CsrfTokenResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CsrfTokenResponseImplFromJson(json);

  @override
  final String csrfToken;

  @override
  String toString() {
    return 'CsrfTokenResponse(csrfToken: $csrfToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CsrfTokenResponseImpl &&
            (identical(other.csrfToken, csrfToken) ||
                other.csrfToken == csrfToken));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, csrfToken);

  /// Create a copy of CsrfTokenResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CsrfTokenResponseImplCopyWith<_$CsrfTokenResponseImpl> get copyWith =>
      __$$CsrfTokenResponseImplCopyWithImpl<_$CsrfTokenResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CsrfTokenResponseImplToJson(
      this,
    );
  }
}

abstract class _CsrfTokenResponse implements CsrfTokenResponse {
  const factory _CsrfTokenResponse({required final String csrfToken}) =
      _$CsrfTokenResponseImpl;

  factory _CsrfTokenResponse.fromJson(Map<String, dynamic> json) =
      _$CsrfTokenResponseImpl.fromJson;

  @override
  String get csrfToken;

  /// Create a copy of CsrfTokenResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CsrfTokenResponseImplCopyWith<_$CsrfTokenResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
