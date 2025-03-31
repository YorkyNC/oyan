// File: lib/src/presentation/pages/home/home_page.dart

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchBarWidget extends StatelessWidget {
  final String hintText;

  const SearchBarWidget({
    super.key,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      decoration: BoxDecoration(
        color: const Color(0xffEBF0FF),
        borderRadius: BorderRadius.circular(5),
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: GoogleFonts.openSans(
            fontWeight: FontWeight.w500,
            fontSize: 15,
            color: const Color(0xffA2ADD0),
          ),
          suffixIcon: const Icon(
            Icons.search,
            color: Colors.black,
          ),
          border: InputBorder.none,
          contentPadding: const EdgeInsets.symmetric(vertical: 13, horizontal: 12),
        ),
      ),
    );
  }
}
