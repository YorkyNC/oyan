import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../api/client/endpoints.dart';
import '../../api/client/headers/api_headers.dart';
import '../../api/client/rest/dio/dio_client.dart';
import '../../exceptions/domain_exception.dart';
import '../storage/storage_service_impl.dart';

@singleton
class CsrfService {
  final DioRestClient _client;
  final StorageServiceImpl _storage;

  CsrfService(this._client, this._storage);

  Future<Either<DomainException, void>> fetchCsrfToken() async {
    try {
      final response = await _client.get(
        '${EndPoints.baseUrl}${EndPoints.csrf}',
        options: ApiHeaders.dioOptions,
      );

      return response.fold(
        (error) => Left(error),
        (result) async {
          if (result.statusCode == 200) {
            final csrfToken = result.data['csrfToken'];
            final csrfCookie = result.headers['set-cookie']?.first;

            if (csrfToken != null) {
              await _storage.setCsrfToken(csrfToken);
            }

            if (csrfCookie != null) {
              _storage.setCsrfCookie(csrfCookie);
            }

            return const Right(null);
          } else {
            return Left(UnknownException(message: 'Failed to fetch CSRF token'));
          }
        },
      );
    } catch (e) {
      return Left(NetworkException(message: 'Network error: $e'));
    }
  }
}
