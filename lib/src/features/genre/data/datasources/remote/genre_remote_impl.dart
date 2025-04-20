import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/api/client/endpoints.dart';
import '../../../../../core/api/client/headers/api_headers.dart';
import '../../../../../core/api/client/rest/dio/dio_client.dart';
import '../../../../../core/exceptions/domain_exception.dart';
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
      final formData = FormData.fromMap({
        'genres': file.genres.toString(),
      });

      final Either<DomainException, Response<dynamic>> response = await client.post(
        '${EndPoints.baseUrl}/genres/',
        data: formData,
        options: ApiHeaders.dioOptions,
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
      final Either<DomainException, Response<dynamic>> response = await client.get(
        '${EndPoints.baseUrl}/genres/',
        options: ApiHeaders.dioOptions,
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
