import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/base/base_models/base_request.dart';

part 'my_book_request.freezed.dart';
part 'my_book_request.g.dart';

@freezed
class MyBookRequest extends BaseRequest with _$MyBookRequest {
  const MyBookRequest._();

  const factory MyBookRequest({
    required String username,
    required String filter,
  }) = _MyBookRequest;

  factory MyBookRequest.fromJson(Map<String, dynamic> json) => _$MyBookRequestFromJson(json);
}
