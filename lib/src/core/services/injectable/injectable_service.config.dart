// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:oyan/src/core/api/client/rest/dio/dio_client.dart' as _i898;
import 'package:oyan/src/core/services/auth/auth_service_impl.dart' as _i697;
import 'package:oyan/src/core/services/auth/i_auth_service.dart' as _i74;
import 'package:oyan/src/core/services/auth/role_notifier.dart' as _i519;
import 'package:oyan/src/features/attachment/data/datasources/remote/attachment_remote_impl.dart' as _i992;
import 'package:oyan/src/features/attachment/data/datasources/remote/i_attachment_remote.dart' as _i714;
import 'package:oyan/src/features/attachment/data/repositories/attachment_repository_impl.dart' as _i864;
import 'package:oyan/src/features/attachment/domain/repositories/i_attachment_repository.dart' as _i790;
import 'package:oyan/src/features/attachment/domain/usecases/add_attachment_use_case.dart' as _i825;
import 'package:oyan/src/features/attachment/domain/usecases/get_attachment_use_case.dart' as _i587;
import 'package:oyan/src/features/chat/data/datasources/remote/chat_remote_impl.dart' as _i1037;
import 'package:oyan/src/features/chat/data/datasources/remote/i_chat_remote.dart' as _i211;
import 'package:oyan/src/features/chat/data/repositories/chat_repository_impl.dart' as _i355;
import 'package:oyan/src/features/chat/domain/repositories/i_chat_repository.dart' as _i770;
import 'package:oyan/src/features/chat/domain/usecases/get_chats_use_case.dart' as _i1056;
import 'package:oyan/src/features/chat/domain/usecases/get_message_use_case.dart' as _i311;
import 'package:oyan/src/features/chat/domain/usecases/get_messages_use_case.dart' as _i72;
import 'package:oyan/src/features/chat/domain/usecases/send_message_use_case.dart' as _i787;
import 'package:oyan/src/features/chat/domain/usecases/view_message_use_case.dart' as _i508;
import 'package:oyan/src/features/class_events/presentation/bloc/class_bloc.dart' as _i475;
import 'package:oyan/src/features/events/domain/use_cases/get_all_events_use_case.dart' as _i756;
import 'package:oyan/src/features/events/domain/use_cases/get_events_count_use_case.dart' as _i953;
import 'package:oyan/src/features/events/presentation/bloc/events_bloc.dart' as _i636;
import 'package:oyan/src/features/login/data/repositories/i_auth_repository.dart' as _i176;
import 'package:oyan/src/features/login/domain/repositories/auth_repository_impl.dart' as _i536;
import 'package:oyan/src/features/login/domain/usecases/forgot_password_use_case.dart' as _i138;
import 'package:oyan/src/features/login/domain/usecases/get_user_use_case.dart' as _i997;
import 'package:oyan/src/features/login/domain/usecases/login_use_case.dart' as _i388;
import 'package:oyan/src/features/login/domain/usecases/refresh_token_use_case.dart' as _i807;
import 'package:oyan/src/features/login/domain/usecases/update_password_use_case.dart' as _i986;
import 'package:oyan/src/features/login/domain/usecases/verify_user_case.dart' as _i798;
import 'package:oyan/src/features/news/data/datasources/remote/i_news_remote.dart' as _i793;
import 'package:oyan/src/features/news/data/datasources/remote/news_remote_impl.dart' as _i278;
import 'package:oyan/src/features/news/data/repositories/news_repository_impl.dart' as _i614;
import 'package:oyan/src/features/news/domain/repositories/i_news_repository.dart' as _i158;
import 'package:oyan/src/features/news/domain/usecases/add_feed_use_case.dart' as _i931;
import 'package:oyan/src/features/news/domain/usecases/add_post_use_case.dart' as _i239;
import 'package:oyan/src/features/news/domain/usecases/get_feed_use_case.dart' as _i423;
import 'package:oyan/src/features/news/domain/usecases/get_feeds_use_case.dart' as _i613;
import 'package:oyan/src/features/news/domain/usecases/get_post_use_case.dart' as _i363;
import 'package:oyan/src/features/news/domain/usecases/get_posts_use_case.dart' as _i568;
import 'package:oyan/src/features/review/presentation/bloc/review_bloc.dart' as _i382;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({String? environment, _i526.EnvironmentFilter? environmentFilter}) async {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.factory<_i519.RoleNotifier>(() => _i519.RoleNotifier());
    gh.factory<_i382.ReviewBloc>(() => _i382.ReviewBloc());
    gh.factory<_i475.ClassBloc>(() => _i475.ClassBloc());
    await gh.singletonAsync<_i898.DioRestClient>(() {
      final i = _i898.DioRestClient();
      return i.init().then((_) => i);
    }, preResolve: true);
    gh.lazySingleton<_i756.GetAllEventsUseCase>(() => _i756.GetAllEventsUseCase());
    gh.lazySingleton<_i953.GetEventsCountUseCase>(() => _i953.GetEventsCountUseCase());
    gh.lazySingleton<_i714.IAttachmentRemote>(() => _i992.AttachmentRemoteImpl(), instanceName: 'AttachmentRemoteImpl');
    gh.factory<_i636.EventsBloc>(
      () => _i636.EventsBloc(gh<_i756.GetAllEventsUseCase>(), gh<_i953.GetEventsCountUseCase>()),
    );
    gh.lazySingleton<_i790.IAttachmentRepository>(
      () => _i864.AttachmentRepositoryImpl(gh<_i714.IAttachmentRemote>(instanceName: 'AttachmentRemoteImpl')),
      instanceName: 'AttachmentRepositoryImpl',
    );
    gh.lazySingleton<_i74.IAuthService>(
      () => _i697.AuthServiceImpl(gh<_i898.DioRestClient>()),
      instanceName: 'AuthServiceImpl',
    );
    gh.lazySingleton<_i793.INewsRemote>(
      () => _i278.NewsRemoteImpl(gh<_i898.DioRestClient>()),
      instanceName: 'NewsRemoteImpl',
    );
    gh.lazySingleton<_i158.INewsRepository>(
      () => _i614.NewsRepositoryImpl(gh<_i793.INewsRemote>(instanceName: 'NewsRemoteImpl')),
      instanceName: 'NewsRepositoryImpl',
    );
    gh.lazySingleton<_i176.IAuthRepository>(
      () => _i536.AuthRepositoryImpl(gh<_i74.IAuthService>(instanceName: 'AuthServiceImpl')),
      instanceName: 'AuthRepositoryImpl',
    );
    gh.lazySingleton<_i211.IChatRemote>(
      () => _i1037.ChatRemoteImpl(gh<_i898.DioRestClient>()),
      instanceName: 'ChatRemoteImpl',
    );
    gh.lazySingleton<_i587.GetAttachmentUseCase>(
      () => _i587.GetAttachmentUseCase(gh<_i790.IAttachmentRepository>(instanceName: 'AttachmentRepositoryImpl')),
    );
    gh.lazySingleton<_i825.AddAttachmentUseCase>(
      () => _i825.AddAttachmentUseCase(gh<_i790.IAttachmentRepository>(instanceName: 'AttachmentRepositoryImpl')),
    );
    gh.lazySingleton<_i239.AddPostUseCase>(
      () => _i239.AddPostUseCase(gh<_i158.INewsRepository>(instanceName: 'NewsRepositoryImpl')),
    );
    gh.lazySingleton<_i931.AddFeedUseCase>(
      () => _i931.AddFeedUseCase(gh<_i158.INewsRepository>(instanceName: 'NewsRepositoryImpl')),
    );
    gh.lazySingleton<_i613.GetFeedsUseCase>(
      () => _i613.GetFeedsUseCase(gh<_i158.INewsRepository>(instanceName: 'NewsRepositoryImpl')),
    );
    gh.lazySingleton<_i363.GetPostUseCase>(
      () => _i363.GetPostUseCase(gh<_i158.INewsRepository>(instanceName: 'NewsRepositoryImpl')),
    );
    gh.lazySingleton<_i423.GetFeedUseCase>(
      () => _i423.GetFeedUseCase(gh<_i158.INewsRepository>(instanceName: 'NewsRepositoryImpl')),
    );
    gh.lazySingleton<_i568.GetPostsUseCase>(
      () => _i568.GetPostsUseCase(gh<_i158.INewsRepository>(instanceName: 'NewsRepositoryImpl')),
    );
    gh.lazySingleton<_i770.IChatRepository>(
      () => _i355.ChatRepositoryImpl(gh<_i211.IChatRemote>(instanceName: 'ChatRemoteImpl')),
      instanceName: 'ChatRepositoryImpl',
    );
    gh.lazySingleton<_i997.GetUserUseCase>(
      () => _i997.GetUserUseCase(gh<_i176.IAuthRepository>(instanceName: 'AuthRepositoryImpl')),
    );
    gh.lazySingleton<_i798.VerifyUseCase>(
      () => _i798.VerifyUseCase(gh<_i176.IAuthRepository>(instanceName: 'AuthRepositoryImpl')),
    );
    gh.lazySingleton<_i807.RefreshTokenUseCase>(
      () => _i807.RefreshTokenUseCase(gh<_i176.IAuthRepository>(instanceName: 'AuthRepositoryImpl')),
    );
    gh.lazySingleton<_i388.LoginUseCase>(
      () => _i388.LoginUseCase(gh<_i176.IAuthRepository>(instanceName: 'AuthRepositoryImpl')),
    );
    gh.lazySingleton<_i986.UpdatePasswordUseCase>(
      () => _i986.UpdatePasswordUseCase(gh<_i176.IAuthRepository>(instanceName: 'AuthRepositoryImpl')),
    );
    gh.lazySingleton<_i138.ForgotPasswordUseCase>(
      () => _i138.ForgotPasswordUseCase(gh<_i176.IAuthRepository>(instanceName: 'AuthRepositoryImpl')),
    );
    gh.lazySingleton<_i72.GetMessagesUseCase>(
      () => _i72.GetMessagesUseCase(gh<_i770.IChatRepository>(instanceName: 'ChatRepositoryImpl')),
    );
    gh.lazySingleton<_i1056.GetChatsUseCase>(
      () => _i1056.GetChatsUseCase(gh<_i770.IChatRepository>(instanceName: 'ChatRepositoryImpl')),
    );
    gh.lazySingleton<_i787.SendMessageUseCase>(
      () => _i787.SendMessageUseCase(gh<_i770.IChatRepository>(instanceName: 'ChatRepositoryImpl')),
    );
    gh.lazySingleton<_i508.ViewMessageUseCase>(
      () => _i508.ViewMessageUseCase(gh<_i770.IChatRepository>(instanceName: 'ChatRepositoryImpl')),
    );
    gh.lazySingleton<_i311.GetMessageUseCase>(
      () => _i311.GetMessageUseCase(gh<_i770.IChatRepository>(instanceName: 'ChatRepositoryImpl')),
    );
    return this;
  }
}
