import 'package:fpdart/fpdart.dart';
import 'package:oyan/src/features/chat/domain/requests/view_message_request.dart';

import '../../../../core/exceptions/domain_exception.dart';
import '../../data/models/chat_entity.dart';
import '../requests/get_chats_request.dart';
import '../requests/get_message_request.dart';
import '../requests/get_messages_request.dart';
import '../requests/send_message_request.dart';

abstract class IChatRepository {
  Future<Either<DomainException, List<ChatEntity>>> getChats(GetChatsRequest request);
  Future<Either<DomainException, List<MessageEntity>>> getMessages(GetMessagesRequest request);
  Future<Either<DomainException, MessageEntity>> getMessage(GetMessageRequest request);
  Future<Either<DomainException, SentMessageEntity>> sendMessage(SendMessageRequest request);
  Future<Either<DomainException, String>> viewMessage(ViewMessageRequest request);
}
