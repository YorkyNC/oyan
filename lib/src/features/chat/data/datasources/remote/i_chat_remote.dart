import 'package:fpdart/fpdart.dart';
import 'package:oyan/src/features/chat/domain/requests/get_message_request.dart';

import '../../../../../core/exceptions/domain_exception.dart';
import '../../../domain/requests/get_chats_request.dart';
import '../../../domain/requests/get_messages_request.dart';
import '../../../domain/requests/send_message_request.dart';
import '../../models/chat_entity.dart';

abstract class IChatRemote {
  Future<Either<DomainException, List<ChatEntity>>> getChats(GetChatsRequest request);
  Future<Either<DomainException, List<MessageEntity>>> getMessages(GetMessagesRequest request);
  Future<Either<DomainException, MessageEntity>> getMessage(GetMessageRequest request);
  Future<Either<DomainException, SentMessageEntity>> sendMessage(SendMessageRequest request);
  Future<Either<DomainException, String>> viewMessage(String messageId);
}
