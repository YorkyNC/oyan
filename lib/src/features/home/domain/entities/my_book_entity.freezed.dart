// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_book_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MyBookEntity _$MyBookEntityFromJson(Map<String, dynamic> json) {
  return _MyBookEntity.fromJson(json);
}

/// @nodoc
mixin _$MyBookEntity {
  @JsonKey(name: 'user')
  int? get user => throw _privateConstructorUsedError;
  @JsonKey(name: 'book')
  int? get book => throw _privateConstructorUsedError;
  @JsonKey(name: 'cover_url')
  String? get coverUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'author')
  String? get author => throw _privateConstructorUsedError;
  @JsonKey(name: 'completed_at')
  DateTime? get completedAt => throw _privateConstructorUsedError;

  /// Serializes this MyBookEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MyBookEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MyBookEntityCopyWith<MyBookEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyBookEntityCopyWith<$Res> {
  factory $MyBookEntityCopyWith(
          MyBookEntity value, $Res Function(MyBookEntity) then) =
      _$MyBookEntityCopyWithImpl<$Res, MyBookEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'user') int? user,
      @JsonKey(name: 'book') int? book,
      @JsonKey(name: 'cover_url') String? coverUrl,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'status') String? status,
      @JsonKey(name: 'author') String? author,
      @JsonKey(name: 'completed_at') DateTime? completedAt});
}

/// @nodoc
class _$MyBookEntityCopyWithImpl<$Res, $Val extends MyBookEntity>
    implements $MyBookEntityCopyWith<$Res> {
  _$MyBookEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MyBookEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? book = freezed,
    Object? coverUrl = freezed,
    Object? title = freezed,
    Object? status = freezed,
    Object? author = freezed,
    Object? completedAt = freezed,
  }) {
    return _then(_value.copyWith(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as int?,
      book: freezed == book
          ? _value.book
          : book // ignore: cast_nullable_to_non_nullable
              as int?,
      coverUrl: freezed == coverUrl
          ? _value.coverUrl
          : coverUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      completedAt: freezed == completedAt
          ? _value.completedAt
          : completedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MyBookEntityImplCopyWith<$Res>
    implements $MyBookEntityCopyWith<$Res> {
  factory _$$MyBookEntityImplCopyWith(
          _$MyBookEntityImpl value, $Res Function(_$MyBookEntityImpl) then) =
      __$$MyBookEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'user') int? user,
      @JsonKey(name: 'book') int? book,
      @JsonKey(name: 'cover_url') String? coverUrl,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'status') String? status,
      @JsonKey(name: 'author') String? author,
      @JsonKey(name: 'completed_at') DateTime? completedAt});
}

/// @nodoc
class __$$MyBookEntityImplCopyWithImpl<$Res>
    extends _$MyBookEntityCopyWithImpl<$Res, _$MyBookEntityImpl>
    implements _$$MyBookEntityImplCopyWith<$Res> {
  __$$MyBookEntityImplCopyWithImpl(
      _$MyBookEntityImpl _value, $Res Function(_$MyBookEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of MyBookEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? book = freezed,
    Object? coverUrl = freezed,
    Object? title = freezed,
    Object? status = freezed,
    Object? author = freezed,
    Object? completedAt = freezed,
  }) {
    return _then(_$MyBookEntityImpl(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as int?,
      book: freezed == book
          ? _value.book
          : book // ignore: cast_nullable_to_non_nullable
              as int?,
      coverUrl: freezed == coverUrl
          ? _value.coverUrl
          : coverUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      completedAt: freezed == completedAt
          ? _value.completedAt
          : completedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MyBookEntityImpl implements _MyBookEntity {
  const _$MyBookEntityImpl(
      {@JsonKey(name: 'user') this.user,
      @JsonKey(name: 'book') this.book,
      @JsonKey(name: 'cover_url') this.coverUrl,
      @JsonKey(name: 'title') this.title,
      @JsonKey(name: 'status') this.status,
      @JsonKey(name: 'author') this.author,
      @JsonKey(name: 'completed_at') this.completedAt});

  factory _$MyBookEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$MyBookEntityImplFromJson(json);

  @override
  @JsonKey(name: 'user')
  final int? user;
  @override
  @JsonKey(name: 'book')
  final int? book;
  @override
  @JsonKey(name: 'cover_url')
  final String? coverUrl;
  @override
  @JsonKey(name: 'title')
  final String? title;
  @override
  @JsonKey(name: 'status')
  final String? status;
  @override
  @JsonKey(name: 'author')
  final String? author;
  @override
  @JsonKey(name: 'completed_at')
  final DateTime? completedAt;

  @override
  String toString() {
    return 'MyBookEntity(user: $user, book: $book, coverUrl: $coverUrl, title: $title, status: $status, author: $author, completedAt: $completedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyBookEntityImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.book, book) || other.book == book) &&
            (identical(other.coverUrl, coverUrl) ||
                other.coverUrl == coverUrl) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.completedAt, completedAt) ||
                other.completedAt == completedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, user, book, coverUrl, title, status, author, completedAt);

  /// Create a copy of MyBookEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MyBookEntityImplCopyWith<_$MyBookEntityImpl> get copyWith =>
      __$$MyBookEntityImplCopyWithImpl<_$MyBookEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MyBookEntityImplToJson(
      this,
    );
  }
}

abstract class _MyBookEntity implements MyBookEntity {
  const factory _MyBookEntity(
          {@JsonKey(name: 'user') final int? user,
          @JsonKey(name: 'book') final int? book,
          @JsonKey(name: 'cover_url') final String? coverUrl,
          @JsonKey(name: 'title') final String? title,
          @JsonKey(name: 'status') final String? status,
          @JsonKey(name: 'author') final String? author,
          @JsonKey(name: 'completed_at') final DateTime? completedAt}) =
      _$MyBookEntityImpl;

  factory _MyBookEntity.fromJson(Map<String, dynamic> json) =
      _$MyBookEntityImpl.fromJson;

  @override
  @JsonKey(name: 'user')
  int? get user;
  @override
  @JsonKey(name: 'book')
  int? get book;
  @override
  @JsonKey(name: 'cover_url')
  String? get coverUrl;
  @override
  @JsonKey(name: 'title')
  String? get title;
  @override
  @JsonKey(name: 'status')
  String? get status;
  @override
  @JsonKey(name: 'author')
  String? get author;
  @override
  @JsonKey(name: 'completed_at')
  DateTime? get completedAt;

  /// Create a copy of MyBookEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MyBookEntityImplCopyWith<_$MyBookEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
