import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/base/base_models/base_request.dart';

part 'get_daily_hits_request.freezed.dart';
part 'get_daily_hits_request.g.dart';

@freezed
class GetDailyHitsRequest extends BaseRequest with _$GetDailyHitsRequest {
  const GetDailyHitsRequest._();

  const factory GetDailyHitsRequest() = _GetDailyHitsRequest;

  factory GetDailyHitsRequest.fromJson(Map<String, dynamic> json) => _$GetDailyHitsRequestFromJson(json);
}
