part of 'router.dart';

final leftTabNavigatorKey = GlobalKey<NavigatorState>();
final leftTabTeacherNavigatorKey = GlobalKey<NavigatorState>();
final centerTabNavigatorKey = GlobalKey<NavigatorState>();
final rightTabNavigatorKey = GlobalKey<NavigatorState>();

final st = StorageServiceImpl();

int getCUrrentAcademicYear() {
  final today = DateTime.now();
  return today.month <= 6 ? today.year - 1 : today.year;
}

Page getPage({
  required Widget child,
  required GoRouterState state,
}) {
  return MaterialPage(
    maintainState: false,
    key: state.pageKey,
    child: child,
  );
}

// Initialize user role from token data.
UserTokenEntity getCurrentRole() {
  final token = st.getToken();
  if (token == null || token.isEmpty) {
    return UserTokenEntity.fromJson({});
  }
  return UserTokenEntity.fromJson(Jwt.parseJwt(token));
}

// Create a role provider or notifier to manage role state
class RoleProvider extends ChangeNotifier {
  UserTokenEntity? _role;

  RoleProvider() : _role = getCurrentRole();

  UserTokenEntity? get role => _role;

  void updateRole() {
    _role = getCurrentRole();
    notifyListeners();
  }

  void clearRole() {
    _role = null;
    notifyListeners();
  }
}

final roleNotifier = RoleNotifier();
String schoolId = roleNotifier.getCurrentSchoolId()!;
int currentYear = getCUrrentAcademicYear();

//pages paths

List<RouteBase> _routes = [
  StatefulShellRoute.indexedStack(
    builder: (context, state, navigationShell) {
      return AppNavigationWrapper(
        currentIndex: navigationShell.currentIndex,
        onTap: navigationShell.goBranch,
        child: navigationShell,
      );
    },
    branches: [
      // First Tab - Role-specific content
      StatefulShellBranch(
        routes: [
          GoRoute(
            path: RoutePaths.initial,
            redirect: (context, state) => RoutePaths.home,
          ),
          GoRoute(
            path: RoutePaths.home,
            pageBuilder: (context, state) {
              // final roleNotifier = context.watch<RoleNotifier>();

              return getPage(child: const HomePage(), state: state);

              // Role-specific page routing
              switch (roleNotifier.currentRole) {
                case 'teacher':
                  return getPage(child: const SizedBox(), state: state);
                case 'classroomTeacher':
                  return getPage(child: const SizedBox(), state: state);
                case 'parent':
                  return getPage(child: const SizedBox(), state: state);
                default:
                  return getPage(child: const SizedBox(), state: state);
              }
            },
          ),
        ],
      ),

      StatefulShellBranch(
        routes: [
          GoRoute(
            path: RoutePaths.competition,
            pageBuilder: (context, state) => getPage(
              child: const CompetitionPage(),
              state: state,
            ),
          ),
        ],
      ),

      StatefulShellBranch(
        routes: [
          GoRoute(
            path: RoutePaths.books,
            pageBuilder: (context, state) => getPage(
              child: const SizedBox(),
              state: state,
            ),
          ),
        ],
      ),
      StatefulShellBranch(
        routes: [
          GoRoute(
            path: RoutePaths.profile,
            pageBuilder: (context, state) => getPage(
              child: const ProfilePage(),
              state: state,
            ),
          ),
        ],
      ),
    ],
  ),
  // GoRoute(
  //   path: RoutePaths.createNews,
  //   pageBuilder: (context, state) {
  //     final VoidCallback? refreshPosts = state.extra as VoidCallback?;
  //     return MaterialPage(
  //       child: NewPublicationPage(
  //         refreshPosts: refreshPosts ?? () {},
  //       ),
  //     );
  //   },
  // ),

  // GoRoute(
  //   path: RoutePaths.chatsMessage,
  //   pageBuilder: (context, state) {
  //     final data = state.extra as Map<String, dynamic>;
  //     return getPage(
  //       child: ChatMessagePage(
  //         chatId: data['chatId'],
  //         chatTitle: data['chatTitle'],
  //       ),
  //       state: state,
  //     );
  //   },
  // ),
  GoRoute(
    path: RoutePaths.cameraPage,
    pageBuilder: (context, state) {
      return getPage(
        child: const CameraPage(),
        state: state,
      );
    },
  ),
  GoRoute(
    path: RoutePaths.welcome,
    pageBuilder: (context, state) {
      return getPage(
        child: WelcomePage(),
        state: state,
      );
    },
  ),
  GoRoute(
    path: RoutePaths.classEvents,
    pageBuilder: (context, state) {
      return getPage(
        child: const ClassEventPage(),
        state: state,
      );
    },
  ),

  // GoRoute(
  //   name: RouteNames.setNewPassword,
  //   path: RoutePaths.setNewPassword,
  //   pageBuilder: (context, state) => PageTransition.fade(
  //     context: context,
  //     state: state,
  //     // begin: const Offset(1.0, 0),
  //     // end: Offset.zero,
  //     child: SetNewPasswordPage(
  //       email: state.extra as String,
  //     ),
  //   ),
  // ), TODO add some transition for  searching
  GoRoute(
    name: RouteNames.login,
    path: RoutePaths.login,
    builder: (context, GoRouterState state) {
      return const LoginPage();
    },
    routes: [
      GoRoute(
        name: RouteNames.forgotPassword,
        path: RoutePaths.forgotPassword,
        pageBuilder: (context, state) => PageTransition.slideAndFade(
          context: context,
          state: state,
          begin: const Offset(1.0, 0),
          end: Offset.zero,
          child: const ForgotPasswordPage(),
        ),
      ),
    ],
  ),
  GoRoute(
    path: RoutePaths.changeInformation,
    pageBuilder: (context, state) {
      return getPage(child: const ChangeInformationPage(), state: state);
    },
  ),
  GoRoute(
    path: RoutePaths.achievement,
    pageBuilder: (context, state) {
      return getPage(child: const AchievementPage(), state: state);
    },
  ),

  GoRoute(
    path: RoutePaths.notification,
    pageBuilder: (context, state) {
      return getPage(child: const NotificationPage(), state: state);
    },
  ),
  GoRoute(
    path: RoutePaths.support,
    pageBuilder: (context, state) {
      return getPage(child: const SupportPage(), state: state);
    },
  ),
  GoRoute(
    path: RoutePaths.chooseAPhoto,
    pageBuilder: (context, state) {
      return getPage(child: const ChooseAPhotoPage(), state: state);
    },
  ),
];
