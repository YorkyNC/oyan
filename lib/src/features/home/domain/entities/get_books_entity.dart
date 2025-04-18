import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:oyan/src/features/home/domain/entities/book.dart';

part 'get_books_entity.freezed.dart';
part 'get_books_entity.g.dart';

@freezed
class GetBooksEntity with _$GetBooksEntity {
  const factory GetBooksEntity({
    int? count,
    String? next,
    String? previous,
    List<Book>? results,
  }) = _GetBooksEntity;

  factory GetBooksEntity.fromJson(Map<String, dynamic> json) => _$GetBooksEntityFromJson(json);
}

enum BookType {
  @JsonValue('new')
  newBooks,

  @JsonValue('popular')
  popular,

  @JsonValue('recommended')
  recommended
}
