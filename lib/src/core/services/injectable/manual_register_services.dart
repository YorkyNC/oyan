import 'package:dio/dio.dart';
import 'package:oyan/src/core/api/websocket/web_socket_service.dart';
import 'package:oyan/src/core/services/injectable/service_register_proxy.dart';
import 'package:oyan/src/features/chat/domain/usecases/get_chats_use_case.dart';
import 'package:oyan/src/features/chat/domain/usecases/get_messages_use_case.dart';
import 'package:oyan/src/features/chat/presentation/bloc/chat_bloc.dart';
import 'package:oyan/src/features/login/domain/usecases/csrf_token_use_case.dart';
import 'package:oyan/src/features/news/domain/usecases/add_feed_use_case.dart';
import 'package:oyan/src/features/news/domain/usecases/get_feed_use_case.dart';
import 'package:oyan/src/features/news/presentation/bloc/news_bloc.dart';
import 'package:oyan/src/features/settings/presentation/bloc/settings_bloc.dart';

import '../../../features/chat/domain/usecases/get_message_use_case.dart';
import '../../../features/chat/domain/usecases/send_message_use_case.dart';
import '../../../features/chat/domain/usecases/view_message_use_case.dart';
import '../../../features/login/domain/usecases/forgot_password_use_case.dart';
import '../../../features/login/domain/usecases/get_user_use_case.dart';
import '../../../features/login/domain/usecases/login_use_case.dart';
import '../../../features/login/domain/usecases/refresh_token_use_case.dart';
import '../../../features/login/domain/usecases/update_password_use_case.dart';
import '../../../features/login/domain/usecases/verify_user_case.dart';
import '../../../features/login/presentation/bloc/auth_bloc.dart';
import '../../../features/news/domain/usecases/add_post_use_case.dart';
import '../../../features/news/domain/usecases/get_feeds_use_case.dart';
import '../../../features/news/domain/usecases/get_post_use_case.dart';
import '../../../features/news/domain/usecases/get_posts_use_case.dart';
import '../centrifuge/chat_client.dart';
import 'injectable_service.dart';

void manualRegisterServices() {
  getIt.registerLazySingleton<WebSocketService>(() => WebSocketService());
  getIt.registerLazySingleton<Dio>(() {
    final dio = Dio(
      BaseOptions(
        baseUrl: 'https://education.greeneye.kz/api',
        headers: {'Content-Type': 'application/json', 'Accept': 'application/json'},
        connectTimeout: const Duration(seconds: 5),
        receiveTimeout: const Duration(seconds: 3),
      ),
    );

    // Add logging interceptor if needed
    dio.interceptors.add(LogInterceptor(requestBody: true, responseBody: true));

    return dio;
  });

  // getIt.registerLazySingleton<ChatService>(
  //   () => ChatService(),
  // );
  // In your dependency injection setup
  getIt.registerLazySingleton(() => ChatClient());
  getIt.registerBloc<AuthBloc>(
    factory: true,
    () => AuthBloc(
      getIt<LoginUseCase>(),
      getIt<GetUserUseCase>(),
      getIt<VerifyUseCase>(),
      getIt<ForgotPasswordUseCase>(),
      getIt<UpdatePasswordUseCase>(),
      getIt<RefreshTokenUseCase>(),
      getIt<CsrfTokenUseCase>(),
    ),
  );

  getIt.registerBloc<SettingsBloc>(factory: true, () => SettingsBloc());

  getIt.registerBloc<ChatBloc>(
    factory: true,
    () => ChatBloc(
      getIt<GetChatsUseCase>(),
      getIt<GetMessagesUseCase>(),
      getIt<GetMessageUseCase>(),
      getIt<SendMessageUseCase>(),
      getIt<ViewMessageUseCase>(),
    ),
  );

  getIt.registerBloc<NewsBloc>(
    factory: true,
    () => NewsBloc(
      getIt<AddFeedUseCase>(),
      getIt<GetFeedUseCase>(),
      getIt<GetFeedsUseCase>(),
      getIt<AddPostUseCase>(),
      getIt<GetPostUseCase>(),
      getIt<GetPostsUseCase>(),
    ),
  );
}
