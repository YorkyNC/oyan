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
    String? coverImageUrl,
    double? rating,
    List<int>? genres,
    DateTime? createdAt,
    int? publishedYear,
    String? plan,
    double? price,
    int? pageCount,
    String? ageLimit,
    String? readUrl,
  }) = _Book;

  factory Book.fromJson(Map<String, dynamic> json) => _$BookFromJson(json);
}
