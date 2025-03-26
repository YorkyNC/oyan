import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oyan/src/core/extensions/build_context_extension.dart';
import 'package:oyan/src/features/profile/presentation/profile_app_bar.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const ProfileAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Column(
              spacing: 8,
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
                Text(
                  'I love discovering new worlds through books. I read everything from classics to modern bestsellers. I am always happy to discuss interesting stories and share my impressions!',
                  style: GoogleFonts.openSans(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xff323232),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
