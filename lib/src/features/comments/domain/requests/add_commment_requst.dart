import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/base/base_models/base_request.dart';

part 'add_commment_requst.freezed.dart';
part 'add_commment_requst.g.dart';

@freezed
class AddCommentRequest extends BaseRequest with _$AddCommentRequest {
  const AddCommentRequest._();

  const factory AddCommentRequest({
    @JsonKey(name: 'book_id') required int bookId,
    @JsonKey(name: 'content') required String content,
    @JsonKey(name: 'rate') required int rate,
  }) = _AddCommentRequest;

  factory AddCommentRequest.fromJson(Map<String, dynamic> json) => _$AddCommentRequestFromJson(json);
}
