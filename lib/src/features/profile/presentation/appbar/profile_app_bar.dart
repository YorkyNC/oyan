import 'dart:io';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:get_it/get_it.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oyan/src/app/imports.dart';
import 'package:oyan/src/core/extensions/build_context_extension.dart';
import 'package:oyan/src/core/router/router.dart';
import 'package:oyan/src/core/services/auth/i_auth_service.dart';
import 'package:oyan/src/core/services/storage/storage_service_impl.dart';
import 'package:oyan/src/features/profile/domain/requests/get_profile_request.dart';
import 'package:oyan/src/features/profile/enum/menu.dart';
import 'package:oyan/src/features/profile/presentation/bloc/profile_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:provider/provider.dart';

class ProfileAppBar extends StatefulWidget implements PreferredSizeWidget {
  ProfileAppBar({
    super.key,
    required this.savedAvatarPath,
    required this.username,
    required this.name,
  });

  final String? savedAvatarPath;
  final String? username;
  final String? name;

  @override
  State<ProfileAppBar> createState() => ProfileAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(70);
}

class ProfileAppBarState extends State<ProfileAppBar> {
  bool _isLoggingOut = false;
  final _authService = GetIt.I<IAuthService>(instanceName: 'AuthServiceImpl');
  final st = StorageServiceImpl();
  String? _currentAvatarPath;

  @override
  void initState() {
    super.initState();
    _currentAvatarPath = widget.savedAvatarPath;
    loadSavedAvatar();
  }

  Future<void> loadSavedAvatar() async {
    try {
      final directory = await getApplicationDocumentsDirectory();
      final savedAvatar = File('${directory.path}/selected_avatar.png');

      if (await savedAvatar.exists()) {
        setState(() {
          _currentAvatarPath = savedAvatar.path;
        });
      }
    } catch (e) {
      debugPrint('Error loading saved avatar: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
        child: SafeArea(
          child: Row(
            children: [
              Expanded(
                child: Row(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFFF0F2FA),
                      ),
                      child: _currentAvatarPath != null
                          ? ClipOval(
                              child: Image.file(
                                File(_currentAvatarPath!),
                                fit: BoxFit.cover,
                              ),
                            )
                          : const Icon(Icons.person, color: Colors.grey),
                    ),
                    const SizedBox(width: 15),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.name ?? '',
                          style: GoogleFonts.openSans(
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                            color: const Color(0xff323232),
                          ),
                        ),
                        Text(
                          '@${widget.username}',
                          style: GoogleFonts.openSans(
                            fontWeight: FontWeight.w600,
                            fontSize: 15,
                            color: const Color(0xffA2ADD0),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              PopupMenuButton<Menu>(
                offset: const Offset(0, 60),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                color: const Color(0xFFEBF0FF),
                // color: Colors.amber,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: const Color(0xFFEBF0FF),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: const Icon(
                    Icons.settings_outlined,
                    color: Colors.black87,
                    size: 24,
                  ),
                ),
                itemBuilder: (BuildContext context) => <PopupMenuEntry<Menu>>[
                  PopupMenuItem<Menu>(
                    value: Menu.changeInformation,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            context.assetImages.pen,
                          ),
                          const SizedBox(width: 15),
                          Text(
                            context.loc.changeInformation,
                            style: GoogleFonts.openSans(
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                              color: const Color(0xff323232),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  PopupMenuItem<Menu>(
                    value: Menu.chooseAPhoto,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            context.assetImages.galery,
                          ),
                          const SizedBox(width: 15),
                          Text(
                            context.loc.chooseAPhoto,
                            style: GoogleFonts.openSans(
                              fontWeight: FontWeight.w500,
                              color: const Color(0xff323232),
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  PopupMenuItem<Menu>(
                    value: Menu.logout,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            context.assetImages.logout,
                          ),
                          const SizedBox(width: 15),
                          Text(
                            context.loc.logOut,
                            style: GoogleFonts.openSans(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: const Color(0xff323232),
                            ),
                          ),
                          if (_isLoggingOut) ...[
                            const SizedBox(width: 8),
                            const SizedBox(
                              width: 16,
                              height: 16,
                              child: CircularProgressIndicator(
                                strokeWidth: 2,
                                valueColor: AlwaysStoppedAnimation<Color>(Color(0xff323232)),
                              ),
                            ),
                          ],
                        ],
                      ),
                    ),
                  ),
                ],
                onSelected: (Menu item) async {
                  switch (item) {
                    case Menu.changeInformation:
                      final updated = await context.push<bool>(RoutePaths.changeInformation);
                      if (updated == true && context.mounted) {
                        final profileBloc = context.read<ProfileBloc>();
                        profileBloc.add(
                          ProfileEvent.getProfile(
                            GetProfileRequest(username: st.getUsername() ?? ''),
                          ),
                        );
                      }
                    case Menu.chooseAPhoto:
                      final newAvatarPath = await context.push<String?>(RoutePaths.chooseAPhoto);
                      if (newAvatarPath != null) {
                        setState(() {
                          _currentAvatarPath = newAvatarPath;
                        });
                      }
                    case Menu.logout:
                      setState(() {
                        _isLoggingOut = true;
                      });
                      try {
                        await _authService.logout();
                        st.clearPreferredGenres();
                        if (context.mounted) {
                          context.pushReplacement(RoutePaths.welcome);
                        }
                        st.deleteUsername();
                      } finally {
                        if (mounted) {
                          setState(() {
                            _isLoggingOut = false;
                          });
                        }
                      }
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
