import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/base/base_models/base_request.dart';

part 'get_daily_tasks_request.freezed.dart';
part 'get_daily_tasks_request.g.dart';

@freezed
class GetDailyTasksRequest extends BaseRequest with _$GetDailyTasksRequest {
  const GetDailyTasksRequest._();
  const factory GetDailyTasksRequest({
    int? page,
    int? size,
  }) = _GetDailyTasksRequest;

  factory GetDailyTasksRequest.fromJson(Map<String, dynamic> json) => _$GetDailyTasksRequestFromJson(json);
}
