// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_competition_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetCompetitionEntityImpl _$$GetCompetitionEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$GetCompetitionEntityImpl(
      count: (json['count'] as num?)?.toInt(),
      next: json['next'] as String?,
      previous: json['previous'] as String?,
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => Competition.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GetCompetitionEntityImplToJson(
        _$GetCompetitionEntityImpl instance) =>
    <String, dynamic>{
      'count': instance.count,
      'next': instance.next,
      'previous': instance.previous,
      'results': instance.results,
    };
