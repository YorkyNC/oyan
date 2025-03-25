// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PostEntity _$PostEntityFromJson(Map<String, dynamic> json) {
  return _PostEntity.fromJson(json);
}

/// @nodoc
mixin _$PostEntity {
  String get title => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  String get authorId => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String? get schoolId => throw _privateConstructorUsedError;
  bool? get isImportant => throw _privateConstructorUsedError;
  String? get courseId => throw _privateConstructorUsedError;
  String? get classId => throw _privateConstructorUsedError;
  String get createdDate => throw _privateConstructorUsedError;
  String get modifiedDate => throw _privateConstructorUsedError;
  List<AttachmentEntity?>? get attachments =>
      throw _privateConstructorUsedError;
  List<TagEntity?>? get tags => throw _privateConstructorUsedError;

  /// Serializes this PostEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PostEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PostEntityCopyWith<PostEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostEntityCopyWith<$Res> {
  factory $PostEntityCopyWith(
          PostEntity value, $Res Function(PostEntity) then) =
      _$PostEntityCopyWithImpl<$Res, PostEntity>;
  @useResult
  $Res call(
      {String title,
      String content,
      String authorId,
      String id,
      String? schoolId,
      bool? isImportant,
      String? courseId,
      String? classId,
      String createdDate,
      String modifiedDate,
      List<AttachmentEntity?>? attachments,
      List<TagEntity?>? tags});
}

/// @nodoc
class _$PostEntityCopyWithImpl<$Res, $Val extends PostEntity>
    implements $PostEntityCopyWith<$Res> {
  _$PostEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PostEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? content = null,
    Object? authorId = null,
    Object? id = null,
    Object? schoolId = freezed,
    Object? isImportant = freezed,
    Object? courseId = freezed,
    Object? classId = freezed,
    Object? createdDate = null,
    Object? modifiedDate = null,
    Object? attachments = freezed,
    Object? tags = freezed,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      authorId: null == authorId
          ? _value.authorId
          : authorId // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      schoolId: freezed == schoolId
          ? _value.schoolId
          : schoolId // ignore: cast_nullable_to_non_nullable
              as String?,
      isImportant: freezed == isImportant
          ? _value.isImportant
          : isImportant // ignore: cast_nullable_to_non_nullable
              as bool?,
      courseId: freezed == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as String?,
      classId: freezed == classId
          ? _value.classId
          : classId // ignore: cast_nullable_to_non_nullable
              as String?,
      createdDate: null == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as String,
      modifiedDate: null == modifiedDate
          ? _value.modifiedDate
          : modifiedDate // ignore: cast_nullable_to_non_nullable
              as String,
      attachments: freezed == attachments
          ? _value.attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as List<AttachmentEntity?>?,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<TagEntity?>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PostEntityImplCopyWith<$Res>
    implements $PostEntityCopyWith<$Res> {
  factory _$$PostEntityImplCopyWith(
          _$PostEntityImpl value, $Res Function(_$PostEntityImpl) then) =
      __$$PostEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String content,
      String authorId,
      String id,
      String? schoolId,
      bool? isImportant,
      String? courseId,
      String? classId,
      String createdDate,
      String modifiedDate,
      List<AttachmentEntity?>? attachments,
      List<TagEntity?>? tags});
}

/// @nodoc
class __$$PostEntityImplCopyWithImpl<$Res>
    extends _$PostEntityCopyWithImpl<$Res, _$PostEntityImpl>
    implements _$$PostEntityImplCopyWith<$Res> {
  __$$PostEntityImplCopyWithImpl(
      _$PostEntityImpl _value, $Res Function(_$PostEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of PostEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? content = null,
    Object? authorId = null,
    Object? id = null,
    Object? schoolId = freezed,
    Object? isImportant = freezed,
    Object? courseId = freezed,
    Object? classId = freezed,
    Object? createdDate = null,
    Object? modifiedDate = null,
    Object? attachments = freezed,
    Object? tags = freezed,
  }) {
    return _then(_$PostEntityImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      authorId: null == authorId
          ? _value.authorId
          : authorId // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      schoolId: freezed == schoolId
          ? _value.schoolId
          : schoolId // ignore: cast_nullable_to_non_nullable
              as String?,
      isImportant: freezed == isImportant
          ? _value.isImportant
          : isImportant // ignore: cast_nullable_to_non_nullable
              as bool?,
      courseId: freezed == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as String?,
      classId: freezed == classId
          ? _value.classId
          : classId // ignore: cast_nullable_to_non_nullable
              as String?,
      createdDate: null == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as String,
      modifiedDate: null == modifiedDate
          ? _value.modifiedDate
          : modifiedDate // ignore: cast_nullable_to_non_nullable
              as String,
      attachments: freezed == attachments
          ? _value._attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as List<AttachmentEntity?>?,
      tags: freezed == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<TagEntity?>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostEntityImpl implements _PostEntity {
  const _$PostEntityImpl(
      {required this.title,
      required this.content,
      required this.authorId,
      required this.id,
      this.schoolId,
      this.isImportant,
      this.courseId,
      this.classId,
      required this.createdDate,
      required this.modifiedDate,
      final List<AttachmentEntity?>? attachments,
      final List<TagEntity?>? tags})
      : _attachments = attachments,
        _tags = tags;

  factory _$PostEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostEntityImplFromJson(json);

  @override
  final String title;
  @override
  final String content;
  @override
  final String authorId;
  @override
  final String id;
  @override
  final String? schoolId;
  @override
  final bool? isImportant;
  @override
  final String? courseId;
  @override
  final String? classId;
  @override
  final String createdDate;
  @override
  final String modifiedDate;
  final List<AttachmentEntity?>? _attachments;
  @override
  List<AttachmentEntity?>? get attachments {
    final value = _attachments;
    if (value == null) return null;
    if (_attachments is EqualUnmodifiableListView) return _attachments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<TagEntity?>? _tags;
  @override
  List<TagEntity?>? get tags {
    final value = _tags;
    if (value == null) return null;
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PostEntity(title: $title, content: $content, authorId: $authorId, id: $id, schoolId: $schoolId, isImportant: $isImportant, courseId: $courseId, classId: $classId, createdDate: $createdDate, modifiedDate: $modifiedDate, attachments: $attachments, tags: $tags)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostEntityImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.authorId, authorId) ||
                other.authorId == authorId) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.schoolId, schoolId) ||
                other.schoolId == schoolId) &&
            (identical(other.isImportant, isImportant) ||
                other.isImportant == isImportant) &&
            (identical(other.courseId, courseId) ||
                other.courseId == courseId) &&
            (identical(other.classId, classId) || other.classId == classId) &&
            (identical(other.createdDate, createdDate) ||
                other.createdDate == createdDate) &&
            (identical(other.modifiedDate, modifiedDate) ||
                other.modifiedDate == modifiedDate) &&
            const DeepCollectionEquality()
                .equals(other._attachments, _attachments) &&
            const DeepCollectionEquality().equals(other._tags, _tags));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      title,
      content,
      authorId,
      id,
      schoolId,
      isImportant,
      courseId,
      classId,
      createdDate,
      modifiedDate,
      const DeepCollectionEquality().hash(_attachments),
      const DeepCollectionEquality().hash(_tags));

  /// Create a copy of PostEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PostEntityImplCopyWith<_$PostEntityImpl> get copyWith =>
      __$$PostEntityImplCopyWithImpl<_$PostEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostEntityImplToJson(
      this,
    );
  }
}

abstract class _PostEntity implements PostEntity {
  const factory _PostEntity(
      {required final String title,
      required final String content,
      required final String authorId,
      required final String id,
      final String? schoolId,
      final bool? isImportant,
      final String? courseId,
      final String? classId,
      required final String createdDate,
      required final String modifiedDate,
      final List<AttachmentEntity?>? attachments,
      final List<TagEntity?>? tags}) = _$PostEntityImpl;

  factory _PostEntity.fromJson(Map<String, dynamic> json) =
      _$PostEntityImpl.fromJson;

  @override
  String get title;
  @override
  String get content;
  @override
  String get authorId;
  @override
  String get id;
  @override
  String? get schoolId;
  @override
  bool? get isImportant;
  @override
  String? get courseId;
  @override
  String? get classId;
  @override
  String get createdDate;
  @override
  String get modifiedDate;
  @override
  List<AttachmentEntity?>? get attachments;
  @override
  List<TagEntity?>? get tags;

  /// Create a copy of PostEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PostEntityImplCopyWith<_$PostEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
