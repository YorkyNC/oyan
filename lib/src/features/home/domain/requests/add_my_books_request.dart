import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/base/base_models/base_request.dart';

part 'add_my_books_request.freezed.dart';
part 'add_my_books_request.g.dart';

@freezed
class AddMyBooksRequest extends BaseRequest with _$AddMyBooksRequest {
  const AddMyBooksRequest._();

  const factory AddMyBooksRequest({
    required String username,
    required String filter,
    @JsonKey(name: 'book_id') required int bookId,
  }) = _AddMyBooksRequest;

  factory AddMyBooksRequest.fromJson(Map<String, dynamic> json) => _$AddMyBooksRequestFromJson(json);
}
