import 'package:jwt_decode/jwt_decode.dart';
import 'package:oyan/src/app/app_navigation_wrapper.dart';
import 'package:oyan/src/app/imports.dart';
import 'package:oyan/src/features/camera/presentation/camera_page.dart';
import 'package:oyan/src/features/class_events/presentation/class_event_page.dart';
import 'package:oyan/src/features/competition/presentation/competition_page.dart';
import 'package:oyan/src/features/home/presentation/home_page.dart';
import 'package:oyan/src/features/profile/presentation/profile_page.dart';
import 'package:oyan/src/features/settings/domain/entities/user_token_entity.dart';
import 'package:oyan/src/features/welcome/presentation/welcome_page.dart';

import '../../features/forgot_password/presentation/forgot_password_page.dart';
import '../../features/login/presentation/login_page.dart';
import '../services/auth/role_notifier.dart';
import '../services/storage/storage_service_impl.dart';

part 'route_list.dart';
part 'route_transitions.dart';
part 'router_names.dart';
part 'router_paths.dart';

GoRouter routerProvider() {
  final StorageServiceImpl st = StorageServiceImpl();
  final String? token = st.getToken();

  return GoRouter(
    refreshListenable: st,
    // initialLocation: '/',
    initialLocation: RoutePaths.profile,
    debugLogDiagnostics: true,
    routes: _routes,
  );
}
