import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:oyan/src/features/home/domain/entities/book.dart';

part 'get_books_entity.freezed.dart';
part 'get_books_entity.g.dart';

@freezed
class GetBooksEntity with _$GetBooksEntity {
  const factory GetBooksEntity({
    @JsonKey(name: 'count') int? count,
    @JsonKey(name: 'next') String? next,
    @JsonKey(name: 'previous') String? previous,
    @JsonKey(name: 'results') List<Book>? results,
  }) = _GetBooksEntity;

  factory GetBooksEntity.fromJson(Map<String, dynamic> json) => _$GetBooksEntityFromJson(json);
}
