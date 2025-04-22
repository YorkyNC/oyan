part of 'comment_bloc.dart';

@freezed
class CommentState with _$CommentState {
  const factory CommentState.loading() = _Loading;
  const factory CommentState.loaded({
    required CommentViewModel viewModel,
  }) = _Loaded;
  const factory CommentState.error(String error) = _Error;
}

@freezed
class CommentViewModel with _$CommentViewModel {
  const factory CommentViewModel({
    @Default(null) GetCommentsResponse? comments,
    @Default(null) AddCommentResponse? addComment,
  }) = _CommentViewModel;
}
