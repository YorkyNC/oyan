import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/base/base_models/base_request.dart';

part 'get_feeds_request.freezed.dart';
part 'get_feeds_request.g.dart';

@freezed
class GetFeedsRequest extends BaseRequest with _$GetFeedsRequest {
  const factory GetFeedsRequest({
    required int limit,
    required int offset,
  }) = _GetFeedsRequest;

  factory GetFeedsRequest.fromJson(Map<String, dynamic> json) =>
      _$GetFeedsRequestFromJson(json);
}
