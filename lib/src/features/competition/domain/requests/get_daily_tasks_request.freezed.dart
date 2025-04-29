// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_daily_tasks_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetDailyTasksRequest _$GetDailyTasksRequestFromJson(Map<String, dynamic> json) {
  return _GetDailyTasksRequest.fromJson(json);
}

/// @nodoc
mixin _$GetDailyTasksRequest {
  int? get page => throw _privateConstructorUsedError;
  int? get size => throw _privateConstructorUsedError;

  /// Serializes this GetDailyTasksRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetDailyTasksRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetDailyTasksRequestCopyWith<GetDailyTasksRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetDailyTasksRequestCopyWith<$Res> {
  factory $GetDailyTasksRequestCopyWith(GetDailyTasksRequest value,
          $Res Function(GetDailyTasksRequest) then) =
      _$GetDailyTasksRequestCopyWithImpl<$Res, GetDailyTasksRequest>;
  @useResult
  $Res call({int? page, int? size});
}

/// @nodoc
class _$GetDailyTasksRequestCopyWithImpl<$Res,
        $Val extends GetDailyTasksRequest>
    implements $GetDailyTasksRequestCopyWith<$Res> {
  _$GetDailyTasksRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetDailyTasksRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = freezed,
    Object? size = freezed,
  }) {
    return _then(_value.copyWith(
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetDailyTasksRequestImplCopyWith<$Res>
    implements $GetDailyTasksRequestCopyWith<$Res> {
  factory _$$GetDailyTasksRequestImplCopyWith(_$GetDailyTasksRequestImpl value,
          $Res Function(_$GetDailyTasksRequestImpl) then) =
      __$$GetDailyTasksRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? page, int? size});
}

/// @nodoc
class __$$GetDailyTasksRequestImplCopyWithImpl<$Res>
    extends _$GetDailyTasksRequestCopyWithImpl<$Res, _$GetDailyTasksRequestImpl>
    implements _$$GetDailyTasksRequestImplCopyWith<$Res> {
  __$$GetDailyTasksRequestImplCopyWithImpl(_$GetDailyTasksRequestImpl _value,
      $Res Function(_$GetDailyTasksRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetDailyTasksRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = freezed,
    Object? size = freezed,
  }) {
    return _then(_$GetDailyTasksRequestImpl(
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetDailyTasksRequestImpl extends _GetDailyTasksRequest {
  const _$GetDailyTasksRequestImpl({this.page, this.size}) : super._();

  factory _$GetDailyTasksRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetDailyTasksRequestImplFromJson(json);

  @override
  final int? page;
  @override
  final int? size;

  @override
  String toString() {
    return 'GetDailyTasksRequest(page: $page, size: $size)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetDailyTasksRequestImpl &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.size, size) || other.size == size));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, page, size);

  /// Create a copy of GetDailyTasksRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetDailyTasksRequestImplCopyWith<_$GetDailyTasksRequestImpl>
      get copyWith =>
          __$$GetDailyTasksRequestImplCopyWithImpl<_$GetDailyTasksRequestImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetDailyTasksRequestImplToJson(
      this,
    );
  }
}

abstract class _GetDailyTasksRequest extends GetDailyTasksRequest {
  const factory _GetDailyTasksRequest({final int? page, final int? size}) =
      _$GetDailyTasksRequestImpl;
  const _GetDailyTasksRequest._() : super._();

  factory _GetDailyTasksRequest.fromJson(Map<String, dynamic> json) =
      _$GetDailyTasksRequestImpl.fromJson;

  @override
  int? get page;
  @override
  int? get size;

  /// Create a copy of GetDailyTasksRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetDailyTasksRequestImplCopyWith<_$GetDailyTasksRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
