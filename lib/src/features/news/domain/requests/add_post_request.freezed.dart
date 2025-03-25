// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_post_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AddPostRequest _$AddPostRequestFromJson(Map<String, dynamic> json) {
  return _AddPostRequest.fromJson(json);
}

/// @nodoc
mixin _$AddPostRequest {
  @JsonKey(name: 'school_id')
  String get schoolId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  bool? get isImportant => throw _privateConstructorUsedError;
  String get role => throw _privateConstructorUsedError;
  List<String>? get tags => throw _privateConstructorUsedError;
  List<AttachmentEntity>? get attachments => throw _privateConstructorUsedError;
  List<PostClassEntity> get classes => throw _privateConstructorUsedError;

  /// Serializes this AddPostRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AddPostRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddPostRequestCopyWith<AddPostRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddPostRequestCopyWith<$Res> {
  factory $AddPostRequestCopyWith(
          AddPostRequest value, $Res Function(AddPostRequest) then) =
      _$AddPostRequestCopyWithImpl<$Res, AddPostRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'school_id') String schoolId,
      String title,
      String content,
      bool? isImportant,
      String role,
      List<String>? tags,
      List<AttachmentEntity>? attachments,
      List<PostClassEntity> classes});
}

/// @nodoc
class _$AddPostRequestCopyWithImpl<$Res, $Val extends AddPostRequest>
    implements $AddPostRequestCopyWith<$Res> {
  _$AddPostRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddPostRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? schoolId = null,
    Object? title = null,
    Object? content = null,
    Object? isImportant = freezed,
    Object? role = null,
    Object? tags = freezed,
    Object? attachments = freezed,
    Object? classes = null,
  }) {
    return _then(_value.copyWith(
      schoolId: null == schoolId
          ? _value.schoolId
          : schoolId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      isImportant: freezed == isImportant
          ? _value.isImportant
          : isImportant // ignore: cast_nullable_to_non_nullable
              as bool?,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      attachments: freezed == attachments
          ? _value.attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as List<AttachmentEntity>?,
      classes: null == classes
          ? _value.classes
          : classes // ignore: cast_nullable_to_non_nullable
              as List<PostClassEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddPostRequestImplCopyWith<$Res>
    implements $AddPostRequestCopyWith<$Res> {
  factory _$$AddPostRequestImplCopyWith(_$AddPostRequestImpl value,
          $Res Function(_$AddPostRequestImpl) then) =
      __$$AddPostRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'school_id') String schoolId,
      String title,
      String content,
      bool? isImportant,
      String role,
      List<String>? tags,
      List<AttachmentEntity>? attachments,
      List<PostClassEntity> classes});
}

/// @nodoc
class __$$AddPostRequestImplCopyWithImpl<$Res>
    extends _$AddPostRequestCopyWithImpl<$Res, _$AddPostRequestImpl>
    implements _$$AddPostRequestImplCopyWith<$Res> {
  __$$AddPostRequestImplCopyWithImpl(
      _$AddPostRequestImpl _value, $Res Function(_$AddPostRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddPostRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? schoolId = null,
    Object? title = null,
    Object? content = null,
    Object? isImportant = freezed,
    Object? role = null,
    Object? tags = freezed,
    Object? attachments = freezed,
    Object? classes = null,
  }) {
    return _then(_$AddPostRequestImpl(
      schoolId: null == schoolId
          ? _value.schoolId
          : schoolId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      isImportant: freezed == isImportant
          ? _value.isImportant
          : isImportant // ignore: cast_nullable_to_non_nullable
              as bool?,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      tags: freezed == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      attachments: freezed == attachments
          ? _value._attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as List<AttachmentEntity>?,
      classes: null == classes
          ? _value._classes
          : classes // ignore: cast_nullable_to_non_nullable
              as List<PostClassEntity>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddPostRequestImpl implements _AddPostRequest {
  const _$AddPostRequestImpl(
      {@JsonKey(name: 'school_id') required this.schoolId,
      required this.title,
      required this.content,
      this.isImportant,
      required this.role,
      final List<String>? tags,
      final List<AttachmentEntity>? attachments,
      required final List<PostClassEntity> classes})
      : _tags = tags,
        _attachments = attachments,
        _classes = classes;

  factory _$AddPostRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddPostRequestImplFromJson(json);

  @override
  @JsonKey(name: 'school_id')
  final String schoolId;
  @override
  final String title;
  @override
  final String content;
  @override
  final bool? isImportant;
  @override
  final String role;
  final List<String>? _tags;
  @override
  List<String>? get tags {
    final value = _tags;
    if (value == null) return null;
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<AttachmentEntity>? _attachments;
  @override
  List<AttachmentEntity>? get attachments {
    final value = _attachments;
    if (value == null) return null;
    if (_attachments is EqualUnmodifiableListView) return _attachments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<PostClassEntity> _classes;
  @override
  List<PostClassEntity> get classes {
    if (_classes is EqualUnmodifiableListView) return _classes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_classes);
  }

  @override
  String toString() {
    return 'AddPostRequest(schoolId: $schoolId, title: $title, content: $content, isImportant: $isImportant, role: $role, tags: $tags, attachments: $attachments, classes: $classes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddPostRequestImpl &&
            (identical(other.schoolId, schoolId) ||
                other.schoolId == schoolId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.isImportant, isImportant) ||
                other.isImportant == isImportant) &&
            (identical(other.role, role) || other.role == role) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            const DeepCollectionEquality()
                .equals(other._attachments, _attachments) &&
            const DeepCollectionEquality().equals(other._classes, _classes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      schoolId,
      title,
      content,
      isImportant,
      role,
      const DeepCollectionEquality().hash(_tags),
      const DeepCollectionEquality().hash(_attachments),
      const DeepCollectionEquality().hash(_classes));

  /// Create a copy of AddPostRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddPostRequestImplCopyWith<_$AddPostRequestImpl> get copyWith =>
      __$$AddPostRequestImplCopyWithImpl<_$AddPostRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddPostRequestImplToJson(
      this,
    );
  }
}

abstract class _AddPostRequest implements AddPostRequest {
  const factory _AddPostRequest(
      {@JsonKey(name: 'school_id') required final String schoolId,
      required final String title,
      required final String content,
      final bool? isImportant,
      required final String role,
      final List<String>? tags,
      final List<AttachmentEntity>? attachments,
      required final List<PostClassEntity> classes}) = _$AddPostRequestImpl;

  factory _AddPostRequest.fromJson(Map<String, dynamic> json) =
      _$AddPostRequestImpl.fromJson;

  @override
  @JsonKey(name: 'school_id')
  String get schoolId;
  @override
  String get title;
  @override
  String get content;
  @override
  bool? get isImportant;
  @override
  String get role;
  @override
  List<String>? get tags;
  @override
  List<AttachmentEntity>? get attachments;
  @override
  List<PostClassEntity> get classes;

  /// Create a copy of AddPostRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddPostRequestImplCopyWith<_$AddPostRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
