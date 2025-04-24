import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:oyan/src/features/home/domain/entities/book.dart';

part 'get_book_by_id_entity.freezed.dart';
part 'get_book_by_id_entity.g.dart';

@freezed
class GetBookByIdEntity with _$GetBookByIdEntity {
  const factory GetBookByIdEntity({
    String? status,
    Book? data,
  }) = _GetBookByIdEntity;

  factory GetBookByIdEntity.fromJson(Map<String, dynamic> json) => _$GetBookByIdEntityFromJson(json);
}
