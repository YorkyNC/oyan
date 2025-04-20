import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:oyan/src/features/genre/domain/entities/add_genre_entity.dart';
import 'package:oyan/src/features/genre/domain/entities/genre_entity.dart';
import 'package:oyan/src/features/genre/domain/requests/add_genre_request.dart';
import 'package:oyan/src/features/genre/domain/requests/get_genre_request.dart';
import 'package:oyan/src/features/genre/domain/usecases/add_genre_use_case.dart';
import 'package:oyan/src/features/genre/domain/usecases/get_genre_use_case.dart';

import '../../../../core/base/base_bloc/bloc/base_bloc.dart';

part 'genre_bloc.freezed.dart';
part 'genre_event.dart';
part 'genre_state.dart';

class GenreBloc extends BaseBloc<GenreEvent, GenreState> {
  GenreBloc(this.getGenreUseCase, this.addGenreUseCase) : super(const GenreState.loading());

  final GetGenreUseCase getGenreUseCase;
  final AddGenreUseCase addGenreUseCase;

  GenreViewModel _viewModel = const GenreViewModel();

  @override
  Future<void> onEventHandler(GenreEvent event, Emitter emit) async {
    await event.when(
      started: () => _started(event as _Started),
      getGenre: (request) => _getGenre(event as _GetGenre, emit as Emitter<GenreState>),
      addGenre: (request) => _addGenre(event as _AddGenre, emit as Emitter<GenreState>),
    );
  }

  Future<void> _started(_Started event) async {}
  Future<void> _getGenre(_GetGenre event, Emitter emit) async {
    emit(const GenreState.loading());

    final result = await getGenreUseCase.call(const GetGenreRequest());
    if (result.failure != null) {
      return emit(GenreState.error(result.failure!.message));
    }

    _viewModel = _viewModel.copyWith(genres: result.data);

    return emit(GenreState.loaded(viewModel: _viewModel));
  }

  Future<void> _addGenre(_AddGenre event, Emitter emit) async {
    emit(const GenreState.loading());

    final result = await addGenreUseCase.call(event.request);
    if (result.failure != null) {
      return emit(GenreState.error(result.failure!.message));
    }

    _viewModel = _viewModel.copyWith(addGenre: result.data);
    return emit(GenreState.loaded(viewModel: _viewModel));
  }
}
