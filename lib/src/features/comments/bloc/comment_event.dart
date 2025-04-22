part of 'comment_bloc.dart';

@freezed
class CommentEvent with _$CommentEvent {
  const factory CommentEvent.started() = _Started;

  const factory CommentEvent.getComments(GetCommentsRequest request) = _GetComments;
  const factory CommentEvent.addComment(AddCommentRequest request) = _AddComment;
}
