part of 'genre_bloc.dart';

@freezed
class GenreEvent with _$GenreEvent {
  const factory GenreEvent.started() = _Started;

  const factory GenreEvent.getGenre(GetGenreRequest request) = _GetGenre;

  const factory GenreEvent.addGenre(AddGenreRequest request) = _AddGenre;
}
