import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oyan/src/core/extensions/build_context_extension.dart';

class AppNavigationWrapper extends StatelessWidget {
  const AppNavigationWrapper({
    super.key,
    required this.child,
    required this.currentIndex,
    required this.onTap,
  });

  final Widget child;
  final int currentIndex;
  final void Function(int) onTap;

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = GoogleFonts.openSans(
      fontWeight: FontWeight.w500,
      fontSize: 13,
    );
    return Scaffold(
      backgroundColor: context.colors.white,
      body: child,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: context.colors.white,
        unselectedItemColor: context.colors.gray500,
        unselectedLabelStyle: textStyle.copyWith(
          color: context.colors.gray500,
        ),
        selectedItemColor: context.colors.main,
        selectedLabelStyle: textStyle.copyWith(
          color: context.colors.main,
        ),
        onTap: (value) {
          onTap(value);
        },
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              context.assetImages.house,
              colorFilter: ColorFilter.mode(
                currentIndex == 0 ? context.colors.main : context.colors.gray500,
                BlendMode.srcIn,
              ),
            ),
            label: context.loc.home,
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              context.assetImages.trophySvg,
              colorFilter: ColorFilter.mode(
                currentIndex == 1 ? context.colors.main : context.colors.gray500,
                BlendMode.srcIn,
              ),
            ),
            label: context.loc.competition,
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              context.assetImages.book3,
              colorFilter: ColorFilter.mode(
                currentIndex == 2 ? context.colors.main : context.colors.gray500,
                BlendMode.srcIn,
              ),
            ),
            label: context.loc.myBooks,
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              context.assetImages.person,
              colorFilter: ColorFilter.mode(
                currentIndex == 3 ? context.colors.main : context.colors.gray500,
                BlendMode.srcIn,
              ),
            ),
            label: context.loc.profile,
          ),
        ],
      ),
    );
  }
}
