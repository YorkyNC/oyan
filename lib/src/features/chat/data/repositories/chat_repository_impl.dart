import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/exceptions/domain_exception.dart';
import '../../../../core/utils/loggers/logger.dart';
import '../../domain/repositories/i_chat_repository.dart';
import '../../domain/requests/get_chats_request.dart';
import '../../domain/requests/get_message_request.dart';
import '../../domain/requests/get_messages_request.dart';
import '../../domain/requests/send_message_request.dart';
import '../../domain/requests/view_message_request.dart';
import '../datasources/remote/chat_remote_impl.dart';
import '../datasources/remote/i_chat_remote.dart';
import '../models/chat_entity.dart';

@named
@LazySingleton(as: IChatRepository)
class ChatRepositoryImpl implements IChatRepository {
  final IChatRemote _chatImpl;

  ChatRepositoryImpl(@Named.from(ChatRemoteImpl) this._chatImpl);

  @override
  Future<Either<DomainException, List<ChatEntity>>> getChats(GetChatsRequest request) async {
    try {
      final requests = await _chatImpl.getChats(request);

      return requests.fold(
        (error) => Left(error),
        (response) => Right(response),
      );
    } catch (e) {
      Log.e(e);
      return Left(UnknownException(message: e.toString()));
    }
  }

  @override
  Future<Either<DomainException, List<MessageEntity>>> getMessages(
      GetMessagesRequest request) async {
    try {
      final requests = await _chatImpl.getMessages(request);

      return requests.fold(
        (error) => Left(error),
        (response) => Right(response),
      );
    } catch (e) {
      Log.e(e);
      return Left(UnknownException(message: e.toString()));
    }
  }

  @override
  Future<Either<DomainException, MessageEntity>> getMessage(GetMessageRequest request) async {
    try {
      final requests = await _chatImpl.getMessage(request);

      return requests.fold(
        (error) => Left(error),
        (response) => Right(response),
      );
    } catch (e) {
      Log.e(e);
      return Left(UnknownException(message: e.toString()));
    }
  }

  @override
  Future<Either<DomainException, SentMessageEntity>> sendMessage(SendMessageRequest request) async {
    try {
      final requests = await _chatImpl.sendMessage(request);

      return requests.fold(
        (error) => Left(error),
        (response) => Right(response),
      );
    } catch (e) {
      Log.e(e);
      return Left(UnknownException(message: e.toString()));
    }
  }

  @override
  Future<Either<DomainException, String>> viewMessage(ViewMessageRequest request) async {
    try {
      final requests = await _chatImpl.viewMessage(request.messageId);

      return requests.fold(
        (error) => Left(error),
        (response) => Right(response),
      );
    } catch (e) {
      Log.e(e);
      return Left(UnknownException(message: e.toString()));
    }
  }
}
