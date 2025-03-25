import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/base/base_models/base_request.dart';

part 'get_posts_request.freezed.dart';
part 'get_posts_request.g.dart';

@freezed
class GetPostsRequest extends BaseRequest with _$GetPostsRequest {
  const factory GetPostsRequest({
    required int limit,
    required int offset,
    @JsonKey(name: 'order_asc') required bool orderAsc,
    int? resolution,
    String? feedType,
    @JsonKey(name: 'school_id') required String schoolId,
    required String role,
    @JsonKey(name: 'child_id') String? childId,
  }) = _GetPostsRequest;

  factory GetPostsRequest.fromJson(Map<String, dynamic> json) =>
      _$GetPostsRequestFromJson(json);
}
