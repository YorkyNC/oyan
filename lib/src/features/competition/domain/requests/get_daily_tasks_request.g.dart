// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_daily_tasks_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetDailyTasksRequestImpl _$$GetDailyTasksRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$GetDailyTasksRequestImpl(
      page: (json['page'] as num?)?.toInt(),
      size: (json['size'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$GetDailyTasksRequestImplToJson(
        _$GetDailyTasksRequestImpl instance) =>
    <String, dynamic>{
      'page': instance.page,
      'size': instance.size,
    };
