import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:oyan/src/core/services/csrf/csrf_service.dart';
import 'package:oyan/src/features/comments/domain/entities/add_comments_response.dart';
import 'package:oyan/src/features/comments/domain/entities/get_commets_response.dart';
import 'package:oyan/src/features/comments/domain/requests/add_commment_requst.dart';

import '../../../../../core/api/client/endpoints.dart';
import '../../../../../core/api/client/headers/api_headers.dart';
import '../../../../../core/api/client/rest/dio/dio_client.dart';
import '../../../../../core/exceptions/domain_exception.dart';
import '../../../../../core/services/storage/storage_service_impl.dart';
import '../../../../../core/utils/loggers/logger.dart';
import '../../../domain/requests/get_comments_request.dart';
import 'i_comment_remote.dart';

@named
@LazySingleton(as: ICommentRemote)
class CommentRemoteImpl implements ICommentRemote {
  final DioRestClient client;
  final StorageServiceImpl st = StorageServiceImpl();

  CommentRemoteImpl(this.client);

  @override
  Future<Either<DomainException, GetCommentsResponse>> getComments(GetCommentsRequest request) async {
    try {
      final Either<DomainException, Response<dynamic>> response = await client.get(
        '${EndPoints.baseUrl}/books/${request.bookId}/comments/',
        options: ApiHeaders.dioOptions,
      );

      return response.fold(
        (error) => Left(error),
        (result) async {
          if (result.statusCode == 401) {
            return Left(AuthenticationException.invalidCredentials());
          }
          print('Raw API Response: ${result.data}');
          final entity = GetCommentsResponse.fromJson(result.data);
          return Right(entity);
        },
      );
    } catch (e) {
      Log.e(e);
      return Left(UnknownException(message: e.toString()));
    }
  }

  @override
  Future<Either<DomainException, AddCommentResponse>> addComment(AddCommentRequest file) async {
    try {
      final csrfService = CsrfService(client);
      final csrfResult = await csrfService.fetchCsrfToken();
      if (csrfResult.isLeft()) {
        return Left(csrfResult.getLeft().getOrElse(() => UnknownException()));
      }

      final csrfToken = st.getCsrfToken();
      final csrfCookie = st.getCsrfCookie();
      final sessionId = st.getSessionId();

      if (csrfToken == null || csrfCookie == null || sessionId == null) {
        return Left(UnknownException(message: 'CSRF token, cookie or session ID not found'));
      }

      final csrfCookieValue = csrfToken;
      final sessionIdValue = sessionId.split('=').last.split(';').first;

      final headers = {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
        'X-CSRFToken': csrfToken,
        'Cookie': 'csrftoken=$csrfCookieValue; sessionid=$sessionIdValue',
      };

      final Either<DomainException, Response<dynamic>> response = await client.post(
        '${EndPoints.baseUrl}/books/${file.bookId}/comments/',
        data: {'content': file.content, 'rate': file.rate},
        options: Options(headers: headers),
      );

      return response.fold(
        (error) => Left(error),
        (result) async {
          if (result.statusCode == 201) {
            return Right(AddCommentResponse.fromJson(result.data));
          } else {
            return Left(UnknownException(message: result.statusMessage));
          }
        },
      );
    } catch (e) {
      return Left(NetworkException(message: 'Network error: $e'));
    }
  }
}
