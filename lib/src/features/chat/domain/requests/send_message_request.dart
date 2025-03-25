import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/base/base_models/base_request.dart';
import '../../../attachment/domain/entities/attachment_entity.dart';
import '../../data/models/chat_entity.dart';

part 'send_message_request.freezed.dart';
part 'send_message_request.g.dart';

@freezed
class SendMessageRequest extends BaseRequest with _$SendMessageRequest {
  const factory SendMessageRequest({
    required String text,
    String? chatId,
    String? forwardedMessageId,
    String? repliedMessageId,
    ChatMemberEntity? author,
    String? messageId,
    DateTime? createdDate,
    @Default(false) bool isViewed,
    List<AttachmentEntity>? attachments,
  }) = _SendMessageRequest;

  factory SendMessageRequest.fromJson(Map<String, dynamic> json) =>
      _$SendMessageRequestFromJson(json);
}
