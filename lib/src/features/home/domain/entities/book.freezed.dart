// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'book.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Book _$BookFromJson(Map<String, dynamic> json) {
  return _Book.fromJson(json);
}

/// @nodoc
mixin _$Book {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'author')
  String? get author => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'cover_image_url')
  String? get coverImageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'rating')
  String? get rating => throw _privateConstructorUsedError;
  @JsonKey(name: 'genres')
  List<int>? get genres => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'published_year')
  int? get publishedYear => throw _privateConstructorUsedError;
  @JsonKey(name: 'plan')
  String? get plan => throw _privateConstructorUsedError;
  @JsonKey(name: 'price')
  String? get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'page_count')
  int? get pageCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'age_limit')
  String? get ageLimit => throw _privateConstructorUsedError;
  @JsonKey(name: 'read_url')
  String? get readUrl => throw _privateConstructorUsedError;

  /// Serializes this Book to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Book
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BookCopyWith<Book> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookCopyWith<$Res> {
  factory $BookCopyWith(Book value, $Res Function(Book) then) =
      _$BookCopyWithImpl<$Res, Book>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'author') String? author,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'cover_image_url') String? coverImageUrl,
      @JsonKey(name: 'rating') String? rating,
      @JsonKey(name: 'genres') List<int>? genres,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'published_year') int? publishedYear,
      @JsonKey(name: 'plan') String? plan,
      @JsonKey(name: 'price') String? price,
      @JsonKey(name: 'page_count') int? pageCount,
      @JsonKey(name: 'age_limit') String? ageLimit,
      @JsonKey(name: 'read_url') String? readUrl});
}

/// @nodoc
class _$BookCopyWithImpl<$Res, $Val extends Book>
    implements $BookCopyWith<$Res> {
  _$BookCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Book
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? author = freezed,
    Object? description = freezed,
    Object? coverImageUrl = freezed,
    Object? rating = freezed,
    Object? genres = freezed,
    Object? createdAt = freezed,
    Object? publishedYear = freezed,
    Object? plan = freezed,
    Object? price = freezed,
    Object? pageCount = freezed,
    Object? ageLimit = freezed,
    Object? readUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      coverImageUrl: freezed == coverImageUrl
          ? _value.coverImageUrl
          : coverImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as String?,
      genres: freezed == genres
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      publishedYear: freezed == publishedYear
          ? _value.publishedYear
          : publishedYear // ignore: cast_nullable_to_non_nullable
              as int?,
      plan: freezed == plan
          ? _value.plan
          : plan // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      pageCount: freezed == pageCount
          ? _value.pageCount
          : pageCount // ignore: cast_nullable_to_non_nullable
              as int?,
      ageLimit: freezed == ageLimit
          ? _value.ageLimit
          : ageLimit // ignore: cast_nullable_to_non_nullable
              as String?,
      readUrl: freezed == readUrl
          ? _value.readUrl
          : readUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BookImplCopyWith<$Res> implements $BookCopyWith<$Res> {
  factory _$$BookImplCopyWith(
          _$BookImpl value, $Res Function(_$BookImpl) then) =
      __$$BookImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'author') String? author,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'cover_image_url') String? coverImageUrl,
      @JsonKey(name: 'rating') String? rating,
      @JsonKey(name: 'genres') List<int>? genres,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'published_year') int? publishedYear,
      @JsonKey(name: 'plan') String? plan,
      @JsonKey(name: 'price') String? price,
      @JsonKey(name: 'page_count') int? pageCount,
      @JsonKey(name: 'age_limit') String? ageLimit,
      @JsonKey(name: 'read_url') String? readUrl});
}

/// @nodoc
class __$$BookImplCopyWithImpl<$Res>
    extends _$BookCopyWithImpl<$Res, _$BookImpl>
    implements _$$BookImplCopyWith<$Res> {
  __$$BookImplCopyWithImpl(_$BookImpl _value, $Res Function(_$BookImpl) _then)
      : super(_value, _then);

  /// Create a copy of Book
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? author = freezed,
    Object? description = freezed,
    Object? coverImageUrl = freezed,
    Object? rating = freezed,
    Object? genres = freezed,
    Object? createdAt = freezed,
    Object? publishedYear = freezed,
    Object? plan = freezed,
    Object? price = freezed,
    Object? pageCount = freezed,
    Object? ageLimit = freezed,
    Object? readUrl = freezed,
  }) {
    return _then(_$BookImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      coverImageUrl: freezed == coverImageUrl
          ? _value.coverImageUrl
          : coverImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as String?,
      genres: freezed == genres
          ? _value._genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      publishedYear: freezed == publishedYear
          ? _value.publishedYear
          : publishedYear // ignore: cast_nullable_to_non_nullable
              as int?,
      plan: freezed == plan
          ? _value.plan
          : plan // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      pageCount: freezed == pageCount
          ? _value.pageCount
          : pageCount // ignore: cast_nullable_to_non_nullable
              as int?,
      ageLimit: freezed == ageLimit
          ? _value.ageLimit
          : ageLimit // ignore: cast_nullable_to_non_nullable
              as String?,
      readUrl: freezed == readUrl
          ? _value.readUrl
          : readUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BookImpl implements _Book {
  const _$BookImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'title') this.title,
      @JsonKey(name: 'author') this.author,
      @JsonKey(name: 'description') this.description,
      @JsonKey(name: 'cover_image_url') this.coverImageUrl,
      @JsonKey(name: 'rating') this.rating,
      @JsonKey(name: 'genres') final List<int>? genres,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'published_year') this.publishedYear,
      @JsonKey(name: 'plan') this.plan,
      @JsonKey(name: 'price') this.price,
      @JsonKey(name: 'page_count') this.pageCount,
      @JsonKey(name: 'age_limit') this.ageLimit,
      @JsonKey(name: 'read_url') this.readUrl})
      : _genres = genres;

  factory _$BookImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'title')
  final String? title;
  @override
  @JsonKey(name: 'author')
  final String? author;
  @override
  @JsonKey(name: 'description')
  final String? description;
  @override
  @JsonKey(name: 'cover_image_url')
  final String? coverImageUrl;
  @override
  @JsonKey(name: 'rating')
  final String? rating;
  final List<int>? _genres;
  @override
  @JsonKey(name: 'genres')
  List<int>? get genres {
    final value = _genres;
    if (value == null) return null;
    if (_genres is EqualUnmodifiableListView) return _genres;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'published_year')
  final int? publishedYear;
  @override
  @JsonKey(name: 'plan')
  final String? plan;
  @override
  @JsonKey(name: 'price')
  final String? price;
  @override
  @JsonKey(name: 'page_count')
  final int? pageCount;
  @override
  @JsonKey(name: 'age_limit')
  final String? ageLimit;
  @override
  @JsonKey(name: 'read_url')
  final String? readUrl;

  @override
  String toString() {
    return 'Book(id: $id, title: $title, author: $author, description: $description, coverImageUrl: $coverImageUrl, rating: $rating, genres: $genres, createdAt: $createdAt, publishedYear: $publishedYear, plan: $plan, price: $price, pageCount: $pageCount, ageLimit: $ageLimit, readUrl: $readUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.coverImageUrl, coverImageUrl) ||
                other.coverImageUrl == coverImageUrl) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            const DeepCollectionEquality().equals(other._genres, _genres) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.publishedYear, publishedYear) ||
                other.publishedYear == publishedYear) &&
            (identical(other.plan, plan) || other.plan == plan) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.pageCount, pageCount) ||
                other.pageCount == pageCount) &&
            (identical(other.ageLimit, ageLimit) ||
                other.ageLimit == ageLimit) &&
            (identical(other.readUrl, readUrl) || other.readUrl == readUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      author,
      description,
      coverImageUrl,
      rating,
      const DeepCollectionEquality().hash(_genres),
      createdAt,
      publishedYear,
      plan,
      price,
      pageCount,
      ageLimit,
      readUrl);

  /// Create a copy of Book
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookImplCopyWith<_$BookImpl> get copyWith =>
      __$$BookImplCopyWithImpl<_$BookImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookImplToJson(
      this,
    );
  }
}

abstract class _Book implements Book {
  const factory _Book(
      {@JsonKey(name: 'id') final int? id,
      @JsonKey(name: 'title') final String? title,
      @JsonKey(name: 'author') final String? author,
      @JsonKey(name: 'description') final String? description,
      @JsonKey(name: 'cover_image_url') final String? coverImageUrl,
      @JsonKey(name: 'rating') final String? rating,
      @JsonKey(name: 'genres') final List<int>? genres,
      @JsonKey(name: 'created_at') final DateTime? createdAt,
      @JsonKey(name: 'published_year') final int? publishedYear,
      @JsonKey(name: 'plan') final String? plan,
      @JsonKey(name: 'price') final String? price,
      @JsonKey(name: 'page_count') final int? pageCount,
      @JsonKey(name: 'age_limit') final String? ageLimit,
      @JsonKey(name: 'read_url') final String? readUrl}) = _$BookImpl;

  factory _Book.fromJson(Map<String, dynamic> json) = _$BookImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'title')
  String? get title;
  @override
  @JsonKey(name: 'author')
  String? get author;
  @override
  @JsonKey(name: 'description')
  String? get description;
  @override
  @JsonKey(name: 'cover_image_url')
  String? get coverImageUrl;
  @override
  @JsonKey(name: 'rating')
  String? get rating;
  @override
  @JsonKey(name: 'genres')
  List<int>? get genres;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'published_year')
  int? get publishedYear;
  @override
  @JsonKey(name: 'plan')
  String? get plan;
  @override
  @JsonKey(name: 'price')
  String? get price;
  @override
  @JsonKey(name: 'page_count')
  int? get pageCount;
  @override
  @JsonKey(name: 'age_limit')
  String? get ageLimit;
  @override
  @JsonKey(name: 'read_url')
  String? get readUrl;

  /// Create a copy of Book
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookImplCopyWith<_$BookImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
