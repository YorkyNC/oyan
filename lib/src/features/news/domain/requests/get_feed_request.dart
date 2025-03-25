import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/base/base_models/base_request.dart';

part 'get_feed_request.freezed.dart';
part 'get_feed_request.g.dart';

@freezed
class GetFeedRequest extends BaseRequest with _$GetFeedRequest {
  const factory GetFeedRequest({
    required String feedId,
  }) = _GetFeedRequest;

  factory GetFeedRequest.fromJson(Map<String, dynamic> json) =>
      _$GetFeedRequestFromJson(json);
}
