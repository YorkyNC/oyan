part of 'story_bloc.dart';

@freezed
class StoryState with _$StoryState {
  const factory StoryState.loading() = _Loading;
  const factory StoryState.loaded({
    required StoryViewModel viewModel,
  }) = _Loaded;
  const factory StoryState.error(String error) = _Error;
}

@freezed
class StoryViewModel with _$StoryViewModel {
  const factory StoryViewModel({
    @Default(null) GetDailyExcerpts? dailyExcerpts,
    @Default(null) GetBooksEntity? dailyHits,
  }) = _StoryViewModel;
}
