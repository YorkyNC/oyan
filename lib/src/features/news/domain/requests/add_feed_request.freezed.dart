// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_feed_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AddFeedRequest _$AddFeedRequestFromJson(Map<String, dynamic> json) {
  return _AddFeedRequest.fromJson(json);
}

/// @nodoc
mixin _$AddFeedRequest {
  String get feedType => throw _privateConstructorUsedError;
  String get referenceId => throw _privateConstructorUsedError;

  /// Serializes this AddFeedRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AddFeedRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddFeedRequestCopyWith<AddFeedRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddFeedRequestCopyWith<$Res> {
  factory $AddFeedRequestCopyWith(
          AddFeedRequest value, $Res Function(AddFeedRequest) then) =
      _$AddFeedRequestCopyWithImpl<$Res, AddFeedRequest>;
  @useResult
  $Res call({String feedType, String referenceId});
}

/// @nodoc
class _$AddFeedRequestCopyWithImpl<$Res, $Val extends AddFeedRequest>
    implements $AddFeedRequestCopyWith<$Res> {
  _$AddFeedRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddFeedRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? feedType = null,
    Object? referenceId = null,
  }) {
    return _then(_value.copyWith(
      feedType: null == feedType
          ? _value.feedType
          : feedType // ignore: cast_nullable_to_non_nullable
              as String,
      referenceId: null == referenceId
          ? _value.referenceId
          : referenceId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddFeedRequestImplCopyWith<$Res>
    implements $AddFeedRequestCopyWith<$Res> {
  factory _$$AddFeedRequestImplCopyWith(_$AddFeedRequestImpl value,
          $Res Function(_$AddFeedRequestImpl) then) =
      __$$AddFeedRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String feedType, String referenceId});
}

/// @nodoc
class __$$AddFeedRequestImplCopyWithImpl<$Res>
    extends _$AddFeedRequestCopyWithImpl<$Res, _$AddFeedRequestImpl>
    implements _$$AddFeedRequestImplCopyWith<$Res> {
  __$$AddFeedRequestImplCopyWithImpl(
      _$AddFeedRequestImpl _value, $Res Function(_$AddFeedRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddFeedRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? feedType = null,
    Object? referenceId = null,
  }) {
    return _then(_$AddFeedRequestImpl(
      feedType: null == feedType
          ? _value.feedType
          : feedType // ignore: cast_nullable_to_non_nullable
              as String,
      referenceId: null == referenceId
          ? _value.referenceId
          : referenceId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddFeedRequestImpl implements _AddFeedRequest {
  const _$AddFeedRequestImpl(
      {required this.feedType, required this.referenceId});

  factory _$AddFeedRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddFeedRequestImplFromJson(json);

  @override
  final String feedType;
  @override
  final String referenceId;

  @override
  String toString() {
    return 'AddFeedRequest(feedType: $feedType, referenceId: $referenceId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddFeedRequestImpl &&
            (identical(other.feedType, feedType) ||
                other.feedType == feedType) &&
            (identical(other.referenceId, referenceId) ||
                other.referenceId == referenceId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, feedType, referenceId);

  /// Create a copy of AddFeedRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddFeedRequestImplCopyWith<_$AddFeedRequestImpl> get copyWith =>
      __$$AddFeedRequestImplCopyWithImpl<_$AddFeedRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddFeedRequestImplToJson(
      this,
    );
  }
}

abstract class _AddFeedRequest implements AddFeedRequest {
  const factory _AddFeedRequest(
      {required final String feedType,
      required final String referenceId}) = _$AddFeedRequestImpl;

  factory _AddFeedRequest.fromJson(Map<String, dynamic> json) =
      _$AddFeedRequestImpl.fromJson;

  @override
  String get feedType;
  @override
  String get referenceId;

  /// Create a copy of AddFeedRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddFeedRequestImplCopyWith<_$AddFeedRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
