// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_feeds_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetFeedsRequest _$GetFeedsRequestFromJson(Map<String, dynamic> json) {
  return _GetFeedsRequest.fromJson(json);
}

/// @nodoc
mixin _$GetFeedsRequest {
  int get limit => throw _privateConstructorUsedError;
  int get offset => throw _privateConstructorUsedError;

  /// Serializes this GetFeedsRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetFeedsRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetFeedsRequestCopyWith<GetFeedsRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetFeedsRequestCopyWith<$Res> {
  factory $GetFeedsRequestCopyWith(
          GetFeedsRequest value, $Res Function(GetFeedsRequest) then) =
      _$GetFeedsRequestCopyWithImpl<$Res, GetFeedsRequest>;
  @useResult
  $Res call({int limit, int offset});
}

/// @nodoc
class _$GetFeedsRequestCopyWithImpl<$Res, $Val extends GetFeedsRequest>
    implements $GetFeedsRequestCopyWith<$Res> {
  _$GetFeedsRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetFeedsRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? limit = null,
    Object? offset = null,
  }) {
    return _then(_value.copyWith(
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetFeedsRequestImplCopyWith<$Res>
    implements $GetFeedsRequestCopyWith<$Res> {
  factory _$$GetFeedsRequestImplCopyWith(_$GetFeedsRequestImpl value,
          $Res Function(_$GetFeedsRequestImpl) then) =
      __$$GetFeedsRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int limit, int offset});
}

/// @nodoc
class __$$GetFeedsRequestImplCopyWithImpl<$Res>
    extends _$GetFeedsRequestCopyWithImpl<$Res, _$GetFeedsRequestImpl>
    implements _$$GetFeedsRequestImplCopyWith<$Res> {
  __$$GetFeedsRequestImplCopyWithImpl(
      _$GetFeedsRequestImpl _value, $Res Function(_$GetFeedsRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetFeedsRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? limit = null,
    Object? offset = null,
  }) {
    return _then(_$GetFeedsRequestImpl(
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetFeedsRequestImpl implements _GetFeedsRequest {
  const _$GetFeedsRequestImpl({required this.limit, required this.offset});

  factory _$GetFeedsRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetFeedsRequestImplFromJson(json);

  @override
  final int limit;
  @override
  final int offset;

  @override
  String toString() {
    return 'GetFeedsRequest(limit: $limit, offset: $offset)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetFeedsRequestImpl &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.offset, offset) || other.offset == offset));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, limit, offset);

  /// Create a copy of GetFeedsRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetFeedsRequestImplCopyWith<_$GetFeedsRequestImpl> get copyWith =>
      __$$GetFeedsRequestImplCopyWithImpl<_$GetFeedsRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetFeedsRequestImplToJson(
      this,
    );
  }
}

abstract class _GetFeedsRequest implements GetFeedsRequest {
  const factory _GetFeedsRequest(
      {required final int limit,
      required final int offset}) = _$GetFeedsRequestImpl;

  factory _GetFeedsRequest.fromJson(Map<String, dynamic> json) =
      _$GetFeedsRequestImpl.fromJson;

  @override
  int get limit;
  @override
  int get offset;

  /// Create a copy of GetFeedsRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetFeedsRequestImplCopyWith<_$GetFeedsRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
