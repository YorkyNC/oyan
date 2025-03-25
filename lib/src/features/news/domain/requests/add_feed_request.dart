import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/base/base_models/base_request.dart';

part 'add_feed_request.freezed.dart';
part 'add_feed_request.g.dart';

@freezed
class AddFeedRequest extends BaseRequest with _$AddFeedRequest {
  const factory AddFeedRequest({
    required String feedType,
    required String referenceId,
  }) = _AddFeedRequest;

  factory AddFeedRequest.fromJson(Map<String, dynamic> json) =>
      _$AddFeedRequestFromJson(json);
}
