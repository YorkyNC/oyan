import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:oyan/src/features/home/domain/entities/get_books_entity.dart';
import 'package:oyan/src/features/story/domain/entities/get_daily_excerpts.dart';
import 'package:oyan/src/features/story/domain/request/get_daily_excerpts_request.dart';
import 'package:oyan/src/features/story/domain/request/get_daily_hits_request.dart';
import 'package:oyan/src/features/story/domain/usecases/get_daily_hits_use_case.dart';
import 'package:oyan/src/features/story/domain/usecases/get_daily_use_case.dart';

import '../../../../core/base/base_bloc/bloc/base_bloc.dart';

part 'story_bloc.freezed.dart';
part 'story_event.dart';
part 'story_state.dart';

class StoryBloc extends BaseBloc<StoryEvent, StoryState> {
  StoryBloc(this.getDailyUseCase, this.getDailyHitsUseCase) : super(const StoryState.loading());

  final GetDailyUseCase getDailyUseCase;
  final GetDailyHitsUseCase getDailyHitsUseCase;
  StoryViewModel _viewModel = const StoryViewModel();

  @override
  Future<void> onEventHandler(StoryEvent event, Emitter emit) async {
    await event.when(
      started: () => _started(event as _Started),
      getDailyExcerpts: (request) => _getDailyExcerpts(event as _GetDailyExcerpts, emit as Emitter<StoryState>),
      getDailyHits: (request) => _getDailyHits(event as _GetDailyHits, emit as Emitter<StoryState>),
    );
  }

  Future<void> _started(_Started event) async {}

  Future<void> _getDailyExcerpts(_GetDailyExcerpts event, Emitter emit) async {
    emit(const StoryState.loading());
    final result = await getDailyUseCase.call(event.request);
    if (result.failure != null) {
      return emit(StoryState.error(result.failure!.message));
    }

    _viewModel = _viewModel.copyWith(dailyExcerpts: result.data);
    return emit(StoryState.loaded(viewModel: _viewModel));
  }

  Future<void> _getDailyHits(_GetDailyHits event, Emitter emit) async {
    emit(const StoryState.loading());
    final result = await getDailyHitsUseCase.call(event.request);
    if (result.failure != null) {
      return emit(StoryState.error(result.failure!.message));
    }

    _viewModel = _viewModel.copyWith(dailyHits: result.data);
    return emit(StoryState.loaded(viewModel: _viewModel));
  }
}
