import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/base/base_models/base_request.dart';

part 'get_message_request.freezed.dart';
part 'get_message_request.g.dart';

@freezed
class GetMessageRequest extends BaseRequest with _$GetMessageRequest {
  const factory GetMessageRequest({
    required String messageId,
    required String schoolId,
    final String? role,
  }) = _GetMessageRequest;

  factory GetMessageRequest.fromJson(Map<String, dynamic> json) =>
      _$GetMessageRequestFromJson(json);
}
