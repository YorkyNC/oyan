import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/api/client/endpoints.dart';
import '../../../../../core/api/client/headers/api_headers.dart';
import '../../../../../core/api/client/rest/dio/dio_client.dart';
import '../../../../../core/exceptions/domain_exception.dart';
import '../../../../../core/services/csrf/csrf_service.dart';
import '../../../../../core/services/storage/storage_service_impl.dart';
import '../../../../../core/utils/loggers/logger.dart';
import '../../../domain/entities/add_genre_entity.dart';
import '../../../domain/entities/genre_entity.dart';
import '../../../domain/requests/add_genre_request.dart';
import '../../../domain/requests/get_genre_request.dart';
import 'i_genre_remote.dart';

@named
@LazySingleton(as: IGenreRemote)
class GenreRemoteImpl implements IGenreRemote {
  final DioRestClient client;
  final StorageServiceImpl st = StorageServiceImpl();

  GenreRemoteImpl(this.client);

  @override
  Future<Either<DomainException, AddGenreEntity>> addGenre(AddGenreRequest file) async {
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
        '${EndPoints.baseUrl}/genres/',
        data: {'genres': file.genres},
        options: Options(headers: headers),
      );

      return response.fold(
        (error) => Left(error),
        (result) async {
          if (result.statusCode == 201) {
            return Right(AddGenreEntity.fromJson(result.data));
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
  Future<Either<DomainException, GenreEntity>> getGenre(GetGenreRequest request) async {
    try {
      final csrfToken = st.getCsrfToken();
      final csrfCookie = st.getCsrfCookie();
      final headers = {
        ...ApiHeaders.headers,
        if (csrfToken != null) 'X-CSRFToken': csrfToken,
        // if (csrfCookie != null) 'Cookie': csrfCookie,.
      };

      final Either<DomainException, Response<dynamic>> response = await client.get(
        '${EndPoints.baseUrl}/genres/',
        options: Options(headers: headers),
      );

      return response.fold(
        (error) => Left(error),
        (result) async {
          if (result.statusCode == 401) {
            return Left(AuthenticationException.invalidCredentials());
          }

          if (result.data is List) {
            final wrappedData = {"status": "success", "data": result.data};
            final entity = GenreEntity.fromJson(wrappedData);
            return Right(entity);
          } else {
            final entity = GenreEntity.fromJson(result.data);
            return Right(entity);
          }
        },
      );
    } catch (e) {
      Log.e(e);
      return Left(UnknownException(message: e.toString()));
    }
  }
}
