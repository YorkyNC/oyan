// File: lib/src/presentation/pages/home/home_page.dart

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oyan/src/features/home/presentation/components/image_widget.dart';
import 'package:oyan/src/features/home/presentation/model/example_model.dart';

class AudiobookGridWidget extends StatelessWidget {
  final List<AudiobookModel> audiobooks;
  final double height;

  const AudiobookGridWidget({
    super.key,
    required this.audiobooks,
    this.height = 180,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: audiobooks.length,
        itemBuilder: (context, index) {
          final audiobook = audiobooks[index];
          return Container(
            margin: const EdgeInsets.only(right: 12),
            width: 114,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: ImageWidget(
                          imageUrl: audiobook.coverUrl,
                          width: 114,
                        ),
                      ),
                      Positioned(
                        right: 5,
                        bottom: 5,
                        child: Container(
                          padding: const EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.7),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            children: [
                              const Icon(
                                Icons.headphones,
                                color: Colors.white,
                                size: 12,
                              ),
                              const SizedBox(width: 2),
                              Text(
                                audiobook.duration,
                                style: GoogleFonts.openSans(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
