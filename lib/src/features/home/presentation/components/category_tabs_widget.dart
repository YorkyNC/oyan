// File: lib/src/presentation/pages/home/home_page.dart

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryTabsWidget extends StatelessWidget {
  final int selectedTabIndex;

  const CategoryTabsWidget({
    super.key,
    required this.selectedTabIndex,
  });

  @override
  Widget build(BuildContext context) {
    // if (selectedTabIndex == 1) {
    //   // Audio book categories with custom UI
    //   return SizedBox(
    //     height: 120,
    //     child: Row(
    //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //       children: [
    //         Expanded(
    //           child: _buildAudioCategory(
    //             icon: Icons.history,
    //             label: 'History',
    //             color: Colors.blue[100]!,
    //           ),
    //         ),
    //         const SizedBox(width: 8),
    //         Expanded(
    //           child: _buildAudioCategory(
    //             icon: Icons.auto_stories,
    //             label: 'Fiction',
    //             color: Colors.green[100]!,
    //           ),
    //         ),
    //         const SizedBox(width: 8),
    //         Expanded(
    //           child: _buildAudioCategory(
    //             icon: Icons.psychology,
    //             label: 'Self-Dev',
    //             color: Colors.orange[100]!,
    //           ),
    //         ),
    //       ],
    //     ),
    //   );
    // }

    // Default Book tab content
    return SizedBox(
      height: 120,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
              child: Image.asset(
            'assets/app_images/Frame 125.png',
          )),
          const SizedBox(width: 8),
          Expanded(
              child: Image.asset(
            'assets/app_images/Frame 273.png',
          )),
          const SizedBox(width: 8),
          Expanded(
              child: Image.asset(
            'assets/app_images/Frame 127.png',
          )),
        ],
      ),
    );
  }

  Widget _buildAudioCategory({
    required IconData icon,
    required String label,
    required Color color,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 40,
            color: Colors.black87,
          ),
          const SizedBox(height: 8),
          Text(
            label,
            style: GoogleFonts.openSans(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: Colors.black87,
            ),
          ),
        ],
      ),
    );
  }
}
