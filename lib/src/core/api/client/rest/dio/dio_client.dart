import 'dart:async';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:oyan/src/core/router/router.dart';

import '../../../../exceptions/domain_exception.dart';
import '../../../../services/auth/models/refresh_token_response.dart';
import '../../../../services/auth/role_notifier.dart';
import '../../../../services/storage/storage_service_impl.dart';
import '../../endpoints.dart';
import 'dio_exceptions.dart';

part 'dio_config.dart';
part 'dio_interceptor.dart';

@Singleton()
class DioRestClient {
  late final Dio _dio;
  DioRestClient() {
    _dio = Dio();
    _init();
  }

  final StorageServiceImpl st = StorageServiceImpl();

  // Dio Client configurations
  Future<void> _init() async {
    BaseOptions options = BaseOptions(
      baseUrl: EndPoints.baseUrl,
      connectTimeout: DioConfigurations.connectTimeout,
      receiveTimeout: DioConfigurations.receiveTimeout,
      validateStatus: (status) => status != null && status < 500,
    );
    _dio.options = options;
    _dio.interceptors.add(DioInterceptor(dio: _dio));
  }

  Dio get dio => _dio;

  // Set CSRF Token in headers
  void setCsrfToken(String token) {
    log('Setting CSRF token in headers: $token', name: 'CSRF_TOKEN');
    _dio.options.headers['X-CSRFToken'] = token;
    st.setCsrfToken(token);
  }

  // Get CSRF Token:-----------------------------------------------------------------------
  Future<Either<DomainException, String>> getCsrfToken() async {
    try {
      // First check if we have a stored token
      final storedToken = st.getCsrfToken();
      if (storedToken != null) {
        log('Using stored CSRF token: $storedToken', name: 'CSRF_TOKEN');
        setCsrfToken(storedToken);
        return Right(storedToken);
      }

      log('No stored token, fetching new CSRF token...', name: 'CSRF_TOKEN');

      // If no stored token, fetch a new one
      final Response response = await _dio.get(
        EndPoints.csrf,
        options: Options(
          headers: {
            'Accept': 'application/json',
          },
          validateStatus: (status) => status != null && status < 500,
        ),
      );

      // Log the response for debugging
      log('CSRF Response Status: ${response.statusCode}', name: 'CSRF_TOKEN');
      log('CSRF Response Data: ${response.data}', name: 'CSRF_TOKEN');
      log('CSRF Response Headers: ${response.headers}', name: 'CSRF_TOKEN');

      // Handle different response formats
      String token;
      if (response.data is Map) {
        token = response.data['csrfToken'] as String;
        log('Extracted token from Map: $token', name: 'CSRF_TOKEN');
      } else if (response.data is String) {
        token = response.data;
        log('Extracted token from String: $token', name: 'CSRF_TOKEN');
      } else {
        log('Invalid CSRF token response format: ${response.data.runtimeType}', name: 'CSRF_TOKEN');
        throw Exception('Invalid CSRF token response format');
      }

      // Store the token
      log('Setting CSRF token: $token', name: 'CSRF_TOKEN');
      setCsrfToken(token);

      // Store the cookie if it exists
      final cookies = response.headers['set-cookie'];
      if (cookies != null && cookies.isNotEmpty) {
        log('Found cookies in response: $cookies', name: 'CSRF_COOKIE');
        // Find the csrftoken cookie
        final csrfCookie = cookies.firstWhere(
          (c) => c.contains('csrftoken='),
          orElse: () => '',
        );
        if (csrfCookie.isNotEmpty) {
          log('Found csrftoken cookie: $csrfCookie', name: 'CSRF_COOKIE');
          // Extract just the token value from the cookie
          final cookieValue = csrfCookie.split(';')[0].split('=')[1];
          log('Extracted cookie value: $cookieValue', name: 'CSRF_COOKIE');
          st.setCsrfCookie(cookieValue);
        } else {
          log('No csrftoken cookie found in response', name: 'CSRF_COOKIE');
        }
      } else {
        log('No cookies found in response', name: 'CSRF_COOKIE');
      }

      return Right(token);
    } on DioException catch (e, s) {
      log('CSRF Token Error: ${e.response?.data}', name: 'CSRF_TOKEN');
      log('CSRF Token Error Status: ${e.response?.statusCode}', name: 'CSRF_TOKEN');
      return Left(_handleDioException(e, s));
    } catch (e, s) {
      log('CSRF Token Error: $e', name: 'CSRF_TOKEN');
      return Left(_handleError(e, s));
    }
  }

  // Login:-----------------------------------------------------------------------
  Future<Either<DomainException, Response>> login(String login, String password) async {
    try {
      // Get CSRF token if not already set
      final tokenResult = await getCsrfToken();
      await tokenResult.fold(
        (failure) => throw failure,
        (token) async {
          // Token is already set in headers by the interceptor
        },
      );

      final Response response = await _dio.post(
        EndPoints.login,
        data: {
          'login': login,
          'password': password,
        },
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
            'X-CSRFToken': _dio.options.headers['X-CSRFToken'],
          },
          validateStatus: (status) => status != null && status < 500,
        ),
      );

      // Log the response for debugging
      log('Login Response Status: ${response.statusCode}');
      log('Login Response Data: ${response.data}');

      // If the response data is a string, convert it to a map
      if (response.data is String) {
        response.data = {'status': response.data};
      }

      return Right(response);
    } on DioException catch (e, s) {
      log('Login DioException: ${e.response?.data}');
      log('Login DioException Status: ${e.response?.statusCode}');
      return Left(_handleDioException(e, s));
    } catch (e, s) {
      log('Login Error: $e');
      return Left(_handleError(e, s));
    }
  }

  // Signup:-----------------------------------------------------------------------
  Future<Either<DomainException, Response>> signup(
    String username,
    String email,
    String password1,
    String password2,
  ) async {
    try {
      // Get CSRF token if not already set
      final tokenResult = await getCsrfToken();
      await tokenResult.fold(
        (failure) => throw failure,
        (token) async {
          // Token is already set in headers by the interceptor
        },
      );

      // Get the stored cookie
      final cookie = st.getCsrfCookie();
      if (cookie == null) {
        log('CSRF cookie is null, attempting to get a new one', name: 'SIGNUP');
        // Try to get a new token and cookie
        final newTokenResult = await getCsrfToken();
        await newTokenResult.fold(
          (failure) => throw failure,
          (token) async {
            // Token is already set in headers by the interceptor
          },
        );

        // Get the cookie again after getting new token
        final newCookie = st.getCsrfCookie();
        if (newCookie == null) {
          log('Failed to get CSRF cookie after refresh', name: 'SIGNUP');
          throw Exception('Failed to get CSRF cookie after refresh');
        }
      }

      final cookieValue = st.getCsrfCookie();
      log('Using CSRF cookie: $cookieValue', name: 'SIGNUP');

      final Response response = await _dio.post(
        EndPoints.register,
        data: {
          'username': username,
          'email': email,
          'password1': password1,
          'password2': password2,
        },
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
            'X-CSRFToken': _dio.options.headers['X-CSRFToken'],
            'Cookie': 'csrftoken=$cookieValue',
          },
          validateStatus: (status) => status != null && status < 500,
        ),
      );

      // Log the response for debugging
      log('Signup Response Status: ${response.statusCode}');
      log('Signup Response Data: ${response.data}');

      // If the response data is a string, convert it to a map
      if (response.data is String) {
        response.data = {'status': response.data};
      }

      return Right(response);
    } on DioException catch (e, s) {
      log('Signup DioException: ${e.response?.data}');
      log('Signup DioException Status: ${e.response?.statusCode}');
      return Left(_handleDioException(e, s));
    } catch (e, s) {
      log('Signup Error: $e');
      return Left(_handleError(e, s));
    }
  }

  //Get:-----------------------------------------------------------------------
  Future<Either<DomainException, Response>> get(
    String url, {
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final Response response = await _dio.get(
        url,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onReceiveProgress: onReceiveProgress,
      );
      return Right(response);
    } on DioException catch (e, s) {
      if (e.response?.statusCode == 401) {
        return Left(AuthenticationException.invalidCredentials());
      }
      return Left(_handleDioException(e, s));
    } catch (e, s) {
      return Left(_handleError(e, s));
    }
  }

  // Post:----------------------------------------------------------------------
  Future<Either<DomainException, Response>> post(
    String url, {
    data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      // Get CSRF token if not already set
      final tokenResult = await getCsrfToken();
      await tokenResult.fold(
        (failure) => throw failure,
        (token) async {
          // Token is already set in headers by the interceptor
        },
      );

      final Response response = await _dio.post(
        url,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );
      return Right(response);
    } on DioException catch (e, s) {
      if (e.response?.statusCode == 401) {
        return Left(AuthenticationException.invalidCredentials());
      }
      return Left(_handleDioException(e, s));
    } catch (e, s) {
      return Left(_handleError(e, s));
    }
  }

  // Patch:----------------------------------------------------------------------
  Future<Either<DomainException, Response>> patch(
    String url, {
    data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final Response response = await _dio.patch(
        url,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );
      return Right(response);
    } on DioException catch (e, s) {
      if (e.response?.statusCode == 401) {
        return Left(AuthenticationException.invalidCredentials());
      }
      return Left(_handleDioException(e, s));
    } catch (e, s) {
      return Left(_handleError(e, s));
    }
  }

  // Put:-----------------------------------------------------------------------
  Future<Either<DomainException, Response>> put(
    String url, {
    data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final Response response = await _dio.put(
        url,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );
      return Right(response);
    } catch (e, s) {
      return Left(_handleError(e, s));
    }
  }

  // Delete:--------------------------------------------------------------------
  Future<Either<DomainException, Response>> delete(
    String url, {
    data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final Response response = await _dio.delete(
        url,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
      );
      return Right(response.data);
    } catch (e, s) {
      return Left(_handleError(e, s));
    }
  }

  // Upload:--------------------------------------------------------------------
  Future<Either<DomainException, Response>> upload(
    String url, {
    required String filePath,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final Response response = await _dio.post(
        url,
        data: FormData.fromMap({'file': await MultipartFile.fromFile(filePath)}),
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );
      return Right(response);
    } catch (e, s) {
      return Left(_handleError(e, s));
    }
  }

  // Upload multiple files:-----------------------------------------------------
  Future<Either<DomainException, Response>> uploadMultipleFiles(
    String url, {
    required List<String> filePaths,
    List<String>? filenames,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final Response response = await _dio.post(
        url,
        data: FormData.fromMap({
          'files': filePaths
              .map((file) => MultipartFile.fromFileSync(file, filename: filenames?[filePaths.indexOf(file)]))
              .toList(),
        }),
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );
      return Right(response);
    } catch (e, s) {
      return Left(_handleError(e, s));
    }
  }

  // Download:------------------------------------------------------------------
  Future<Either<DomainException, Response>> download(
    String url,
    String savePath, {
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final Response response = await _dio.download(
        url,
        savePath,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onReceiveProgress: onReceiveProgress,
      );
      return Right(response);
    } catch (e, s) {
      return Left(_handleError(e, s));
    }
  }

  DomainException _handleError(e, StackTrace s) {
    if (e is DioException) {
      return _handleDioException(e, s);
    }
    return UnknownException();
  }

  DomainException _handleDioException(DioException e, StackTrace s) {
    final errorMessage = DioExceptions.fromDioError(e).toString();
    return NetworkException(message: errorMessage, stackTrace: s);
  }
}
