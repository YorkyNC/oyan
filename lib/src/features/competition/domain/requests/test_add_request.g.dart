// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test_add_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TestAddRequestImpl _$$TestAddRequestImplFromJson(Map<String, dynamic> json) =>
    _$TestAddRequestImpl(
      tournamentId: (json['tournament_id'] as num?)?.toInt(),
      score: (json['score'] as num).toInt(),
      time: json['time'] as String?,
    );

Map<String, dynamic> _$$TestAddRequestImplToJson(
        _$TestAddRequestImpl instance) =>
    <String, dynamic>{
      'tournament_id': instance.tournamentId,
      'score': instance.score,
      'time': instance.time,
    };
