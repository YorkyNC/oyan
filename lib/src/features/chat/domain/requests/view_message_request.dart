import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/base/base_models/base_request.dart';

part 'view_message_request.freezed.dart';
part 'view_message_request.g.dart';

@freezed
class ViewMessageRequest extends BaseRequest with _$ViewMessageRequest {
  const factory ViewMessageRequest({
    required String messageId,
  }) = _ViewMessageRequest;

  factory ViewMessageRequest.fromJson(Map<String, dynamic> json) =>
      _$ViewMessageRequestFromJson(json);
}
