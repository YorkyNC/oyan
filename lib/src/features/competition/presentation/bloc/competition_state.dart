part of 'competition_bloc.dart';

@freezed
class CompetitionState with _$CompetitionState {
  const factory CompetitionState.loading() = _Loading;
  const factory CompetitionState.loaded({
    required CompetitionViewModel viewModel,
  }) = _Loaded;
  const factory CompetitionState.error(String error) = _Error;
}

@freezed
class CompetitionViewModel with _$CompetitionViewModel {
  const factory CompetitionViewModel({
    @Default(null) GetCompetitionEntity? doneCompetition,
    @Default(null) GetCompetitionEntity? participateCompetition,
    @Default(null) GetCompetitionEntity? startCompetition,
    @Default(null) GetDailyTasks? dailyTasks,
    @Default(null) GetResult? result,
    @Default(null) GetCompetitionEntity? detail,
    @Default(null) PatchTournamentEntity? patchTournament,
    @Default(null) GetTestEntity? test,
    @Default(null) TestAddEntity? testAdd,
  }) = _CompetitionViewModel;
}
