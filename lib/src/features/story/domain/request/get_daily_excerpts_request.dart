import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/base/base_models/base_request.dart';

part 'get_daily_excerpts_request.freezed.dart';
part 'get_daily_excerpts_request.g.dart';

@freezed
class GetDailyExcerptsRequest extends BaseRequest with _$GetDailyExcerptsRequest {
  const GetDailyExcerptsRequest._();

  const factory GetDailyExcerptsRequest() = _GetDailyExcerptsRequest;

  factory GetDailyExcerptsRequest.fromJson(Map<String, dynamic> json) => _$GetDailyExcerptsRequestFromJson(json);
}
