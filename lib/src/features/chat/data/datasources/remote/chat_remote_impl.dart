import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/api/client/endpoints.dart';
import '../../../../../core/api/client/rest/dio/dio_client.dart';
import '../../../../../core/exceptions/domain_exception.dart';
import '../../../../../core/router/router.dart';
import '../../../../../core/services/storage/storage_service_impl.dart';
import '../../../../../core/utils/loggers/logger.dart';
import '../../../domain/requests/get_chats_request.dart';
import '../../../domain/requests/get_message_request.dart';
import '../../../domain/requests/get_messages_request.dart';
import '../../../domain/requests/send_message_request.dart';
import '../../models/chat_entity.dart';
import './i_chat_remote.dart';

@named
@LazySingleton(as: IChatRemote)
class ChatRemoteImpl implements IChatRemote {
  ChatRemoteImpl(
    this.client,
  );
  final DioRestClient client;

  // Remove static headers and make them dynamic
  Map<String, String> get headers => {
        'accept': 'application/json',
        'Authorization': 'Bearer ${StorageServiceImpl().getToken()}',
      };

  Options get _defaultOptions => Options(
        headers: headers,
        validateStatus: (status) => status != null && status < 500,
        // Add retry options
        extra: {
          'retry': true, // Signal that this request should be retried on 401
        },
      );

  @override
  Future<Either<DomainException, List<ChatEntity>>> getChats(GetChatsRequest request) async {
    try {
      final queryParameters = {
        'role': request.role,
        if (request.childId != null) 'child_id': request.childId,
        if (request.limit != null) 'limit': request.limit,
        if (request.offset != null) 'offset': request.offset,
      };

      final Either<DomainException, Response<dynamic>> response = await client.get(
        '${EndPoints.baseUrl}/v1/school/${request.schoolId}/chat',
        queryParameters: queryParameters,
        options: _defaultOptions,
      );

      return response.fold(
        (error) => Left(error),
        (result) async {
          if (result.statusCode == 200) {
            return Right((result.data as List).map((e) => ChatEntity.fromJson(e)).toList());
          } else {
            return Left(UnknownException(message: result.statusMessage));
          }
        },
      );
    } catch (e) {
      return Left(NetworkException(message: 'Network error: $e'));
    }
  }

  @override
  Future<Either<DomainException, List<MessageEntity>>> getMessages(
      GetMessagesRequest request) async {
    try {
      final queryParameters = {
        'chat_id': request.chatId,
        if (request.before != null) 'before': request.before,
        if (request.after != null) 'after': request.after,
        if (request.messageId != null) 'message_id': request.messageId,
      };

      final Either<DomainException, Response<dynamic>> response = await client.get(
        '${EndPoints.baseUrl}/v1/school/${request.schoolId}/message',
        queryParameters: queryParameters,
        options: _defaultOptions,
      );

      return response.fold(
        (error) {
          Log.e(
            'Error occurred during request: $request',
          );
          return Left(error);
        },
        (result) async {
          if (result.statusCode == 200) {
            final List<dynamic> data = result.data;
            final messages = data.map((json) => MessageEntity.fromJson(json)).toList();
            return Right(messages);
          } else {
            return Left(UnknownException(message: result.statusMessage));
          }
        },
      );
    } catch (e) {
      return Left(NetworkException(message: 'Network error: $e'));
    }
  }

  @override
  Future<Either<DomainException, MessageEntity>> getMessage(GetMessageRequest request) async {
    try {
      final queryParameters = {
        if (request.role != null) 'role': request.role,
      };

      final Either<DomainException, Response<dynamic>> response = await client.get(
        '${EndPoints.baseUrl}/v1/school/${request.schoolId}/message/${request.messageId}',
        queryParameters: queryParameters,
        options: _defaultOptions,
      );

      return response.fold(
        (error) {
          Log.e(
            'Error occurred during request: $request',
          );
          return Left(error);
        },
        (result) async {
          if (result.statusCode == 200) {
            return Right(MessageEntity.fromJson(result.data));
          } else {
            return Left(UnknownException(message: result.statusMessage));
          }
        },
      );
    } catch (e) {
      return Left(NetworkException(message: 'Network error: $e'));
    }
  }

  @override
  Future<Either<DomainException, SentMessageEntity>> sendMessage(SendMessageRequest request) async {
    try {
      final Either<DomainException, Response<dynamic>> response = await client.post(
        '${EndPoints.baseUrl}/v1/school/$schoolId/process-message',
        data: request,
        options: _defaultOptions.copyWith(
          contentType: Headers.jsonContentType,
        ),
      );

      return response.fold(
        (error) => Left(error),
        (result) async {
          if (result.statusCode == 200) {
            return Right(SentMessageEntity.fromJson(result.data));
          } else {
            return Left(UnknownException(message: result.statusMessage));
          }
        },
      );
    } catch (e) {
      return Left(NetworkException(message: 'Network error: $e'));
    }
  }

  @override
  Future<Either<DomainException, String>> viewMessage(String messageId) async {
    try {
      final Either<DomainException, Response<dynamic>> response = await client.patch(
        '${EndPoints.baseUrl}/v1/school/$schoolId/message/$messageId',
        data: {
          'isViewed': true,
        },
        options: _defaultOptions.copyWith(
          contentType: Headers.jsonContentType,
        ),
      );

      return response.fold(
        (error) => Left(error),
        (result) async {
          return Right(result.data.toString());
        },
      );
    } catch (e) {
      return Left(NetworkException(message: 'Network error: $e'));
    }
  }
}
