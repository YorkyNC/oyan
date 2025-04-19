import 'package:freezed_annotation/freezed_annotation.dart';

part 'book.freezed.dart';
part 'book.g.dart';

@freezed
class Book with _$Book {
  const factory Book({
    @JsonKey(name: 'id') int? id,
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
    @JsonKey(name: 'read_url') String? readUrl,
  }) = _Book;

  factory Book.fromJson(Map<String, dynamic> json) => _$BookFromJson(json);
}
