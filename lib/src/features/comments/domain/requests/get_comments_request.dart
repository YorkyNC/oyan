import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/base/base_models/base_request.dart';

part 'get_comments_request.freezed.dart';
part 'get_comments_request.g.dart';

@freezed
class GetCommentsRequest extends BaseRequest with _$GetCommentsRequest {
  const GetCommentsRequest._();

  const factory GetCommentsRequest({
    @JsonKey(name: 'book_id') required int bookId,
  }) = _GetCommentsRequest;

  factory GetCommentsRequest.fromJson(Map<String, dynamic> json) => _$GetCommentsRequestFromJson(json);
}
