import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:oyan/src/core/services/csrf/csrf_service.dart';
import 'package:oyan/src/features/home/domain/entities/add_my_book_entity.dart';
import 'package:oyan/src/features/home/domain/entities/get_my_books_entity.dart';
import 'package:oyan/src/features/home/domain/requests/add_my_books_request.dart';
import 'package:oyan/src/features/home/domain/requests/my_book_request.dart';

import '../../../../../core/api/client/endpoints.dart';
import '../../../../../core/api/client/headers/api_headers.dart';
import '../../../../../core/api/client/rest/dio/dio_client.dart';
import '../../../../../core/exceptions/domain_exception.dart';
import '../../../../../core/services/storage/storage_service_impl.dart';
import '../../../../../core/utils/loggers/logger.dart';
import '../../../domain/entities/get_books_entity.dart';
import '../../../domain/requests/get_book_request.dart';
import 'i_book_remote.dart';

@named
@LazySingleton(as: IBookRemote)
class BookRemoteImpl implements IBookRemote {
  final DioRestClient client;
  final StorageServiceImpl st = StorageServiceImpl();

  BookRemoteImpl(this.client);

  @override
  Future<Either<DomainException, GetBooksEntity>> getBook(GetBookRequest request) async {
    try {
      final queryParameters = <String, dynamic>{
        'type': request.type.value,
        if (request.page != null) 'page': request.page.toString(),
      };

      final Either<DomainException, Response<dynamic>> response = await client.get(
        '${EndPoints.baseUrl}/books/',
        options: ApiHeaders.dioOptions,
        queryParameters: queryParameters,
      );

      return response.fold(
        (error) => Left(error),
        (result) async {
          if (result.statusCode == 401) {
            return Left(AuthenticationException.invalidCredentials());
          }
          print('Raw API Response: ${result.data}');
          final entity = GetBooksEntity.fromJson(result.data);
          print('Parsed Entity: ${entity.results?.map((e) => '${e.title}: ${e.coverImageUrl}').toList()}');
          return Right(entity);
        },
      );
    } catch (e) {
      Log.e(e);
      return Left(UnknownException(message: e.toString()));
    }
  }

  @override
  Future<Either<DomainException, GetMyBooksEntity>> getMyBook(MyBookRequest request) async {
    try {
      final queryParameters = <String, dynamic>{
        'filter': request.filter,
      };

      final Either<DomainException, Response<dynamic>> response = await client.get(
        '${EndPoints.baseUrl}/profile/${request.username}/books/',
        options: ApiHeaders.dioOptions,
        queryParameters: queryParameters,
      );

      return response.fold(
        (error) => Left(error),
        (result) {
          final entity = GetMyBooksEntity.fromJson(result.data);
          return Right(entity);
        },
      );
    } catch (e) {
      Log.e(e);
      return Left(UnknownException(message: e.toString()));
    }
  }

  @override
  Future<Either<DomainException, AddMyBookEntity>> addMyBook(AddMyBooksRequest file) async {
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
        '${EndPoints.baseUrl}/profile/${file.username}/books/',
        queryParameters: {
          'filter': file.filter,
        },
        data: {
          'book_id': file.bookId,
        },
        options: Options(headers: headers),
      );

      return response.fold(
        (error) => Left(error),
        (result) async {
          if (result.statusCode == 200 || result.statusCode == 201) {
            return Right(AddMyBookEntity.fromJson(result.data));
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
