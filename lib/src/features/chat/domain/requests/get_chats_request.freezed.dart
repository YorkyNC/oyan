// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_chats_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetChatsRequest _$GetChatsRequestFromJson(Map<String, dynamic> json) {
  return _GetChatsRequest.fromJson(json);
}

/// @nodoc
mixin _$GetChatsRequest {
  String get schoolId => throw _privateConstructorUsedError;
  String get role => throw _privateConstructorUsedError;
  String? get childId => throw _privateConstructorUsedError;
  int? get limit => throw _privateConstructorUsedError;
  int? get offset => throw _privateConstructorUsedError;

  /// Serializes this GetChatsRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetChatsRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetChatsRequestCopyWith<GetChatsRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetChatsRequestCopyWith<$Res> {
  factory $GetChatsRequestCopyWith(
          GetChatsRequest value, $Res Function(GetChatsRequest) then) =
      _$GetChatsRequestCopyWithImpl<$Res, GetChatsRequest>;
  @useResult
  $Res call(
      {String schoolId, String role, String? childId, int? limit, int? offset});
}

/// @nodoc
class _$GetChatsRequestCopyWithImpl<$Res, $Val extends GetChatsRequest>
    implements $GetChatsRequestCopyWith<$Res> {
  _$GetChatsRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetChatsRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? schoolId = null,
    Object? role = null,
    Object? childId = freezed,
    Object? limit = freezed,
    Object? offset = freezed,
  }) {
    return _then(_value.copyWith(
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
      limit: freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
      offset: freezed == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetChatsRequestImplCopyWith<$Res>
    implements $GetChatsRequestCopyWith<$Res> {
  factory _$$GetChatsRequestImplCopyWith(_$GetChatsRequestImpl value,
          $Res Function(_$GetChatsRequestImpl) then) =
      __$$GetChatsRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String schoolId, String role, String? childId, int? limit, int? offset});
}

/// @nodoc
class __$$GetChatsRequestImplCopyWithImpl<$Res>
    extends _$GetChatsRequestCopyWithImpl<$Res, _$GetChatsRequestImpl>
    implements _$$GetChatsRequestImplCopyWith<$Res> {
  __$$GetChatsRequestImplCopyWithImpl(
      _$GetChatsRequestImpl _value, $Res Function(_$GetChatsRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetChatsRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? schoolId = null,
    Object? role = null,
    Object? childId = freezed,
    Object? limit = freezed,
    Object? offset = freezed,
  }) {
    return _then(_$GetChatsRequestImpl(
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
      limit: freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
      offset: freezed == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetChatsRequestImpl implements _GetChatsRequest {
  const _$GetChatsRequestImpl(
      {required this.schoolId,
      required this.role,
      this.childId,
      this.limit,
      this.offset});

  factory _$GetChatsRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetChatsRequestImplFromJson(json);

  @override
  final String schoolId;
  @override
  final String role;
  @override
  final String? childId;
  @override
  final int? limit;
  @override
  final int? offset;

  @override
  String toString() {
    return 'GetChatsRequest(schoolId: $schoolId, role: $role, childId: $childId, limit: $limit, offset: $offset)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetChatsRequestImpl &&
            (identical(other.schoolId, schoolId) ||
                other.schoolId == schoolId) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.childId, childId) || other.childId == childId) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.offset, offset) || other.offset == offset));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, schoolId, role, childId, limit, offset);

  /// Create a copy of GetChatsRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetChatsRequestImplCopyWith<_$GetChatsRequestImpl> get copyWith =>
      __$$GetChatsRequestImplCopyWithImpl<_$GetChatsRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetChatsRequestImplToJson(
      this,
    );
  }
}

abstract class _GetChatsRequest implements GetChatsRequest {
  const factory _GetChatsRequest(
      {required final String schoolId,
      required final String role,
      final String? childId,
      final int? limit,
      final int? offset}) = _$GetChatsRequestImpl;

  factory _GetChatsRequest.fromJson(Map<String, dynamic> json) =
      _$GetChatsRequestImpl.fromJson;

  @override
  String get schoolId;
  @override
  String get role;
  @override
  String? get childId;
  @override
  int? get limit;
  @override
  int? get offset;

  /// Create a copy of GetChatsRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetChatsRequestImplCopyWith<_$GetChatsRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
