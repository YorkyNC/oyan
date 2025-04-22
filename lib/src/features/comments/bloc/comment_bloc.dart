import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:oyan/src/core/base/base_bloc/bloc/base_bloc.dart';
import 'package:oyan/src/features/comments/domain/entities/add_comments_response.dart';
import 'package:oyan/src/features/comments/domain/entities/get_commets_response.dart';
import 'package:oyan/src/features/comments/domain/requests/add_commment_requst.dart';
import 'package:oyan/src/features/comments/domain/requests/get_comments_request.dart';
import 'package:oyan/src/features/comments/domain/usecases/add_comment_use_case.dart';
import 'package:oyan/src/features/comments/domain/usecases/get_comment_use_case.dart';

part 'comment_bloc.freezed.dart';
part 'comment_event.dart';
part 'comment_state.dart';

class CommentBloc extends BaseBloc<CommentEvent, CommentState> {
  CommentBloc(this.getCommentUseCase, this.addCommentUseCase) : super(const CommentState.loading());

  final GetCommentUseCase getCommentUseCase;
  final AddCommentUseCase addCommentUseCase;

  final CommentViewModel _viewModel = const CommentViewModel();

  @override
  Future<void> onEventHandler(CommentEvent event, Emitter emit) async {
    await event.when(
      started: () => _started(event as _Started),
      getComments: (request) => _getComments(event as _GetComments, emit as Emitter<CommentState>),
      addComment: (request) => _addComment(event as _AddComment, emit as Emitter<CommentState>),
    );
  }

  Future<void> _started(_Started event) async {}

  Future<void> _getComments(_GetComments event, Emitter emit) async {
    emit(const CommentState.loading());

    final result = await getCommentUseCase.call(event.request);

    result.fold(
      (failure) => emit(CommentState.error(failure.message)),
      (comments) => emit(CommentState.loaded(viewModel: _viewModel.copyWith(comments: comments))),
    );
  }

  Future<void> _addComment(_AddComment event, Emitter emit) async {
    // First emit a commentAddingState to indicate we're processing
    emit(const CommentState.loading());

    final result = await addCommentUseCase.call(event.request);

    result.fold(
      (failure) => emit(CommentState.error(failure.message)),
      (addComment) {
        // Emit a success state specifically for comment addition
        emit(CommentState.loaded(viewModel: _viewModel.copyWith(addComment: addComment)));

        // Don't fetch comments automatically here
        // Let the UI decide when to fetch comments
      },
    );
  }
}
