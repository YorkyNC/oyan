// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_result_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetResultImpl _$$GetResultImplFromJson(Map<String, dynamic> json) =>
    _$GetResultImpl(
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => Result.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GetResultImplToJson(_$GetResultImpl instance) =>
    <String, dynamic>{
      'results': instance.results,
    };

_$ResultImpl _$$ResultImplFromJson(Map<String, dynamic> json) => _$ResultImpl(
      user: json['user'] as String?,
      score: (json['score'] as num?)?.toInt(),
      time: json['time'] as String?,
    );

Map<String, dynamic> _$$ResultImplToJson(_$ResultImpl instance) =>
    <String, dynamic>{
      'user': instance.user,
      'score': instance.score,
      'time': instance.time,
    };
