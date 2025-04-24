import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_book_entity.freezed.dart';
part 'my_book_entity.g.dart';

@freezed
class MyBookEntity with _$MyBookEntity {
  const factory MyBookEntity({
    @JsonKey(name: 'user') int? user,
    @JsonKey(name: 'book') int? book,
    @JsonKey(name: 'cover_url') String? coverUrl,
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'author') String? author,
    @JsonKey(name: 'completed_at') DateTime? completedAt,
  }) = _MyBookEntity;

  factory MyBookEntity.fromJson(Map<String, dynamic> json) => _$MyBookEntityFromJson(json);
}
