// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_daily_tasks_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetDailyTasksImpl _$$GetDailyTasksImplFromJson(Map<String, dynamic> json) =>
    _$GetDailyTasksImpl(
      count: (json['count'] as num?)?.toInt(),
      next: json['next'] as String?,
      previous: json['previous'] as String?,
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => DailyTask.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GetDailyTasksImplToJson(_$GetDailyTasksImpl instance) =>
    <String, dynamic>{
      'count': instance.count,
      'next': instance.next,
      'previous': instance.previous,
      'results': instance.results,
    };

_$DailyTaskImpl _$$DailyTaskImplFromJson(Map<String, dynamic> json) =>
    _$DailyTaskImpl(
      id: (json['id'] as num?)?.toInt(),
      task: json['task'] as String?,
      score: (json['score'] as num?)?.toInt(),
      url: json['url'] as String?,
      urlText: json['url_text'] as String?,
      completed: json['completed'] as bool?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$$DailyTaskImplToJson(_$DailyTaskImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'task': instance.task,
      'score': instance.score,
      'url': instance.url,
      'url_text': instance.urlText,
      'completed': instance.completed,
      'created_at': instance.createdAt?.toIso8601String(),
    };
