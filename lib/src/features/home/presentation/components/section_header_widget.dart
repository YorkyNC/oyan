// File: lib/src/presentation/pages/home/home_page.dart

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oyan/src/core/extensions/build_context_extension.dart';

class SectionHeaderWidget extends StatelessWidget {
  final String title;
  final bool showSeeAll;

  const SectionHeaderWidget({
    super.key,
    required this.title,
    this.showSeeAll = false,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: GoogleFonts.openSans(
            fontSize: 17,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        if (showSeeAll)
          TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              minimumSize: Size.zero,
              padding: EdgeInsets.zero,
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            ),
            child: Text(
              'See all',
              style: GoogleFonts.openSans(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: context.colors.main,
              ),
            ),
          ),
      ],
    );
  }
}
