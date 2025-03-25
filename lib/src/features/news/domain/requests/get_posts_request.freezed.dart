// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_posts_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetPostsRequest _$GetPostsRequestFromJson(Map<String, dynamic> json) {
  return _GetPostsRequest.fromJson(json);
}

/// @nodoc
mixin _$GetPostsRequest {
  int get limit => throw _privateConstructorUsedError;
  int get offset => throw _privateConstructorUsedError;
  @JsonKey(name: 'order_asc')
  bool get orderAsc => throw _privateConstructorUsedError;
  int? get resolution => throw _privateConstructorUsedError;
  String? get feedType => throw _privateConstructorUsedError;
  @JsonKey(name: 'school_id')
  String get schoolId => throw _privateConstructorUsedError;
  String get role => throw _privateConstructorUsedError;
  @JsonKey(name: 'child_id')
  String? get childId => throw _privateConstructorUsedError;

  /// Serializes this GetPostsRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetPostsRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetPostsRequestCopyWith<GetPostsRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetPostsRequestCopyWith<$Res> {
  factory $GetPostsRequestCopyWith(
          GetPostsRequest value, $Res Function(GetPostsRequest) then) =
      _$GetPostsRequestCopyWithImpl<$Res, GetPostsRequest>;
  @useResult
  $Res call(
      {int limit,
      int offset,
      @JsonKey(name: 'order_asc') bool orderAsc,
      int? resolution,
      String? feedType,
      @JsonKey(name: 'school_id') String schoolId,
      String role,
      @JsonKey(name: 'child_id') String? childId});
}

/// @nodoc
class _$GetPostsRequestCopyWithImpl<$Res, $Val extends GetPostsRequest>
    implements $GetPostsRequestCopyWith<$Res> {
  _$GetPostsRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetPostsRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? limit = null,
    Object? offset = null,
    Object? orderAsc = null,
    Object? resolution = freezed,
    Object? feedType = freezed,
    Object? schoolId = null,
    Object? role = null,
    Object? childId = freezed,
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
      orderAsc: null == orderAsc
          ? _value.orderAsc
          : orderAsc // ignore: cast_nullable_to_non_nullable
              as bool,
      resolution: freezed == resolution
          ? _value.resolution
          : resolution // ignore: cast_nullable_to_non_nullable
              as int?,
      feedType: freezed == feedType
          ? _value.feedType
          : feedType // ignore: cast_nullable_to_non_nullable
              as String?,
      schoolId: null == schoolId
          ? _value.schoolId
          : schoolId // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      childId: freezed == childId
          ? _value.childId
          : childId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetPostsRequestImplCopyWith<$Res>
    implements $GetPostsRequestCopyWith<$Res> {
  factory _$$GetPostsRequestImplCopyWith(_$GetPostsRequestImpl value,
          $Res Function(_$GetPostsRequestImpl) then) =
      __$$GetPostsRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int limit,
      int offset,
      @JsonKey(name: 'order_asc') bool orderAsc,
      int? resolution,
      String? feedType,
      @JsonKey(name: 'school_id') String schoolId,
      String role,
      @JsonKey(name: 'child_id') String? childId});
}

/// @nodoc
class __$$GetPostsRequestImplCopyWithImpl<$Res>
    extends _$GetPostsRequestCopyWithImpl<$Res, _$GetPostsRequestImpl>
    implements _$$GetPostsRequestImplCopyWith<$Res> {
  __$$GetPostsRequestImplCopyWithImpl(
      _$GetPostsRequestImpl _value, $Res Function(_$GetPostsRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetPostsRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? limit = null,
    Object? offset = null,
    Object? orderAsc = null,
    Object? resolution = freezed,
    Object? feedType = freezed,
    Object? schoolId = null,
    Object? role = null,
    Object? childId = freezed,
  }) {
    return _then(_$GetPostsRequestImpl(
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      orderAsc: null == orderAsc
          ? _value.orderAsc
          : orderAsc // ignore: cast_nullable_to_non_nullable
              as bool,
      resolution: freezed == resolution
          ? _value.resolution
          : resolution // ignore: cast_nullable_to_non_nullable
              as int?,
      feedType: freezed == feedType
          ? _value.feedType
          : feedType // ignore: cast_nullable_to_non_nullable
              as String?,
      schoolId: null == schoolId
          ? _value.schoolId
          : schoolId // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      childId: freezed == childId
          ? _value.childId
          : childId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetPostsRequestImpl implements _GetPostsRequest {
  const _$GetPostsRequestImpl(
      {required this.limit,
      required this.offset,
      @JsonKey(name: 'order_asc') required this.orderAsc,
      this.resolution,
      this.feedType,
      @JsonKey(name: 'school_id') required this.schoolId,
      required this.role,
      @JsonKey(name: 'child_id') this.childId});

  factory _$GetPostsRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetPostsRequestImplFromJson(json);

  @override
  final int limit;
  @override
  final int offset;
  @override
  @JsonKey(name: 'order_asc')
  final bool orderAsc;
  @override
  final int? resolution;
  @override
  final String? feedType;
  @override
  @JsonKey(name: 'school_id')
  final String schoolId;
  @override
  final String role;
  @override
  @JsonKey(name: 'child_id')
  final String? childId;

  @override
  String toString() {
    return 'GetPostsRequest(limit: $limit, offset: $offset, orderAsc: $orderAsc, resolution: $resolution, feedType: $feedType, schoolId: $schoolId, role: $role, childId: $childId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPostsRequestImpl &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.offset, offset) || other.offset == offset) &&
            (identical(other.orderAsc, orderAsc) ||
                other.orderAsc == orderAsc) &&
            (identical(other.resolution, resolution) ||
                other.resolution == resolution) &&
            (identical(other.feedType, feedType) ||
                other.feedType == feedType) &&
            (identical(other.schoolId, schoolId) ||
                other.schoolId == schoolId) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.childId, childId) || other.childId == childId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, limit, offset, orderAsc,
      resolution, feedType, schoolId, role, childId);

  /// Create a copy of GetPostsRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetPostsRequestImplCopyWith<_$GetPostsRequestImpl> get copyWith =>
      __$$GetPostsRequestImplCopyWithImpl<_$GetPostsRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetPostsRequestImplToJson(
      this,
    );
  }
}

abstract class _GetPostsRequest implements GetPostsRequest {
  const factory _GetPostsRequest(
          {required final int limit,
          required final int offset,
          @JsonKey(name: 'order_asc') required final bool orderAsc,
          final int? resolution,
          final String? feedType,
          @JsonKey(name: 'school_id') required final String schoolId,
          required final String role,
          @JsonKey(name: 'child_id') final String? childId}) =
      _$GetPostsRequestImpl;

  factory _GetPostsRequest.fromJson(Map<String, dynamic> json) =
      _$GetPostsRequestImpl.fromJson;

  @override
  int get limit;
  @override
  int get offset;
  @override
  @JsonKey(name: 'order_asc')
  bool get orderAsc;
  @override
  int? get resolution;
  @override
  String? get feedType;
  @override
  @JsonKey(name: 'school_id')
  String get schoolId;
  @override
  String get role;
  @override
  @JsonKey(name: 'child_id')
  String? get childId;

  /// Create a copy of GetPostsRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetPostsRequestImplCopyWith<_$GetPostsRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
