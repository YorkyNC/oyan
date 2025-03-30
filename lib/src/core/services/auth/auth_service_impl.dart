import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:oyan/src/core/services/auth/models/forgot_password_response.dart';
import 'package:oyan/src/core/services/auth/models/update_password_request.dart';
import 'package:oyan/src/core/services/auth/models/update_password_response.dart';
import 'package:oyan/src/features/login/data/models/csrf_token_response.dart';

import '../../api/client/endpoints.dart';
import '../../api/client/rest/dio/dio_client.dart';
import '../../exceptions/domain_exception.dart';
import '../storage/storage_service_impl.dart';
import 'entities/user_entity.dart';
import 'i_auth_service.dart';
import 'models/forgot_password_request.dart';
import 'models/refresh_token_response.dart';
import 'models/sign_in_request.dart';
import 'models/sign_in_response.dart';
import 'models/verify_request.dart';
import 'models/verify_response.dart';

@named
@LazySingleton(as: IAuthService)
class AuthServiceImpl implements IAuthService {
  AuthServiceImpl(this.client);

  final DioRestClient client;
  final StorageServiceImpl st = StorageServiceImpl();
  final Map<String, String> headers = {'Content-Type': 'application/json'};

  @override
  Future<Either<DomainException, CsrfTokenResponse>> csrfToken() async {
    try {
      const fullUrl = '${EndPoints.baseUrl}${EndPoints.csrf}';
      log('Making CSRF token request to: $fullUrl', name: 'AUTH_SERVICE');

      final response = await client.get(
        fullUrl,
        options: Options(
          headers: {
            'Accept': 'application/json',
            'Content-Type': 'application/json',
          },
          validateStatus: (status) => status != null && status < 500,
          receiveDataWhenStatusError: true,
          followRedirects: true,
          responseType: ResponseType.json,
          sendTimeout: const Duration(seconds: 10),
          receiveTimeout: const Duration(seconds: 10),
        ),
      );

      return response.fold((error) {
        return Left(error);
      }, (response) async {
        if (response.statusCode == 200) {
          final cookies = response.headers.map['set-cookie'];
          if (cookies != null && cookies.isNotEmpty) {
            for (final cookie in cookies) {
              // Extract CSRF cookie if present
              if (cookie.contains('csrftoken=')) {
                final csrfCookie = cookie.split(';')[0];
                st.setCsrfCookie(csrfCookie);
              }
            }
          }

          // Handle CSRF token from response body
          if (response.data != null && response.data['csrfToken'] != null) {
            final csrfToken = response.data['csrfToken'];
            await st.setCsrfToken(csrfToken);

            return Right(CsrfTokenResponse.fromJson(response.data));
          } else {
            return Left(UnknownException(message: 'No CSRF token in response'));
          }
        } else {
          return Left(UnknownException(message: response.statusMessage ?? 'Failed to get CSRF token'));
        }
      });
    } on DioException catch (e) {
      return Left(NetworkException(message: e.message ?? 'Network error'));
    } catch (e) {
      return Left(e is DomainException ? e : UnknownException(message: e.toString()));
    }
  }

  @override
  Future<Either<DomainException, SignInResponse>> loginUser(SignInRequest request) async {
    try {
      final formData = {
        'login': request.login,
        'password': request.password,
      };
      final storedCsrfToken = st.getCsrfToken();
      final csrfCookie = st.getCsrfCookie();

      final Map<String, String> requestHeaders = {
        'Accept': 'application/json',
        'Content-Type': 'application/x-www-form-urlencoded',
      };
      if (storedCsrfToken != null && storedCsrfToken.isNotEmpty) {
        requestHeaders['X-CSRFToken'] = storedCsrfToken;
      }
      if (csrfCookie != null && csrfCookie.isNotEmpty) {
        requestHeaders['Cookie'] = csrfCookie;
      }

      final response = await client.post(
        '${EndPoints.baseUrl}${EndPoints.login}',
        data: formData,
        options: Options(
          method: 'POST',
          headers: requestHeaders,
          contentType: Headers.formUrlEncodedContentType,
          followRedirects: true,
          validateStatus: (status) => status != null && status < 500,
          receiveDataWhenStatusError: true,
        ),
      );

      return response.fold((error) {
        return Left(error);
      }, (result) async {
        final cookies = result.headers.map['set-cookie'];
        if (cookies != null && cookies.isNotEmpty) {
          for (final cookie in cookies) {
            if (cookie.contains('sessionid=')) {}
          }
        }

        if (result.statusCode == 200) {
          if (result.data is Map && result.data['status'] == 'error') {
            final errorMessage = result.data['message'] ?? 'Login failed';

            return Left(UnknownException(message: errorMessage));
          }

          try {
            final signInResponse = SignInResponse.fromJson(result.data);
            if (result.data['token'] != null) {
              await st.setToken(result.data['token']);
            } else if (result.data['accessToken'] != null) {
              // Some APIs use accessToken instead of token
              await st.setToken(result.data['accessToken']);
            }

            if (result.data['refreshToken'] != null) {
              await st.setRefreshToken(result.data['refreshToken']);
            }

            return Right(signInResponse);
          } catch (e) {
            return Left(UnknownException(message: 'Error parsing login response: $e'));
          }
        } else {
          final errorMessage = result.data != null && result.data['detail'] != null
              ? result.data['detail']
              : (result.statusMessage ?? 'Login failed');

          return Left(UnknownException(message: errorMessage));
        }
      });
    } catch (e) {
      return Left(e is DomainException ? e : UnknownException(message: e.toString()));
    }
  }

  @override
  Future<Either<DomainException, UserEntity>> getUser() async {
    final Either<DomainException, Response<dynamic>> response = await client.get(
      EndPoints.getUser,
      options: Options(method: 'GET', headers: headers),
    );

    return response.fold((error) => Left(error), (response) async {
      if (response.statusCode == 200) {
        return Right(UserEntity.fromJson(response.data));
      } else {
        return Left(UnknownException(message: response.statusMessage));
      }
    });
  }

  @override
  Future<Either<DomainException, VerifyResponse>> verifyUser(VerifyRequest request) async {
    try {
      final Either<DomainException, Response<dynamic>> response = await client.post(
        EndPoints.verify,
        data: VerifyRequest(userId: request.userId, code: request.code),
        options: Options(method: 'POST', headers: headers),
      );

      return response.fold((error) => Left(error), (response) async {
        if (response.statusCode == 200) {
          await st.deleteToken();
          final String token = VerifyResponse.fromJson(response.data).toString();
          await st.setToken(token);
          return Right(VerifyResponse.fromJson(response.data));
        } else {
          return Left(UnknownException(message: response.statusMessage));
        }
      });
    } catch (e) {
      log('Exception caught during verification: $e');
      return Left(e is DomainException ? e : UnknownException(message: e.toString()));
    }
  }

  @override
  Future<Either<DomainException, UpdatePasswordResponse>> updatePassword(UpdatePasswordRequest request) async {
    final Either<DomainException, Response<dynamic>> response = await client.post(
      EndPoints.updatePassword,
      options: Options(method: 'POST', headers: headers),
      data: request,
    );

    return response.fold((error) => Left(error), (response) async {
      if (response.statusCode == 200) {
        return Right(UpdatePasswordResponse.fromJson(response.data));
      } else {
        return Left(UnknownException(message: response.statusMessage));
      }
    });
  }

  @override
  Future<Either<DomainException, ForgotPasswordResponse>> forgotPassword(ForgotPasswordRequest request) async {
    st.deleteToken();
    final Either<DomainException, Response<dynamic>> response = await client.post(
      EndPoints.forgotPassword,
      data: request,
      options: Options(method: 'POST', headers: headers),
    );
    return response.fold((error) => Left(error), (response) async {
      if (response.statusCode == 200) {
        return Right(ForgotPasswordResponse.fromJson(response.data));
      } else {
        return Left(UnknownException(message: response.statusMessage));
      }
    });
  }

  @override
  Future<Either<DomainException, RefreshTokenResponse>> refreshToken() async {
    String? refreshToken = st.getRefreshToken();

    try {
      final response = await client.post(
        EndPoints.refreshToken,
        data: {'refreshToken': refreshToken},
        options: Options(headers: {'Content-Type': 'application/json'}),
      );
      return response.fold((error) => Left(error), (response) async {
        if (response.statusCode == 200) {
          await st.deleteToken();
          await st.deleteRefreshToken();

          await st.setToken(response.data['accessToken']);
          await st.setRefreshToken(response.data['refreshToken']);
          return Right(RefreshTokenResponse.fromJson(response.data));
        } else {
          return Left(UnknownException(message: response.statusMessage));
        }
      });
    } on DioException catch (e) {
      log('DioError caught during refreshing token: $e');
      return Left(NetworkException(message: e.message!));
    } catch (e) {
      log('Exception caught during refreshing token: $e');
      return Left(e is DomainException ? e : UnknownException(message: e.toString()));
    }
  }
}
