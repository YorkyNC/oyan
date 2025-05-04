import 'package:google_fonts/google_fonts.dart';
import 'package:oyan/src/app/imports.dart';
import 'package:oyan/src/core/base/base_bloc/bloc/base_bloc_widget.dart';
import 'package:oyan/src/core/extensions/build_context_extension.dart';
import 'package:oyan/src/core/router/router.dart';
import 'package:oyan/src/core/services/injectable/injectable_service.dart';
import 'package:oyan/src/core/widgets/shimmer/shimmer_container.dart';
import 'package:oyan/src/features/profile/domain/requests/get_profile_request.dart';
import 'package:oyan/src/features/profile/presentation/appbar/profile_app_bar.dart';
import 'package:oyan/src/features/profile/presentation/bloc/profile_bloc.dart';
import 'package:oyan/src/features/profile/presentation/custrom_filled_button.dart';
import 'package:oyan/src/features/profile/presentation/language_selector.dart';
import 'package:shimmer/shimmer.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final GlobalKey<RefreshIndicatorState> _refreshIndicatorKey = GlobalKey<RefreshIndicatorState>();
  final GlobalKey<ProfileAppBarState> _appBarKey = GlobalKey<ProfileAppBarState>();

  Future<void> _handleRefresh() async {
    await Future.delayed(const Duration(milliseconds: 1500));
    if (!mounted) return;

    await _appBarKey.currentState?.loadSavedAvatar();
  }

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    return BaseBlocWidget<ProfileBloc, ProfileEvent, ProfileState>(
      bloc: getIt<ProfileBloc>(),
      starterEvent: ProfileEvent.getProfile(GetProfileRequest(username: st.getUsername() ?? '')),
      builder: (context, state, bloc) {
        return state.maybeWhen(
          orElse: () => Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              backgroundColor: Colors.white,
              leading: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Shimmer(
                  gradient: colors.gradientGray80060090deg,
                  direction: ShimmerDirection.ltr,
                  child: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: colors.gray600.withOpacity(0.2),
                      // borderRadius: BorderRadius.circular(5),
                    ),
                    child: const SizedBox(),
                  ),
                ),
              ),
              title: const ShimmerContainer(
                width: 50,
                height: 30,
              ),
              centerTitle: false,
              actions: const [
                Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: ShimmerContainer(
                    width: 50,
                    height: 30,
                  ),
                ),
              ],
            ),
            body: const SingleChildScrollView(
              physics: NeverScrollableScrollPhysics(),
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ShimmerContainer(
                        width: 50,
                        height: 16,
                      ),
                      SizedBox(height: 8),
                      ShimmerContainer(
                        width: double.infinity,
                        height: 68,
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  ShimmerContainer(
                    width: double.infinity,
                    height: 50,
                  ),
                  SizedBox(height: 30),
                  ShimmerContainer(
                    width: double.infinity,
                    height: 260,
                  ),
                  SizedBox(height: 30),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ShimmerContainer(
                        width: 50,
                        height: 50,
                      ),
                      SizedBox(width: 10),
                      ShimmerContainer(
                        width: 50,
                        height: 50,
                      ),
                      SizedBox(width: 10),
                      ShimmerContainer(
                        width: 50,
                        height: 50,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          error: (error) => Center(
            child: Text(
              error,
              style: GoogleFonts.openSans(fontSize: 17, fontWeight: FontWeight.w600, color: const Color(0xff323232)),
            ),
          ),
          loaded: (viewModel) {
            return Scaffold(
              backgroundColor: Colors.white,
              appBar: ProfileAppBar(
                key: _appBarKey,
                savedAvatarPath: null,
                username: viewModel.profile?.username ?? '',
                name: viewModel.profile?.name ?? '',
                balance: viewModel.profile?.avatar ?? 0,
              ),
              body: RefreshIndicator(
                key: _refreshIndicatorKey,
                onRefresh: _handleRefresh,
                color: Colors.indigo.shade400,
                child: SingleChildScrollView(
                  physics: const AlwaysScrollableScrollPhysics(),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              context.loc.aboutMe,
                              style: GoogleFonts.openSans(
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                                color: const Color(0xffA2ADD0),
                              ),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              viewModel.profile?.bio ?? '',
                              style: GoogleFonts.openSans(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: const Color(0xff323232),
                              ),
                            ),
                            const SizedBox(height: 30),
                            CustromFilledButton(
                              text: context.loc.subscribe,
                              onPressed: () {},
                            ),
                            const SizedBox(height: 30),
                            Column(
                              children: [
                                _buildMenuItem(
                                  isFirst: true,
                                  icon: Icons.emoji_events_outlined,
                                  title: context.loc.achievement,
                                  onTap: () {
                                    context.push(RoutePaths.achievement);
                                  },
                                ),
                                _buildDivider(),
                                _buildMenuItem(
                                  icon: Icons.notifications_outlined,
                                  title: context.loc.notifications,
                                  onTap: () {
                                    context.push(RoutePaths.notification);
                                  },
                                ),
                                _buildDivider(),
                                _buildMenuItem(
                                  icon: Icons.support_outlined,
                                  title: context.loc.techSupport,
                                  onTap: () {
                                    context.push(RoutePaths.support);
                                  },
                                ),
                                _buildDivider(),
                                _buildMenuItem(
                                  icon: Icons.shield_outlined,
                                  title: context.loc.privacyPolicy,
                                  onTap: () {
                                    // context.push(RoutePaths.privacyPolicy);
                                  },
                                  isLast: true,
                                ),
                              ],
                            ),
                            const SizedBox(height: 30),
                            const LanguageSelector(),
                            const SizedBox(height: 30),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }
}

Widget _buildMenuItem({
  required IconData icon,
  required String title,
  required VoidCallback onTap,
  bool isLast = false,
  bool isFirst = false,
}) {
  return Ink(
    decoration: BoxDecoration(
      color: const Color(0xffEBF0FF),
      borderRadius: isFirst
          ? const BorderRadius.only(
              topLeft: Radius.circular(5),
              topRight: Radius.circular(5),
            )
          : isLast
              ? const BorderRadius.only(
                  bottomLeft: Radius.circular(5),
                  bottomRight: Radius.circular(5),
                )
              : null,
    ),
    child: InkWell(
      onTap: onTap,
      borderRadius: isFirst
          ? const BorderRadius.only(
              topLeft: Radius.circular(5),
              topRight: Radius.circular(5),
            )
          : isLast
              ? const BorderRadius.only(
                  bottomLeft: Radius.circular(5),
                  bottomRight: Radius.circular(5),
                )
              : null,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          children: [
            // Title
            Expanded(
              child: Text(
                title,
                style: GoogleFonts.openSans(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xff323232),
                ),
              ),
            ),
            // Chevron icon
            const Icon(
              Icons.chevron_right,
              color: Color(0xff323232),
              size: 24,
            ),
          ],
        ),
      ),
    ),
  );
}

Widget _buildDivider() {
  return const Divider();
}
