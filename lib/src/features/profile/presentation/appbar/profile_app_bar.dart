import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oyan/src/app/imports.dart';
import 'package:oyan/src/core/extensions/build_context_extension.dart';
import 'package:oyan/src/core/router/router.dart';
import 'package:oyan/src/features/profile/domain/menu.dart';

class ProfileAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ProfileAppBar({super.key});
  @override
  Size get preferredSize => const Size.fromHeight(70);
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
                        color: Colors.amberAccent,
                      ),
                    ),
                    const SizedBox(width: 15),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Nursultan',
                          style: GoogleFonts.openSans(
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                            color: const Color(0xff323232),
                          ),
                        ),
                        Text(
                          '@nurikkz',
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
                        ],
                      ),
                    ),
                  ),
                ],
                onSelected: (Menu item) {
                  switch (item) {
                    case Menu.changeInformation:
                      context.push(RoutePaths.changeInformation);
                    case Menu.chooseAPhoto:
                      // TODO: Handle this case.
                      throw UnimplementedError();
                    case Menu.logout:
                      // TODO: Handle this case.
                      throw UnimplementedError();
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
