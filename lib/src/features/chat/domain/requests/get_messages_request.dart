import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/base/base_models/base_request.dart';

part 'get_messages_request.freezed.dart';
part 'get_messages_request.g.dart';

@freezed
class GetMessagesRequest extends BaseRequest with _$GetMessagesRequest {
  const factory GetMessagesRequest({
    required String schoolId,
    required String chatId,
    final String? messageId,
    final int? before,
    final int? after,
  }) = _GetMessagesRequest;

  factory GetMessagesRequest.fromJson(Map<String, dynamic> json) =>
      _$GetMessagesRequestFromJson(json);
}
