import 'package:oyan/src/core/api/websocket/web_socket_service.dart';
import 'package:oyan/src/core/services/injectable/service_register_proxy.dart';
import 'package:oyan/src/features/chat/domain/usecases/get_chats_use_case.dart';
import 'package:oyan/src/features/chat/domain/usecases/get_messages_use_case.dart';
import 'package:oyan/src/features/chat/presentation/bloc/chat_bloc.dart';
import 'package:oyan/src/features/comments/bloc/comment_bloc.dart';
import 'package:oyan/src/features/comments/domain/usecases/add_comment_use_case.dart';
import 'package:oyan/src/features/comments/domain/usecases/get_comment_use_case.dart';
import 'package:oyan/src/features/genre/domain/usecases/add_genre_use_case.dart';
import 'package:oyan/src/features/genre/domain/usecases/get_genre_use_case.dart';
import 'package:oyan/src/features/genre/presentation/bloc/genre_bloc.dart';
import 'package:oyan/src/features/home/domain/usecases/add_my_book_use_case.dart';
import 'package:oyan/src/features/home/domain/usecases/get_book_by_id_use_case.dart';
import 'package:oyan/src/features/home/domain/usecases/get_book_use_case.dart';
import 'package:oyan/src/features/home/domain/usecases/get_my_book_use_case.dart';
import 'package:oyan/src/features/home/presentation/bloc/book_bloc.dart';
import 'package:oyan/src/features/login/domain/usecases/csrf_token_use_case.dart';
import 'package:oyan/src/features/login/domain/usecases/register_use_case.dart';
import 'package:oyan/src/features/news/domain/usecases/add_feed_use_case.dart';
import 'package:oyan/src/features/news/domain/usecases/get_feed_use_case.dart';
import 'package:oyan/src/features/news/presentation/bloc/news_bloc.dart';
import 'package:oyan/src/features/profile/domain/usecases/get_profile_use_case.dart';
import 'package:oyan/src/features/profile/domain/usecases/update_profile_use_case.dart';
import 'package:oyan/src/features/profile/presentation/bloc/profile_bloc.dart';
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
      getIt<RegisterUseCase>(),
    ),
  );

  getIt.registerBloc<SettingsBloc>(
    factory: true,
    () => SettingsBloc(),
  );

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

  getIt.registerBloc<CommentBloc>(
    factory: true,
    () => CommentBloc(
      getIt<GetCommentUseCase>(),
      getIt<AddCommentUseCase>(),
    ),
  );

  getIt.registerBloc<ProfileBloc>(
    factory: true,
    () => ProfileBloc(
      getIt<GetProfileUseCase>(),
      getIt<UpdateProfileUseCase>(),
    ),
  );

  getIt.registerBloc<BookBloc>(
    factory: true,
    () => BookBloc(
      getIt<GetBookUseCase>(),
      getIt<GetMyBookUseCase>(),
      getIt<AddMyBookUseCase>(),
      getIt<GetBookByIdUseCase>(),
    ),
  );

  getIt.registerBloc<GenreBloc>(
    factory: true,
    () => GenreBloc(
      getIt<GetGenreUseCase>(),
      getIt<AddGenreUseCase>(),
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
