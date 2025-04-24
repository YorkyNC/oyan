import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/base/base_models/base_request.dart';

part 'get_book_by_id_request.freezed.dart';
part 'get_book_by_id_request.g.dart';

@freezed
class GetBookByIdRequest extends BaseRequest with _$GetBookByIdRequest {
  const GetBookByIdRequest._();

  const factory GetBookByIdRequest({
    @JsonKey(name: 'book_id') required int bookId,
  }) = _GetBookByIdRequest;

  factory GetBookByIdRequest.fromJson(Map<String, dynamic> json) => _$GetBookByIdRequestFromJson(json);
}
