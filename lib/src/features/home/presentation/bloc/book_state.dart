part of 'book_bloc.dart';

@freezed
class BookState with _$BookState {
  const factory BookState.loading() = _Loading;
  const factory BookState.loaded({
    required BookViewModel viewModel,
  }) = _Loaded;
  const factory BookState.error(String error) = _Error;
}

@freezed
class BookViewModel with _$BookViewModel {
  const factory BookViewModel({
    GetBooksEntity? books,
  }) = _BookViewModel;
}
