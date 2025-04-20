part of 'genre_bloc.dart';

@freezed
class GenreState with _$GenreState {
  const factory GenreState.loading() = _Loading;
  const factory GenreState.loaded({
    required GenreViewModel viewModel,
  }) = _Loaded;
  const factory GenreState.error(String error) = _Error;
}

@freezed
class GenreViewModel with _$GenreViewModel {
  const factory GenreViewModel({
    @Default(null) GenreEntity? genres,
    @Default(null) AddGenreEntity? addGenre,
  }) = _GenreViewModel;
}
