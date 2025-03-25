import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:oyan/src/core/extensions/build_context_extension.dart';

class AppNavigationWrapper extends StatelessWidget {
  const AppNavigationWrapper({super.key, required this.child, required this.currentIndex, required this.onTap});

  final Widget child;
  final int currentIndex;
  final void Function(int) onTap;

  @override
  Widget build(BuildContext context) {
    //TODO add 8px size to typography
    const textStyle = TextStyle(
      fontFamily: 'Manrope',
      fontSize: 8,
      decoration: TextDecoration.none,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w400,
      height: 10.93 / 8,
      letterSpacing: 0,
    );
    return Scaffold(
      backgroundColor: context.colors.white,
      body: child,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: context.colors.white,
        unselectedItemColor: context.colors.gray500,
        unselectedLabelStyle: textStyle.copyWith(color: context.colors.gray500, fontWeight: FontWeight.w400),
        selectedItemColor: context.colors.brand400,
        selectedLabelStyle: textStyle.copyWith(color: context.colors.brand400, fontWeight: FontWeight.w700),
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              context.assetImages.home,
              colorFilter: ColorFilter.mode(context.colors.brand400, BlendMode.srcIn),
            ),
            label: context.loc.review,
          ),
          BottomNavigationBarItem(icon: SvgPicture.asset(context.assetImages.news), label: context.loc.news),
          BottomNavigationBarItem(icon: SvgPicture.asset(context.assetImages.chats), label: context.loc.chats),
          // BottomNavigationBarItem(
          //   icon: SizedBox(
          //     width: 30,
          //     height: 30,
          //     child: ClipRRect(
          //       borderRadius: BorderRadius.circular(8),
          //       child: Image.asset(context.assetIcons.prod.path),
          //     ),
          //   ),
          //   label: context.loc.you,
          // ),
        ],
      ),
    );
  }
}
