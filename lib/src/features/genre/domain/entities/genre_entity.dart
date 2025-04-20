import 'package:freezed_annotation/freezed_annotation.dart';

part 'genre_entity.freezed.dart';
part 'genre_entity.g.dart';

@freezed
class Genre with _$Genre {
  const factory Genre({
    required int id,
    required String genre,
  }) = _Genre;

  factory Genre.fromJson(Map<String, dynamic> json) => _$GenreFromJson(json);
}

@freezed
class GenreEntity with _$GenreEntity {
  const factory GenreEntity({
    required String status,
    required List<Genre> data,
  }) = _GenreEntity;

  factory GenreEntity.fromJson(Map<String, dynamic> json) => _$GenreEntityFromJson(json);

  factory GenreEntity.fromList(List<dynamic> json) {
    return GenreEntity(
      status: "success",
      data: json.map((item) => Genre.fromJson(item)).toList(),
    );
  }
}
