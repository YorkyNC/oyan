import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:oyan/src/features/competition/domain/entities/get_competition_entity.dart';
import 'package:oyan/src/features/competition/domain/entities/get_daily_tasks_entity.dart';
import 'package:oyan/src/features/competition/domain/entities/get_result_entity.dart';
import 'package:oyan/src/features/competition/domain/entities/get_test_entity.dart';
import 'package:oyan/src/features/competition/domain/entities/patch_tournament_entity.dart';
import 'package:oyan/src/features/competition/domain/entities/test_add_entity.dart';
import 'package:oyan/src/features/competition/domain/requests/get_competition_request.dart';
import 'package:oyan/src/features/competition/domain/requests/get_daily_tasks_request.dart';
import 'package:oyan/src/features/competition/domain/requests/get_result_request.dart';
import 'package:oyan/src/features/competition/domain/requests/patch_tournament_requst.dart';
import 'package:oyan/src/features/competition/domain/requests/test_add_request.dart';
import 'package:oyan/src/features/competition/domain/requests/test_request.dart';
import 'package:oyan/src/features/competition/domain/usecases/get_competition_use_case.dart';
import 'package:oyan/src/features/competition/domain/usecases/get_daily_tasks_use_case.dart';
import 'package:oyan/src/features/competition/domain/usecases/get_detail__use_case.dart';
import 'package:oyan/src/features/competition/domain/usecases/get_result_use_case.dart';
import 'package:oyan/src/features/competition/domain/usecases/get_test_use_case.dart';
import 'package:oyan/src/features/competition/domain/usecases/patch_tournament_use_case.dart';
import 'package:oyan/src/features/competition/domain/usecases/test_add_use_case.dart';

import '../../../../core/base/base_bloc/bloc/base_bloc.dart';

part 'competition_bloc.freezed.dart';
part 'competition_event.dart';
part 'competition_state.dart';

class CompetitionBloc extends BaseBloc<CompetitionEvent, CompetitionState> {
  CompetitionBloc(this.getCompetitionUseCase, this.getDailyTasksUseCase, this.getResultUseCase, this.getDetailUseCase,
      this.patchTournamentUseCase, this.getTestUseCase, this.testAddUseCase)
      : super(const CompetitionState.loading());

  final GetCompetitionUseCase getCompetitionUseCase;
  final GetDailyTasksUseCase getDailyTasksUseCase;
  final GetResultUseCase getResultUseCase;
  final GetDetailUseCase getDetailUseCase;
  final PatchTournamentUseCase patchTournamentUseCase;
  final GetTestUseCase getTestUseCase;
  final TestAddUseCase testAddUseCase;
  CompetitionViewModel _viewModel = const CompetitionViewModel();

  @override
  Future<void> onEventHandler(CompetitionEvent event, Emitter emit) async {
    await event.when(
      started: () => _started(event as _Started),
      getCompetition: (request) => _getCompetition(event as _GetCompetition, emit as Emitter<CompetitionState>),
      getDailyTasks: (request) => _getDailyTasks(event as _GetDailyTasks, emit as Emitter<CompetitionState>),
      getResult: (request) => _getResult(event as _GetResult, emit as Emitter<CompetitionState>),
      getDetail: (request) => _getDetail(event as _GetDetail, emit as Emitter<CompetitionState>),
      patchTournament: (request) => _patchTournament(event as _PatchTournament, emit as Emitter<CompetitionState>),
      getTest: (request) => _getTest(event as _GetTest, emit as Emitter<CompetitionState>),
      testAdd: (request) => _testAdd(event as _TestAdd, emit as Emitter<CompetitionState>),
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

  Future<void> _getDailyTasks(_GetDailyTasks event, Emitter emit) async {
    emit(const CompetitionState.loading());

    final result = await getDailyTasksUseCase.call(const GetDailyTasksRequest());
    if (result.failure != null) {
      return emit(CompetitionState.error(result.failure!.message));
    }

    _viewModel = _viewModel.copyWith(dailyTasks: result.data);
    return emit(CompetitionState.loaded(viewModel: _viewModel));
  }

  Future<void> _getResult(_GetResult event, Emitter emit) async {
    emit(const CompetitionState.loading());

    final result = await getResultUseCase.call(GetResultRequest(tournamentId: event.request.tournamentId));
    if (result.failure != null) {
      return emit(CompetitionState.error(result.failure!.message));
    }

    _viewModel = _viewModel.copyWith(result: result.data);
    return emit(CompetitionState.loaded(viewModel: _viewModel));
  }

  Future<void> _getDetail(_GetDetail event, Emitter emit) async {
    emit(const CompetitionState.loading());

    final result = await getDetailUseCase.call(GetResultRequest(tournamentId: event.request.tournamentId));
    if (result.failure != null) {
      return emit(CompetitionState.error(result.failure!.message));
    }

    _viewModel = _viewModel.copyWith(detail: result.data);
    return emit(CompetitionState.loaded(viewModel: _viewModel));
  }

  Future<void> _patchTournament(_PatchTournament event, Emitter emit) async {
    emit(const CompetitionState.loading());

    final result = await patchTournamentUseCase.call(PatchTournamentRequest(
      tournamentId: event.request.tournamentId,
      status: event.request.status,
    ));
    if (result.failure != null) {
      return emit(CompetitionState.error(result.failure!.message));
    }

    _viewModel = _viewModel.copyWith(patchTournament: result.data);
    return emit(CompetitionState.loaded(viewModel: _viewModel));
  }

  Future<void> _getTest(_GetTest event, Emitter emit) async {
    emit(const CompetitionState.loading());

    final result = await getTestUseCase.call(TestRequest(tournamentId: event.request.tournamentId));
    if (result.failure != null) {
      return emit(CompetitionState.error(result.failure!.message));
    }

    _viewModel = _viewModel.copyWith(test: result.data);
    return emit(CompetitionState.loaded(viewModel: _viewModel));
  }

  Future<void> _testAdd(_TestAdd event, Emitter emit) async {
    emit(const CompetitionState.loading());

    final result = await testAddUseCase.call(TestAddRequest(
      tournamentId: event.request.tournamentId,
      score: event.request.score,
      time: event.request.time,
    ));
    if (result.failure != null) {
      return emit(CompetitionState.error(result.failure!.message));
    }

    _viewModel = _viewModel.copyWith(testAdd: result.data);
    return emit(CompetitionState.loaded(viewModel: _viewModel));
  }
}
