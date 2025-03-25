// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_course_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PostCourseEntity _$PostCourseEntityFromJson(Map<String, dynamic> json) {
  return _PostCourseEntity.fromJson(json);
}

/// @nodoc
mixin _$PostCourseEntity {
  String get courseId => throw _privateConstructorUsedError;

  /// Serializes this PostCourseEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PostCourseEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PostCourseEntityCopyWith<PostCourseEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostCourseEntityCopyWith<$Res> {
  factory $PostCourseEntityCopyWith(
          PostCourseEntity value, $Res Function(PostCourseEntity) then) =
      _$PostCourseEntityCopyWithImpl<$Res, PostCourseEntity>;
  @useResult
  $Res call({String courseId});
}

/// @nodoc
class _$PostCourseEntityCopyWithImpl<$Res, $Val extends PostCourseEntity>
    implements $PostCourseEntityCopyWith<$Res> {
  _$PostCourseEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PostCourseEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courseId = null,
  }) {
    return _then(_value.copyWith(
      courseId: null == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PostCourseEntityImplCopyWith<$Res>
    implements $PostCourseEntityCopyWith<$Res> {
  factory _$$PostCourseEntityImplCopyWith(_$PostCourseEntityImpl value,
          $Res Function(_$PostCourseEntityImpl) then) =
      __$$PostCourseEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String courseId});
}

/// @nodoc
class __$$PostCourseEntityImplCopyWithImpl<$Res>
    extends _$PostCourseEntityCopyWithImpl<$Res, _$PostCourseEntityImpl>
    implements _$$PostCourseEntityImplCopyWith<$Res> {
  __$$PostCourseEntityImplCopyWithImpl(_$PostCourseEntityImpl _value,
      $Res Function(_$PostCourseEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of PostCourseEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courseId = null,
  }) {
    return _then(_$PostCourseEntityImpl(
      courseId: null == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostCourseEntityImpl implements _PostCourseEntity {
  const _$PostCourseEntityImpl({required this.courseId});

  factory _$PostCourseEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostCourseEntityImplFromJson(json);

  @override
  final String courseId;

  @override
  String toString() {
    return 'PostCourseEntity(courseId: $courseId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostCourseEntityImpl &&
            (identical(other.courseId, courseId) ||
                other.courseId == courseId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, courseId);

  /// Create a copy of PostCourseEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PostCourseEntityImplCopyWith<_$PostCourseEntityImpl> get copyWith =>
      __$$PostCourseEntityImplCopyWithImpl<_$PostCourseEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostCourseEntityImplToJson(
      this,
    );
  }
}

abstract class _PostCourseEntity implements PostCourseEntity {
  const factory _PostCourseEntity({required final String courseId}) =
      _$PostCourseEntityImpl;

  factory _PostCourseEntity.fromJson(Map<String, dynamic> json) =
      _$PostCourseEntityImpl.fromJson;

  @override
  String get courseId;

  /// Create a copy of PostCourseEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PostCourseEntityImplCopyWith<_$PostCourseEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
