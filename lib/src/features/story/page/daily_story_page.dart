import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class DailyStoryPage extends StatefulWidget {
  final String title;
  final String content;
  final String imageUrl;
  final int storyDuration; // Duration in seconds

  const DailyStoryPage({
    super.key,
    this.title = 'Love brings you home',
    this.content =
        'He completely forgot about caution, stopped reasoning, and for a minute did not even remember how it happened to him — to pick up an axe. But he had already hit him, feeling that he had enough strength. The woman gasped a little, but...',
    this.imageUrl = 'assets/app_images/main1.png',
    this.storyDuration = 30, // 30 seconds by default
  });

  @override
  State<DailyStoryPage> createState() => _DailyStoryPageState();
}

class _DailyStoryPageState extends State<DailyStoryPage> {
  late Timer _timer;
  double _progress = 0.0;

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  void _startTimer() {
    const updateInterval = 100;
    final totalUpdates = (widget.storyDuration * 1000) ~/ updateInterval;
    final progressIncrement = 1.0 / totalUpdates;

    _timer = Timer.periodic(const Duration(milliseconds: updateInterval), (timer) {
      setState(() {
        _progress += progressIncrement;

        // When story completes, pop the page or reset if needed
        if (_progress >= 1.0) {
          _timer.cancel();
          context.pop();
          // Uncomment to automatically close the story when timer completes
          // Navigator.of(context).pop();
        }
      });
    });
  }

  void _pauseTimer() {
    _timer.cancel();
  }

  void _resumeTimer() {
    _startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        // Tap and hold to pause the story
        onLongPress: _pauseTimer,
        onLongPressUp: _resumeTimer,
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.black,
          ),
          child: Stack(
            children: [
              // Background image
              Positioned.fill(
                child: Image.asset(
                  widget.imageUrl,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    // Fallback if image doesn't load
                    return Container(
                      color: Colors.black.withOpacity(0.8),
                    );
                  },
                ),
              ),

              // Dark overlay
              Positioned.fill(
                child: Container(
                  color: Colors.black.withOpacity(0.6),
                ),
              ),

              // Content
              SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Status bar and progress bar
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(2),
                              child: LinearProgressIndicator(
                                value: _progress,
                                backgroundColor: Colors.grey.withOpacity(0.3),
                                color: Colors.white,
                                minHeight: 4,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    // Close button
                    Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        margin: const EdgeInsets.only(top: 8, right: 16),
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: IconButton(
                          icon: const Icon(Icons.close, color: Colors.white),
                          onPressed: () => Navigator.of(context).pop(),
                          padding: EdgeInsets.zero,
                          constraints: const BoxConstraints.tightFor(width: 40, height: 40),
                        ),
                      ),
                    ),

                    // Title badge
                    Container(
                      margin: const EdgeInsets.only(left: 20, top: 24),
                      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.4),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        widget.title,
                        style: GoogleFonts.openSans(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),

                    // Main content text
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        widget.content,
                        style: GoogleFonts.openSans(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                      ),
                    ),

                    const Spacer(),

                    // Bottom button
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.black,
                          minimumSize: const Size(double.infinity, 46),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: Text(
                          'More detailed',
                          style: GoogleFonts.openSans(
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
