part of 'news_bloc.dart';

@freezed
class NewsState with _$NewsState {
  const factory NewsState.initial() = _Initial;
  const factory NewsState.loading() = _Loading;
  const factory NewsState.loadingMore({required NewsViewModel viewModel}) =
      _LoadingMore;
  const factory NewsState.loaded({
    required NewsViewModel viewModel,
  }) = _Loaded;
  const factory NewsState.error(String error) = _Error;
}

@freezed
class NewsViewModel with _$NewsViewModel {
  const factory NewsViewModel({
    @Default([]) List<PostEntity> posts,
    @Default([]) List<FeedEntity> feeds,
    @Default(false) bool hasReachedMax,
  }) = _NewsViewModel;
}
