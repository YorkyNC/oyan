import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_genre_entity.freezed.dart';
part 'add_genre_entity.g.dart';

@freezed
class AddGenreEntity with _$AddGenreEntity {
  const factory AddGenreEntity({
    required String status,
  }) = _AddGenreEntity;

  factory AddGenreEntity.fromJson(Map<String, dynamic> json) => _$AddGenreEntityFromJson(json);
}
