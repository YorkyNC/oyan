import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/base/base_models/base_request.dart';

part 'get_post_request.freezed.dart';
part 'get_post_request.g.dart';

@freezed
class GetPostRequest extends BaseRequest with _$GetPostRequest {
  const factory GetPostRequest({
    required String postId,
  }) = _GetPostRequest;

  factory GetPostRequest.fromJson(Map<String, dynamic> json) =>
      _$GetPostRequestFromJson(json);
}
