import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:oyan/src/features/competition/domain/entities/get_competition_entity.dart';
import 'package:oyan/src/features/competition/domain/requests/get_competition_request.dart';
import 'package:oyan/src/features/competition/domain/usecases/get_competition_use_case.dart';

import '../../../../core/base/base_bloc/bloc/base_bloc.dart';

part 'competition_bloc.freezed.dart';
part 'competition_event.dart';
part 'competition_state.dart';

class CompetitionBloc extends BaseBloc<CompetitionEvent, CompetitionState> {
  CompetitionBloc(this.getCompetitionUseCase) : super(const CompetitionState.loading());

  final GetCompetitionUseCase getCompetitionUseCase;
  CompetitionViewModel _viewModel = const CompetitionViewModel();

  @override
  Future<void> onEventHandler(CompetitionEvent event, Emitter emit) async {
    await event.when(
      started: () => _started(event as _Started),
      getCompetition: (request) => _getCompetition(event as _GetCompetition, emit as Emitter<CompetitionState>),
    );
  }

  Future<void> _started(_Started event) async {}

  Future<void> _getCompetition(_GetCompetition event, Emitter emit) async {
    emit(const CompetitionState.loading());

    final doneResult = await getCompetitionUseCase.call(const GetCompetitionRequest(status: CompetitionStatus.done));
    if (doneResult.failure != null) {
      return emit(CompetitionState.error(doneResult.failure!.message));
    }

    final participateResult =
        await getCompetitionUseCase.call(const GetCompetitionRequest(status: CompetitionStatus.participate));
    if (participateResult.failure != null) {
      return emit(CompetitionState.error(participateResult.failure!.message));
    }

    final startResult = await getCompetitionUseCase.call(const GetCompetitionRequest(status: CompetitionStatus.start));
    if (startResult.failure != null) {
      return emit(CompetitionState.error(startResult.failure!.message));
    }

    _viewModel = _viewModel.copyWith(
      doneCompetition: doneResult.data,
      participateCompetition: participateResult.data,
      startCompetition: startResult.data,
    );

    return emit(CompetitionState.loaded(viewModel: _viewModel));
  }
}
