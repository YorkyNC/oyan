// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patch_tournament_requst.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PatchTournamentRequestImpl _$$PatchTournamentRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$PatchTournamentRequestImpl(
      tournamentId: (json['tournament_id'] as num).toInt(),
      status: $enumDecode(_$CompetitionStatusEnumMap, json['status']),
    );

Map<String, dynamic> _$$PatchTournamentRequestImplToJson(
        _$PatchTournamentRequestImpl instance) =>
    <String, dynamic>{
      'tournament_id': instance.tournamentId,
      'status': _$CompetitionStatusEnumMap[instance.status]!,
    };

const _$CompetitionStatusEnumMap = {
  CompetitionStatus.done: 'done',
  CompetitionStatus.start: 'start',
  CompetitionStatus.participate: 'participate',
};
