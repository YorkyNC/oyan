// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_class_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PostClassEntity _$PostClassEntityFromJson(Map<String, dynamic> json) {
  return _PostClassEntity.fromJson(json);
}

/// @nodoc
mixin _$PostClassEntity {
  String get classId => throw _privateConstructorUsedError;
  List<PostCourseEntity>? get courses => throw _privateConstructorUsedError;

  /// Serializes this PostClassEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PostClassEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PostClassEntityCopyWith<PostClassEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostClassEntityCopyWith<$Res> {
  factory $PostClassEntityCopyWith(
          PostClassEntity value, $Res Function(PostClassEntity) then) =
      _$PostClassEntityCopyWithImpl<$Res, PostClassEntity>;
  @useResult
  $Res call({String classId, List<PostCourseEntity>? courses});
}

/// @nodoc
class _$PostClassEntityCopyWithImpl<$Res, $Val extends PostClassEntity>
    implements $PostClassEntityCopyWith<$Res> {
  _$PostClassEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PostClassEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? classId = null,
    Object? courses = freezed,
  }) {
    return _then(_value.copyWith(
      classId: null == classId
          ? _value.classId
          : classId // ignore: cast_nullable_to_non_nullable
              as String,
      courses: freezed == courses
          ? _value.courses
          : courses // ignore: cast_nullable_to_non_nullable
              as List<PostCourseEntity>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PostClassEntityImplCopyWith<$Res>
    implements $PostClassEntityCopyWith<$Res> {
  factory _$$PostClassEntityImplCopyWith(_$PostClassEntityImpl value,
          $Res Function(_$PostClassEntityImpl) then) =
      __$$PostClassEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String classId, List<PostCourseEntity>? courses});
}

/// @nodoc
class __$$PostClassEntityImplCopyWithImpl<$Res>
    extends _$PostClassEntityCopyWithImpl<$Res, _$PostClassEntityImpl>
    implements _$$PostClassEntityImplCopyWith<$Res> {
  __$$PostClassEntityImplCopyWithImpl(
      _$PostClassEntityImpl _value, $Res Function(_$PostClassEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of PostClassEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? classId = null,
    Object? courses = freezed,
  }) {
    return _then(_$PostClassEntityImpl(
      classId: null == classId
          ? _value.classId
          : classId // ignore: cast_nullable_to_non_nullable
              as String,
      courses: freezed == courses
          ? _value._courses
          : courses // ignore: cast_nullable_to_non_nullable
              as List<PostCourseEntity>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostClassEntityImpl implements _PostClassEntity {
  const _$PostClassEntityImpl(
      {required this.classId, final List<PostCourseEntity>? courses})
      : _courses = courses;

  factory _$PostClassEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostClassEntityImplFromJson(json);

  @override
  final String classId;
  final List<PostCourseEntity>? _courses;
  @override
  List<PostCourseEntity>? get courses {
    final value = _courses;
    if (value == null) return null;
    if (_courses is EqualUnmodifiableListView) return _courses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PostClassEntity(classId: $classId, courses: $courses)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostClassEntityImpl &&
            (identical(other.classId, classId) || other.classId == classId) &&
            const DeepCollectionEquality().equals(other._courses, _courses));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, classId, const DeepCollectionEquality().hash(_courses));

  /// Create a copy of PostClassEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PostClassEntityImplCopyWith<_$PostClassEntityImpl> get copyWith =>
      __$$PostClassEntityImplCopyWithImpl<_$PostClassEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostClassEntityImplToJson(
      this,
    );
  }
}

abstract class _PostClassEntity implements PostClassEntity {
  const factory _PostClassEntity(
      {required final String classId,
      final List<PostCourseEntity>? courses}) = _$PostClassEntityImpl;

  factory _PostClassEntity.fromJson(Map<String, dynamic> json) =
      _$PostClassEntityImpl.fromJson;

  @override
  String get classId;
  @override
  List<PostCourseEntity>? get courses;

  /// Create a copy of PostClassEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PostClassEntityImplCopyWith<_$PostClassEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
