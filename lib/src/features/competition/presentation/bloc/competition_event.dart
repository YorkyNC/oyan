part of 'competition_bloc.dart';

@freezed
class CompetitionEvent with _$CompetitionEvent {
  const factory CompetitionEvent.started() = _Started;

  const factory CompetitionEvent.getCompetition(GetCompetitionRequest request) = _GetCompetition;

  const factory CompetitionEvent.getDailyTasks(GetDailyTasksRequest request) = _GetDailyTasks;

  const factory CompetitionEvent.getResult(GetResultRequest request) = _GetResult;

  const factory CompetitionEvent.getDetail(GetResultRequest request) = _GetDetail;

  const factory CompetitionEvent.patchTournament(PatchTournamentRequest request) = _PatchTournament;
}
