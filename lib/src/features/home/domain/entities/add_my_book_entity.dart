import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_my_book_entity.freezed.dart';
part 'add_my_book_entity.g.dart';

@freezed
class AddMyBookEntity with _$AddMyBookEntity {
  const factory AddMyBookEntity({
    String? status,
  }) = _AddMyBookEntity;

  factory AddMyBookEntity.fromJson(Map<String, dynamic> json) => _$AddMyBookEntityFromJson(json);
}
