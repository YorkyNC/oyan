import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:oyan/src/core/services/auth/models/forgot_password_response.dart';
import 'package:oyan/src/core/services/auth/models/update_password_request.dart';
import 'package:oyan/src/core/services/auth/models/update_password_response.dart';
import 'package:oyan/src/features/login/data/models/csrf_token_response.dart';
import 'package:oyan/src/features/login/data/models/signup_request.dart';
import 'package:oyan/src/features/login/data/models/signup_response.dart' show SignupResponse;

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
      // Check if we already have a valid CSRF token
      final existingToken = st.getCsrfToken();
      if (existingToken != null) {
        return Right(CsrfTokenResponse(csrfToken: existingToken));
      }

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
          // Handle CSRF token from response body
          if (response.data != null && response.data['csrfToken'] != null) {
            final csrfToken = response.data['csrfToken'].toString();
            await st.setCsrfToken(csrfToken);

            // Handle CSRF cookie if present
            final cookies = response.headers.map['set-cookie'];
            if (cookies != null && cookies.isNotEmpty) {
              for (final cookie in cookies) {
                if (cookie.contains('csrftoken=')) {
                  final csrfCookie = cookie.split(';')[0];
                  st.setCsrfCookie(csrfCookie);
                }
              }
            }

            return Right(CsrfTokenResponse(csrfToken: csrfToken));
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
  Future<Either<DomainException, SignupResponse>> signupUser(SignupRequest request) async {
    try {
      final csrfResult = await csrfToken();
      if (csrfResult.isLeft()) {
        return Left(csrfResult.fold((l) => l, (r) => UnknownException(message: 'CSRF token error')));
      }
      final storedCsrfToken = st.getCsrfToken();
      final storedCsrfCookie = st.getCsrfCookie();
      if (storedCsrfToken == null || storedCsrfCookie == null) {
        return Left(UnknownException(message: 'CSRF token or cookie not found'));
      }
      final formData = FormData.fromMap({
        'username': request.username,
        'email': request.email,
        'password1': request.password1,
        'password2': request.password2,
      });
      final Map<String, String> requestHeaders = {
        'Accept': 'application/json',
        'Content-Type': 'application/x-www-form-urlencoded',
        'X-CSRFToken': storedCsrfToken,
        'Cookie': storedCsrfCookie,
      };
      final response = await client.post(
        '${EndPoints.baseUrl}${EndPoints.signup}',
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

      return response.fold(
        (error) => Left(error),
        (result) async {
          if (result.statusCode == 200) {
            try {
              final signupResponse = SignupResponse.fromJson(result.data);

              // Handle tokens from response
              if (result.data['token'] != null) {
                await st.setToken(result.data['token']);
              } else if (result.data['accessToken'] != null) {
                await st.setToken(result.data['accessToken']);
              }

              if (result.data['refreshToken'] != null) {
                await st.setRefreshToken(result.data['refreshToken']);
              }

              // Handle session ID if present
              final cookies = result.headers.map['set-cookie'];
              if (cookies != null) {
                for (final cookie in cookies) {
                  if (cookie.contains('sessionid=')) {
                    final sessionId = cookie.split(';')[0];
                    await st.setSessionId(sessionId);
                    break;
                  }
                }
              }

              return Right(signupResponse);
            } catch (e) {
              return Left(UnknownException(message: 'Error parsing login response: $e'));
            }
          } else if (result.statusCode == 403) {
            await st.deleteCsrfToken();
            return Left(AuthenticationException.invalidCredentials());
          } else {
            return Left(UnknownException(message: result.statusMessage ?? 'Failed to register'));
          }
        },
      );
    } catch (e) {
      return Left(e is DomainException ? e : UnknownException(message: e.toString()));
    }
  }

  @override
  Future<Either<DomainException, SignInResponse>> loginUser(SignInRequest request) async {
    try {
      // Get fresh CSRF token before login
      final csrfResult = await csrfToken();
      if (csrfResult.isLeft()) {
        return Left(csrfResult.fold((l) => l, (r) => UnknownException(message: 'CSRF token error')));
      }

      final storedCsrfToken = st.getCsrfToken();
      final storedCsrfCookie = st.getCsrfCookie();

      if (storedCsrfToken == null || storedCsrfCookie == null) {
        return Left(UnknownException(message: 'CSRF token or cookie not found'));
      }

      final formData = FormData.fromMap({
        'login': request.login,
        'password': request.password,
      });

      final Map<String, String> requestHeaders = {
        'Accept': 'application/json',
        'Content-Type': 'application/x-www-form-urlencoded',
        'X-CSRFToken': storedCsrfToken,
        'Cookie': storedCsrfCookie,
      };

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

      return response.fold(
        (error) => Left(error),
        (result) async {
          if (result.statusCode == 200) {
            try {
              final signInResponse = SignInResponse.fromJson(result.data);

              // Handle tokens from response
              if (result.data['token'] != null) {
                await st.setToken(result.data['token']);
              } else if (result.data['accessToken'] != null) {
                await st.setToken(result.data['accessToken']);
              }

              if (result.data['refreshToken'] != null) {
                await st.setRefreshToken(result.data['refreshToken']);
              }

              // Handle session ID if present
              final cookies = result.headers.map['set-cookie'];
              if (cookies != null) {
                for (final cookie in cookies) {
                  if (cookie.contains('sessionid=')) {
                    final sessionId = cookie.split(';')[0];
                    await st.setSessionId(sessionId);
                    break;
                  }
                }
              }

              return Right(signInResponse);
            } catch (e) {
              return Left(UnknownException(message: 'Error parsing login response: $e'));
            }
          } else if (result.statusCode == 403) {
            // Clear CSRF data on 403 to force a fresh token next time
            await st.deleteCsrfToken();
            return Left(AuthenticationException.invalidCredentials());
          } else {
            return Left(UnknownException(message: result.statusMessage ?? 'Failed to login'));
          }
        },
      );
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

  @override
  Future<void> logout() async {
    try {
      // Clear all auth data
      await st.clearAuth();
      await st.clearDeviceData();
      await st.deleteSessionId();
      await st.deleteCsrfToken();
      await st.deleteToken();
      await st.deleteRefreshToken();
      await st.setRole(null);
    } catch (e) {
      log('Error during logout: $e');
      rethrow;
    }
  }
}
