import 'package:freezed_annotation/freezed_annotation.dart';

part 'book.freezed.dart';
part 'book.g.dart';

@freezed
class Book with _$Book {
  const factory Book({
    int? id,
    String? title,
    String? author,
    String? description,
    @JsonKey(name: 'cover_image_url') String? coverImageUrl,
    String? rating,
    List<int>? genres,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'published_year') int? publishedYear,
    @JsonKey(name: 'plan') String? plan,
    @JsonKey(name: 'price') String? price,
    @JsonKey(name: 'page_count') int? pageCount,
    @JsonKey(name: 'age_limit') String? ageLimit,
    @JsonKey(name: 'read_url') String? readUrl,
    @JsonKey(name: 'user_statuses') List<PersonalBookType>? userStatuses,
    // PersonalBookType? isFav,
  }) = _Book;

  factory Book.fromJson(Map<String, dynamic> json) => _$BookFromJson(json);
}

enum PersonalBookType {
  @JsonValue('completed')
  completed,

  @JsonValue('favourite')
  favourite,

  @JsonValue('to_read')
  toRead,

  @JsonValue('none')
  none,
}
