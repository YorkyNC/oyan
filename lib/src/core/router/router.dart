import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jwt_decode/jwt_decode.dart';
import 'package:oyan/src/app/app_navigation_wrapper.dart';
import 'package:oyan/src/app/imports.dart';
import 'package:oyan/src/core/services/injectable/injectable_service.dart';
import 'package:oyan/src/features/camera/presentation/camera_page.dart';
import 'package:oyan/src/features/class_events/presentation/class_event_page.dart';
import 'package:oyan/src/features/competition/presentation/competition_page.dart';
import 'package:oyan/src/features/competition/presentation/page/test_page.dart';
import 'package:oyan/src/features/competition/presentation/page/tournaments_detail_page.dart';
import 'package:oyan/src/features/competition/presentation/result_page.dart';
import 'package:oyan/src/features/genre/presentation/genre_page.dart';
import 'package:oyan/src/features/home/domain/entities/book.dart';
import 'package:oyan/src/features/home/presentation/bloc/book_bloc.dart';
import 'package:oyan/src/features/home/presentation/home_page.dart';
import 'package:oyan/src/features/my-books/presentation/book_information_page.dart';
import 'package:oyan/src/features/my-books/presentation/my_books_page.dart';
import 'package:oyan/src/features/my-books/presentation/see_all_page.dart';
import 'package:oyan/src/features/my-books/read_book_page.dart';
import 'package:oyan/src/features/profile/presentation/page/achivement_page.dart';
import 'package:oyan/src/features/profile/presentation/page/change_information_page.dart';
import 'package:oyan/src/features/profile/presentation/page/choose_a_photo_page.dart';
import 'package:oyan/src/features/profile/presentation/page/notification_page.dart';
import 'package:oyan/src/features/profile/presentation/page/profile_page.dart';
import 'package:oyan/src/features/profile/presentation/page/support_page.dart';
import 'package:oyan/src/features/settings/domain/entities/user_token_entity.dart';
import 'package:oyan/src/features/story/domain/request/get_daily_hits_request.dart';
import 'package:oyan/src/features/story/presentation/bloc/story_bloc.dart';
import 'package:oyan/src/features/story/presentation/page/competitons_story_page.dart';
import 'package:oyan/src/features/story/presentation/page/daily_story_page.dart';
import 'package:oyan/src/features/story/presentation/page/new_hits_story_page.dart';
import 'package:oyan/src/features/welcome/presentation/welcome_page.dart';

import '../services/auth/role_notifier.dart';
import '../services/storage/storage_service_impl.dart';

part 'route_list.dart';
part 'route_transitions.dart';
part 'router_names.dart';
part 'router_paths.dart';

GoRouter routerProvider() {
  final StorageServiceImpl st = StorageServiceImpl();
  final String? token = st.getToken();
  final bool isAuthenticated = st.isLoggedIn;

  return GoRouter(
    refreshListenable: st,
    initialLocation: isAuthenticated ? RoutePaths.home : RoutePaths.welcome,
    debugLogDiagnostics: true,
    routes: _routes,
  );
}
