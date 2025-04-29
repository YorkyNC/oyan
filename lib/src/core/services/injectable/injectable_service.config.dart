// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:oyan/src/core/api/client/rest/dio/dio_client.dart' as _i140;
import 'package:oyan/src/core/services/auth/auth_service_impl.dart' as _i161;
import 'package:oyan/src/core/services/auth/i_auth_service.dart' as _i877;
import 'package:oyan/src/core/services/auth/role_notifier.dart' as _i801;
import 'package:oyan/src/core/services/csrf/csrf_service.dart' as _i301;
import 'package:oyan/src/features/attachment/data/datasources/remote/attachment_remote_impl.dart'
    as _i958;
import 'package:oyan/src/features/attachment/data/datasources/remote/i_attachment_remote.dart'
    as _i594;
import 'package:oyan/src/features/attachment/data/repositories/attachment_repository_impl.dart'
    as _i141;
import 'package:oyan/src/features/attachment/domain/repositories/i_attachment_repository.dart'
    as _i773;
import 'package:oyan/src/features/attachment/domain/usecases/add_attachment_use_case.dart'
    as _i338;
import 'package:oyan/src/features/attachment/domain/usecases/get_attachment_use_case.dart'
    as _i201;
import 'package:oyan/src/features/chat/data/datasources/remote/chat_remote_impl.dart'
    as _i702;
import 'package:oyan/src/features/chat/data/datasources/remote/i_chat_remote.dart'
    as _i309;
import 'package:oyan/src/features/chat/data/repositories/chat_repository_impl.dart'
    as _i292;
import 'package:oyan/src/features/chat/domain/repositories/i_chat_repository.dart'
    as _i188;
import 'package:oyan/src/features/chat/domain/usecases/get_chats_use_case.dart'
    as _i183;
import 'package:oyan/src/features/chat/domain/usecases/get_message_use_case.dart'
    as _i1068;
import 'package:oyan/src/features/chat/domain/usecases/get_messages_use_case.dart'
    as _i126;
import 'package:oyan/src/features/chat/domain/usecases/send_message_use_case.dart'
    as _i868;
import 'package:oyan/src/features/chat/domain/usecases/view_message_use_case.dart'
    as _i63;
import 'package:oyan/src/features/class_events/presentation/bloc/class_bloc.dart'
    as _i963;
import 'package:oyan/src/features/comments/data/datasources/remote/comment_remote_impl.dart'
    as _i155;
import 'package:oyan/src/features/comments/data/datasources/remote/i_comment_remote.dart'
    as _i2;
import 'package:oyan/src/features/comments/data/repositories/comment_repository_impl.dart'
    as _i188;
import 'package:oyan/src/features/comments/domain/repositories/i_comment_repository.dart'
    as _i391;
import 'package:oyan/src/features/comments/domain/usecases/add_comment_use_case.dart'
    as _i29;
import 'package:oyan/src/features/comments/domain/usecases/get_comment_use_case.dart'
    as _i359;
import 'package:oyan/src/features/competition/data/datasources/remote/competition_remote_impl.dart'
    as _i770;
import 'package:oyan/src/features/competition/data/datasources/remote/i_competition_remote.dart'
    as _i447;
import 'package:oyan/src/features/competition/data/repositories/competition_repository_impl.dart'
    as _i550;
import 'package:oyan/src/features/competition/domain/repositories/i_competition_repository.dart'
    as _i521;
import 'package:oyan/src/features/competition/domain/usecases/get_competition_use_case.dart'
    as _i1072;
import 'package:oyan/src/features/competition/domain/usecases/get_daily_tasks_use_case.dart'
    as _i718;
import 'package:oyan/src/features/competition/domain/usecases/get_result_use_case.dart'
    as _i817;
import 'package:oyan/src/features/events/domain/use_cases/get_all_events_use_case.dart'
    as _i967;
import 'package:oyan/src/features/events/domain/use_cases/get_events_count_use_case.dart'
    as _i210;
import 'package:oyan/src/features/events/presentation/bloc/events_bloc.dart'
    as _i277;
import 'package:oyan/src/features/genre/data/datasources/remote/genre_remote_impl.dart'
    as _i480;
import 'package:oyan/src/features/genre/data/datasources/remote/i_genre_remote.dart'
    as _i513;
import 'package:oyan/src/features/genre/data/repositories/genre_repository_impl.dart'
    as _i35;
import 'package:oyan/src/features/genre/domain/repositories/i_genre_repository.dart'
    as _i23;
import 'package:oyan/src/features/genre/domain/usecases/add_genre_use_case.dart'
    as _i865;
import 'package:oyan/src/features/genre/domain/usecases/get_genre_use_case.dart'
    as _i781;
import 'package:oyan/src/features/home/data/datasources/remote/book_remote_impl.dart'
    as _i994;
import 'package:oyan/src/features/home/data/datasources/remote/i_book_remote.dart'
    as _i966;
import 'package:oyan/src/features/home/data/repositories/book_repository_impl.dart'
    as _i908;
import 'package:oyan/src/features/home/domain/repositories/i_book_repository.dart'
    as _i842;
import 'package:oyan/src/features/home/domain/usecases/add_my_book_use_case.dart'
    as _i594;
import 'package:oyan/src/features/home/domain/usecases/get_book_by_id_use_case.dart'
    as _i499;
import 'package:oyan/src/features/home/domain/usecases/get_book_use_case.dart'
    as _i446;
import 'package:oyan/src/features/home/domain/usecases/get_my_book_use_case.dart'
    as _i24;
import 'package:oyan/src/features/login/data/repositories/i_auth_repository.dart'
    as _i913;
import 'package:oyan/src/features/login/domain/repositories/auth_repository_impl.dart'
    as _i871;
import 'package:oyan/src/features/login/domain/usecases/csrf_token_use_case.dart'
    as _i377;
import 'package:oyan/src/features/login/domain/usecases/forgot_password_use_case.dart'
    as _i189;
import 'package:oyan/src/features/login/domain/usecases/get_user_use_case.dart'
    as _i1037;
import 'package:oyan/src/features/login/domain/usecases/login_use_case.dart'
    as _i1029;
import 'package:oyan/src/features/login/domain/usecases/refresh_token_use_case.dart'
    as _i484;
import 'package:oyan/src/features/login/domain/usecases/register_use_case.dart'
    as _i353;
import 'package:oyan/src/features/login/domain/usecases/update_password_use_case.dart'
    as _i915;
import 'package:oyan/src/features/login/domain/usecases/verify_user_case.dart'
    as _i757;
import 'package:oyan/src/features/news/data/datasources/remote/i_news_remote.dart'
    as _i227;
import 'package:oyan/src/features/news/data/datasources/remote/news_remote_impl.dart'
    as _i47;
import 'package:oyan/src/features/news/data/repositories/news_repository_impl.dart'
    as _i924;
import 'package:oyan/src/features/news/domain/repositories/i_news_repository.dart'
    as _i1002;
import 'package:oyan/src/features/news/domain/usecases/add_feed_use_case.dart'
    as _i644;
import 'package:oyan/src/features/news/domain/usecases/add_post_use_case.dart'
    as _i231;
import 'package:oyan/src/features/news/domain/usecases/get_feed_use_case.dart'
    as _i73;
import 'package:oyan/src/features/news/domain/usecases/get_feeds_use_case.dart'
    as _i635;
import 'package:oyan/src/features/news/domain/usecases/get_post_use_case.dart'
    as _i1054;
import 'package:oyan/src/features/news/domain/usecases/get_posts_use_case.dart'
    as _i1068;
import 'package:oyan/src/features/profile/data/datasources/remote/i_profile_remote.dart'
    as _i543;
import 'package:oyan/src/features/profile/data/datasources/remote/profile_remote_impl.dart'
    as _i9;
import 'package:oyan/src/features/profile/data/repositories/profile_repository_impl.dart'
    as _i425;
import 'package:oyan/src/features/profile/domain/repositories/i_profile_repository.dart'
    as _i246;
import 'package:oyan/src/features/profile/domain/usecases/get_profile_use_case.dart'
    as _i73;
import 'package:oyan/src/features/profile/domain/usecases/update_profile_use_case.dart'
    as _i1057;
import 'package:oyan/src/features/review/presentation/bloc/review_bloc.dart'
    as _i459;
import 'package:oyan/src/features/story/data/datasources/remote/book_remote_impl.dart'
    as _i54;
import 'package:oyan/src/features/story/data/datasources/remote/i_story_remote.dart'
    as _i16;
import 'package:oyan/src/features/story/data/repositories/story_repository_impl.dart'
    as _i171;
import 'package:oyan/src/features/story/domain/repositories/i_story_repository.dart'
    as _i263;
import 'package:oyan/src/features/story/domain/usecases/get_daily_hits_use_case.dart'
    as _i132;
import 'package:oyan/src/features/story/domain/usecases/get_daily_use_case.dart'
    as _i445;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i801.RoleNotifier>(() => _i801.RoleNotifier());
    gh.factory<_i459.ReviewBloc>(() => _i459.ReviewBloc());
    gh.factory<_i963.ClassBloc>(() => _i963.ClassBloc());
    await gh.singletonAsync<_i140.DioRestClient>(
      () {
        final i = _i140.DioRestClient();
        return i.init().then((_) => i);
      },
      preResolve: true,
    );
    gh.lazySingleton<_i210.GetEventsCountUseCase>(
        () => _i210.GetEventsCountUseCase());
    gh.lazySingleton<_i967.GetAllEventsUseCase>(
        () => _i967.GetAllEventsUseCase());
    gh.lazySingleton<_i594.IAttachmentRemote>(
      () => _i958.AttachmentRemoteImpl(),
      instanceName: 'AttachmentRemoteImpl',
    );
    gh.lazySingleton<_i2.ICommentRemote>(
      () => _i155.CommentRemoteImpl(gh<_i140.DioRestClient>()),
      instanceName: 'CommentRemoteImpl',
    );
    gh.lazySingleton<_i391.ICommentRepository>(
      () => _i188.CommentRepositoryImpl(
          gh<_i2.ICommentRemote>(instanceName: 'CommentRemoteImpl')),
      instanceName: 'CommentRepositoryImpl',
    );
    gh.lazySingleton<_i227.INewsRemote>(
      () => _i47.NewsRemoteImpl(gh<_i140.DioRestClient>()),
      instanceName: 'NewsRemoteImpl',
    );
    gh.singleton<_i301.CsrfService>(
        () => _i301.CsrfService(gh<_i140.DioRestClient>()));
    gh.lazySingleton<_i966.IBookRemote>(
      () => _i994.BookRemoteImpl(gh<_i140.DioRestClient>()),
      instanceName: 'BookRemoteImpl',
    );
    gh.lazySingleton<_i773.IAttachmentRepository>(
      () => _i141.AttachmentRepositoryImpl(
          gh<_i594.IAttachmentRemote>(instanceName: 'AttachmentRemoteImpl')),
      instanceName: 'AttachmentRepositoryImpl',
    );
    gh.lazySingleton<_i513.IGenreRemote>(
      () => _i480.GenreRemoteImpl(gh<_i140.DioRestClient>()),
      instanceName: 'GenreRemoteImpl',
    );
    gh.lazySingleton<_i543.IProfileRemote>(
      () => _i9.ProfileRemoteImpl(gh<_i140.DioRestClient>()),
      instanceName: 'ProfileRemoteImpl',
    );
    gh.lazySingleton<_i1002.INewsRepository>(
      () => _i924.NewsRepositoryImpl(
          gh<_i227.INewsRemote>(instanceName: 'NewsRemoteImpl')),
      instanceName: 'NewsRepositoryImpl',
    );
    gh.lazySingleton<_i309.IChatRemote>(
      () => _i702.ChatRemoteImpl(gh<_i140.DioRestClient>()),
      instanceName: 'ChatRemoteImpl',
    );
    gh.lazySingleton<_i447.ICompetitionRemote>(
      () => _i770.CompetitionRemoteImpl(gh<_i140.DioRestClient>()),
      instanceName: 'CompetitionRemoteImpl',
    );
    gh.lazySingleton<_i877.IAuthService>(
      () => _i161.AuthServiceImpl(gh<_i140.DioRestClient>()),
      instanceName: 'AuthServiceImpl',
    );
    gh.lazySingleton<_i16.IStoryRemote>(
      () => _i54.StoryRemoteImpl(gh<_i140.DioRestClient>()),
      instanceName: 'StoryRemoteImpl',
    );
    gh.lazySingleton<_i842.IBookRepository>(
      () => _i908.BookRepositoryImpl(
          gh<_i966.IBookRemote>(instanceName: 'BookRemoteImpl')),
      instanceName: 'BookRepositoryImpl',
    );
    gh.lazySingleton<_i201.GetAttachmentUseCase>(() =>
        _i201.GetAttachmentUseCase(gh<_i773.IAttachmentRepository>(
            instanceName: 'AttachmentRepositoryImpl')));
    gh.lazySingleton<_i338.AddAttachmentUseCase>(() =>
        _i338.AddAttachmentUseCase(gh<_i773.IAttachmentRepository>(
            instanceName: 'AttachmentRepositoryImpl')));
    gh.lazySingleton<_i263.IStoryRepository>(
      () => _i171.StoryRepositoryImpl(
          gh<_i16.IStoryRemote>(instanceName: 'StoryRemoteImpl')),
      instanceName: 'StoryRepositoryImpl',
    );
    gh.lazySingleton<_i188.IChatRepository>(
      () => _i292.ChatRepositoryImpl(
          gh<_i309.IChatRemote>(instanceName: 'ChatRemoteImpl')),
      instanceName: 'ChatRepositoryImpl',
    );
    gh.factory<_i277.EventsBloc>(() => _i277.EventsBloc(
          gh<_i967.GetAllEventsUseCase>(),
          gh<_i210.GetEventsCountUseCase>(),
        ));
    gh.lazySingleton<_i359.GetCommentUseCase>(() => _i359.GetCommentUseCase(
        gh<_i391.ICommentRepository>(instanceName: 'CommentRepositoryImpl')));
    gh.lazySingleton<_i29.AddCommentUseCase>(() => _i29.AddCommentUseCase(
        gh<_i391.ICommentRepository>(instanceName: 'CommentRepositoryImpl')));
    gh.lazySingleton<_i913.IAuthRepository>(
      () => _i871.AuthRepositoryImpl(
          gh<_i877.IAuthService>(instanceName: 'AuthServiceImpl')),
      instanceName: 'AuthRepositoryImpl',
    );
    gh.lazySingleton<_i1037.GetUserUseCase>(() => _i1037.GetUserUseCase(
        gh<_i913.IAuthRepository>(instanceName: 'AuthRepositoryImpl')));
    gh.lazySingleton<_i757.VerifyUseCase>(() => _i757.VerifyUseCase(
        gh<_i913.IAuthRepository>(instanceName: 'AuthRepositoryImpl')));
    gh.lazySingleton<_i484.RefreshTokenUseCase>(() => _i484.RefreshTokenUseCase(
        gh<_i913.IAuthRepository>(instanceName: 'AuthRepositoryImpl')));
    gh.lazySingleton<_i353.RegisterUseCase>(() => _i353.RegisterUseCase(
        gh<_i913.IAuthRepository>(instanceName: 'AuthRepositoryImpl')));
    gh.lazySingleton<_i1029.LoginUseCase>(() => _i1029.LoginUseCase(
        gh<_i913.IAuthRepository>(instanceName: 'AuthRepositoryImpl')));
    gh.lazySingleton<_i915.UpdatePasswordUseCase>(() =>
        _i915.UpdatePasswordUseCase(
            gh<_i913.IAuthRepository>(instanceName: 'AuthRepositoryImpl')));
    gh.lazySingleton<_i189.ForgotPasswordUseCase>(() =>
        _i189.ForgotPasswordUseCase(
            gh<_i913.IAuthRepository>(instanceName: 'AuthRepositoryImpl')));
    gh.lazySingleton<_i377.CsrfTokenUseCase>(() => _i377.CsrfTokenUseCase(
        gh<_i913.IAuthRepository>(instanceName: 'AuthRepositoryImpl')));
    gh.lazySingleton<_i446.GetBookUseCase>(() => _i446.GetBookUseCase(
        gh<_i842.IBookRepository>(instanceName: 'BookRepositoryImpl')));
    gh.lazySingleton<_i499.GetBookByIdUseCase>(() => _i499.GetBookByIdUseCase(
        gh<_i842.IBookRepository>(instanceName: 'BookRepositoryImpl')));
    gh.lazySingleton<_i24.GetMyBookUseCase>(() => _i24.GetMyBookUseCase(
        gh<_i842.IBookRepository>(instanceName: 'BookRepositoryImpl')));
    gh.lazySingleton<_i594.AddMyBookUseCase>(() => _i594.AddMyBookUseCase(
        gh<_i842.IBookRepository>(instanceName: 'BookRepositoryImpl')));
    gh.lazySingleton<_i231.AddPostUseCase>(() => _i231.AddPostUseCase(
        gh<_i1002.INewsRepository>(instanceName: 'NewsRepositoryImpl')));
    gh.lazySingleton<_i644.AddFeedUseCase>(() => _i644.AddFeedUseCase(
        gh<_i1002.INewsRepository>(instanceName: 'NewsRepositoryImpl')));
    gh.lazySingleton<_i635.GetFeedsUseCase>(() => _i635.GetFeedsUseCase(
        gh<_i1002.INewsRepository>(instanceName: 'NewsRepositoryImpl')));
    gh.lazySingleton<_i1054.GetPostUseCase>(() => _i1054.GetPostUseCase(
        gh<_i1002.INewsRepository>(instanceName: 'NewsRepositoryImpl')));
    gh.lazySingleton<_i73.GetFeedUseCase>(() => _i73.GetFeedUseCase(
        gh<_i1002.INewsRepository>(instanceName: 'NewsRepositoryImpl')));
    gh.lazySingleton<_i1068.GetPostsUseCase>(() => _i1068.GetPostsUseCase(
        gh<_i1002.INewsRepository>(instanceName: 'NewsRepositoryImpl')));
    gh.lazySingleton<_i246.IProfileRepository>(
      () => _i425.ProfileRepositoryImpl(
          gh<_i543.IProfileRemote>(instanceName: 'ProfileRemoteImpl')),
      instanceName: 'ProfileRepositoryImpl',
    );
    gh.lazySingleton<_i23.IGenreRepository>(
      () => _i35.GenreRepositoryImpl(
          gh<_i513.IGenreRemote>(instanceName: 'GenreRemoteImpl')),
      instanceName: 'GenreRepositoryImpl',
    );
    gh.lazySingleton<_i521.ICompetitionRepository>(
      () => _i550.CompetitionRepositoryImpl(
          gh<_i447.ICompetitionRemote>(instanceName: 'CompetitionRemoteImpl')),
      instanceName: 'CompetitionRepositoryImpl',
    );
    gh.lazySingleton<_i445.GetDailyUseCase>(() => _i445.GetDailyUseCase(
        gh<_i263.IStoryRepository>(instanceName: 'StoryRepositoryImpl')));
    gh.lazySingleton<_i132.GetDailyHitsUseCase>(() => _i132.GetDailyHitsUseCase(
        gh<_i263.IStoryRepository>(instanceName: 'StoryRepositoryImpl')));
    gh.lazySingleton<_i781.GetGenreUseCase>(() => _i781.GetGenreUseCase(
        gh<_i23.IGenreRepository>(instanceName: 'GenreRepositoryImpl')));
    gh.lazySingleton<_i865.AddGenreUseCase>(() => _i865.AddGenreUseCase(
        gh<_i23.IGenreRepository>(instanceName: 'GenreRepositoryImpl')));
    gh.lazySingleton<_i1072.GetCompetitionUseCase>(() =>
        _i1072.GetCompetitionUseCase(gh<_i521.ICompetitionRepository>(
            instanceName: 'CompetitionRepositoryImpl')));
    gh.lazySingleton<_i718.GetDailyTasksUseCase>(() =>
        _i718.GetDailyTasksUseCase(gh<_i521.ICompetitionRepository>(
            instanceName: 'CompetitionRepositoryImpl')));
    gh.lazySingleton<_i817.GetResultUseCase>(() => _i817.GetResultUseCase(
        gh<_i521.ICompetitionRepository>(
            instanceName: 'CompetitionRepositoryImpl')));
    gh.lazySingleton<_i126.GetMessagesUseCase>(() => _i126.GetMessagesUseCase(
        gh<_i188.IChatRepository>(instanceName: 'ChatRepositoryImpl')));
    gh.lazySingleton<_i183.GetChatsUseCase>(() => _i183.GetChatsUseCase(
        gh<_i188.IChatRepository>(instanceName: 'ChatRepositoryImpl')));
    gh.lazySingleton<_i868.SendMessageUseCase>(() => _i868.SendMessageUseCase(
        gh<_i188.IChatRepository>(instanceName: 'ChatRepositoryImpl')));
    gh.lazySingleton<_i63.ViewMessageUseCase>(() => _i63.ViewMessageUseCase(
        gh<_i188.IChatRepository>(instanceName: 'ChatRepositoryImpl')));
    gh.lazySingleton<_i1068.GetMessageUseCase>(() => _i1068.GetMessageUseCase(
        gh<_i188.IChatRepository>(instanceName: 'ChatRepositoryImpl')));
    gh.lazySingleton<_i1057.UpdateProfileUseCase>(() =>
        _i1057.UpdateProfileUseCase(gh<_i246.IProfileRepository>(
            instanceName: 'ProfileRepositoryImpl')));
    gh.lazySingleton<_i73.GetProfileUseCase>(() => _i73.GetProfileUseCase(
        gh<_i246.IProfileRepository>(instanceName: 'ProfileRepositoryImpl')));
    return this;
  }
}
