import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:oyan/src/features/home/domain/entities/my_book_entity.dart';

part 'get_my_books_entity.freezed.dart';
part 'get_my_books_entity.g.dart';

@freezed
class GetMyBooksEntity with _$GetMyBooksEntity {
  const factory GetMyBooksEntity({
    @JsonKey(name: 'count') int? count,
    @JsonKey(name: 'next') String? next,
    @JsonKey(name: 'previous') String? previous,
    @JsonKey(name: 'results') List<MyBookEntity>? results,
  }) = _GetMyBooksEntity;

  factory GetMyBooksEntity.fromJson(Map<String, dynamic> json) => _$GetMyBooksEntityFromJson(json);
}
