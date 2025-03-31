// File: lib/src/presentation/pages/home/home_page.dart

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oyan/src/core/extensions/build_context_extension.dart';

class TabBarWidget extends StatelessWidget {
  final int selectedTabIndex;
  final Function(int) onTabSelected;

  const TabBarWidget({
    super.key,
    required this.selectedTabIndex,
    required this.onTabSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () => onTabSelected(0),
              child: Container(
                decoration: BoxDecoration(
                  color: selectedTabIndex == 0 ? context.colors.main : context.colors.gray200,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Center(
                  child: Text(
                    'Book',
                    style: GoogleFonts.openSans(
                      color: selectedTabIndex == 0 ? Colors.white : Colors.black54,
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: GestureDetector(
              onTap: () => onTabSelected(1),
              child: Container(
                decoration: BoxDecoration(
                  color: selectedTabIndex == 1 ? context.colors.main : context.colors.gray200,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Center(
                  child: Text(
                    'Audio',
                    style: GoogleFonts.openSans(
                      color: selectedTabIndex == 1 ? Colors.white : Colors.black54,
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
