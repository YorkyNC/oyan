// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_competition_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetCompetitionRequestImpl _$$GetCompetitionRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$GetCompetitionRequestImpl(
      status: $enumDecode(_$CompetitionStatusEnumMap, json['status']),
    );

Map<String, dynamic> _$$GetCompetitionRequestImplToJson(
        _$GetCompetitionRequestImpl instance) =>
    <String, dynamic>{
      'status': _$CompetitionStatusEnumMap[instance.status]!,
    };

const _$CompetitionStatusEnumMap = {
  CompetitionStatus.done: 'done',
  CompetitionStatus.start: 'start',
  CompetitionStatus.participate: 'participate',
};
