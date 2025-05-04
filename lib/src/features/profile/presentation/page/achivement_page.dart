import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oyan/src/app/imports.dart';
import 'package:oyan/src/core/extensions/build_context_extension.dart';

class AchievementPage extends StatelessWidget {
  const AchievementPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(context.loc.achievements),
        iconTheme: const IconThemeData(color: Colors.black),
        centerTitle: false,
        titleTextStyle: GoogleFonts.openSans(
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: Colors.black,
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Text(
            context.loc.comingSoon,
            textAlign: TextAlign.center,
            style: GoogleFonts.openSans(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: const Color(0xff323232).withValues(alpha: 0.5),
            ),
          ),
        ),
      ),
    );
  }
}
