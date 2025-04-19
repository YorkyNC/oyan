import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

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
}
