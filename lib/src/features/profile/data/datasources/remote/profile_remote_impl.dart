import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:oyan/src/core/services/csrf/csrf_service.dart';
import 'package:oyan/src/features/profile/domain/entities/update_profile_entity.dart';
import 'package:oyan/src/features/profile/domain/requests/update_profile_requset.dart';

import '../../../../../core/api/client/endpoints.dart';
import '../../../../../core/api/client/headers/api_headers.dart';
import '../../../../../core/api/client/rest/dio/dio_client.dart';
import '../../../../../core/exceptions/domain_exception.dart';
import '../../../../../core/services/storage/storage_service_impl.dart';
import '../../../../../core/utils/loggers/logger.dart';
import '../../../domain/entities/profile_entity.dart';
import '../../../domain/requests/get_profile_request.dart';
import 'i_profile_remote.dart';

@named
@LazySingleton(as: IProfileRemote)
class ProfileRemoteImpl implements IProfileRemote {
  final DioRestClient client;
  final StorageServiceImpl st = StorageServiceImpl();

  ProfileRemoteImpl(this.client);
  @override
  Future<Either<DomainException, UpdateProfileEntity>> updateProfile(UpdateProfileRequest request) async {
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
        '${EndPoints.baseUrl}/profile/${request.username}/',
        data: {
          'name': request.name,
          'avatar': request.avatar,
          'bio': request.bio,
        },
        options: Options(headers: headers),
      );

      return response.fold(
        (error) => Left(error),
        (result) async {
          if (result.statusCode == 201) {
            return Right(UpdateProfileEntity.fromJson(result.data));
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
  Future<Either<DomainException, ProfileData>> getProfile(GetProfileRequest request) async {
    try {
      final csrfToken = st.getCsrfToken();

      final headers = {
        ...ApiHeaders.headers,
        if (csrfToken != null) 'X-CSRFToken': csrfToken,
        // if (csrfCookie != null) 'Cookie': csrfCookie,.
      };

      final Either<DomainException, Response<dynamic>> response = await client.get(
        '${EndPoints.baseUrl}/profile/${request.username}/',
        options: Options(headers: headers),
      );

      return response.fold(
        (error) => Left(error),
        (result) async {
          if (result.statusCode == 401) {
            return Left(AuthenticationException.invalidCredentials());
          }

          try {
            if (result.data == null) {
              Log.e("Response data is null");
              return Left(UnknownException(message: "Response data is null"));
            }

            Log.d("Raw response data: ${result.data}");

            dynamic responseData;
            if (result.data is List) {
              if ((result.data as List).isEmpty) {
                Log.e("Profile data list is empty");
                return Left(UnknownException(message: "Profile data list is empty"));
              }
              responseData = result.data[0];
            } else if (result.data is Map) {
              responseData = result.data;
            } else {
              Log.e("Unexpected response format: ${result.data.runtimeType}");
              return Left(UnknownException(message: "Unexpected response format"));
            }

            // Parse the response directly into ProfileData
            final entity = ProfileData.fromJson(responseData);
            Log.d("Parsed entity: $entity");

            return Right(entity);
          } catch (e, stackTrace) {
            Log.e("Error parsing profile data", stackTrace: stackTrace);
            return Left(UnknownException(
              message: "Error parsing profile data: ${e.toString()}",
              stackTrace: stackTrace,
            ));
          }
        },
      );
    } catch (e) {
      Log.e(e);
      return Left(UnknownException(message: e.toString()));
    }
  }
}
