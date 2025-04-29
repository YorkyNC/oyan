import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_daily_tasks_entity.freezed.dart';
part 'get_daily_tasks_entity.g.dart';

@freezed
class GetDailyTasks with _$GetDailyTasks {
  const factory GetDailyTasks({
    int? count,
    String? next,
    String? previous,
    List<DailyTask>? results,
  }) = _GetDailyTasks;

  factory GetDailyTasks.fromJson(Map<String, dynamic> json) => _$GetDailyTasksFromJson(json);
}

@freezed
class DailyTask with _$DailyTask {
  const factory DailyTask({
    int? id,
    String? task,
    int? score,
    String? url,
    @JsonKey(name: 'url_text') String? urlText,
    bool? completed,
    @JsonKey(name: 'created_at') DateTime? createdAt,
  }) = _DailyTask;

  factory DailyTask.fromJson(Map<String, dynamic> json) => _$DailyTaskFromJson(json);
}
