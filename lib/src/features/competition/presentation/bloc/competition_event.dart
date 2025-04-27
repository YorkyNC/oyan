part of 'competition_bloc.dart';

@freezed
class CompetitionEvent with _$CompetitionEvent {
  const factory CompetitionEvent.started() = _Started;

  const factory CompetitionEvent.getCompetition(GetCompetitionRequest request) = _GetCompetition;
}
