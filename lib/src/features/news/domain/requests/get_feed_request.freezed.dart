// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_feed_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetFeedRequest _$GetFeedRequestFromJson(Map<String, dynamic> json) {
  return _GetFeedRequest.fromJson(json);
}

/// @nodoc
mixin _$GetFeedRequest {
  String get feedId => throw _privateConstructorUsedError;

  /// Serializes this GetFeedRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetFeedRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetFeedRequestCopyWith<GetFeedRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetFeedRequestCopyWith<$Res> {
  factory $GetFeedRequestCopyWith(
          GetFeedRequest value, $Res Function(GetFeedRequest) then) =
      _$GetFeedRequestCopyWithImpl<$Res, GetFeedRequest>;
  @useResult
  $Res call({String feedId});
}

/// @nodoc
class _$GetFeedRequestCopyWithImpl<$Res, $Val extends GetFeedRequest>
    implements $GetFeedRequestCopyWith<$Res> {
  _$GetFeedRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetFeedRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? feedId = null,
  }) {
    return _then(_value.copyWith(
      feedId: null == feedId
          ? _value.feedId
          : feedId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetFeedRequestImplCopyWith<$Res>
    implements $GetFeedRequestCopyWith<$Res> {
  factory _$$GetFeedRequestImplCopyWith(_$GetFeedRequestImpl value,
          $Res Function(_$GetFeedRequestImpl) then) =
      __$$GetFeedRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String feedId});
}

/// @nodoc
class __$$GetFeedRequestImplCopyWithImpl<$Res>
    extends _$GetFeedRequestCopyWithImpl<$Res, _$GetFeedRequestImpl>
    implements _$$GetFeedRequestImplCopyWith<$Res> {
  __$$GetFeedRequestImplCopyWithImpl(
      _$GetFeedRequestImpl _value, $Res Function(_$GetFeedRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetFeedRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? feedId = null,
  }) {
    return _then(_$GetFeedRequestImpl(
      feedId: null == feedId
          ? _value.feedId
          : feedId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetFeedRequestImpl implements _GetFeedRequest {
  const _$GetFeedRequestImpl({required this.feedId});

  factory _$GetFeedRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetFeedRequestImplFromJson(json);

  @override
  final String feedId;

  @override
  String toString() {
    return 'GetFeedRequest(feedId: $feedId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetFeedRequestImpl &&
            (identical(other.feedId, feedId) || other.feedId == feedId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, feedId);

  /// Create a copy of GetFeedRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetFeedRequestImplCopyWith<_$GetFeedRequestImpl> get copyWith =>
      __$$GetFeedRequestImplCopyWithImpl<_$GetFeedRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetFeedRequestImplToJson(
      this,
    );
  }
}

abstract class _GetFeedRequest implements GetFeedRequest {
  const factory _GetFeedRequest({required final String feedId}) =
      _$GetFeedRequestImpl;

  factory _GetFeedRequest.fromJson(Map<String, dynamic> json) =
      _$GetFeedRequestImpl.fromJson;

  @override
  String get feedId;

  /// Create a copy of GetFeedRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetFeedRequestImplCopyWith<_$GetFeedRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
