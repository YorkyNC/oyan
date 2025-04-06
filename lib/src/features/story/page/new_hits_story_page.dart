import 'dart:async';

import 'package:google_fonts/google_fonts.dart';
import 'package:oyan/src/app/imports.dart';

class NewHitsStoryPage extends StatefulWidget {
  final String title;
  final String date;

  final String backgroundImageUrl;
  final String trophyImageUrl;
  final int storyDuration;

  const NewHitsStoryPage({
    super.key,
    this.title = 'The story of a lonely boy', //The story of a lonely boy
    this.date = 'TODAY’s Hit',
    this.backgroundImageUrl = 'assets/app_images/main4.png',
    this.trophyImageUrl = 'assets/app_images/main2.png',
    this.storyDuration = 30,
  });

  @override
  State<NewHitsStoryPage> createState() => _NewHitsStoryPageState();
}

class _NewHitsStoryPageState extends State<NewHitsStoryPage> {
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
        if (_progress >= 1.0) {
          _timer.cancel();
          context.pop();
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
        onLongPress: _pauseTimer,
        onLongPressUp: _resumeTimer,
        child: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(
                widget.backgroundImageUrl,
                fit: BoxFit.cover,
              ),
            ),

            // Content
            SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Progress bar
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(2),
                            child: LinearProgressIndicator(
                              value: _progress,
                              backgroundColor: Colors.white.withOpacity(0.3),
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
                        color: Colors.white.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: IconButton(
                        icon: const Icon(Icons.close, color: Colors.white),
                        onPressed: () => Navigator.of(context).pop(),
                        padding: EdgeInsets.zero,
                        constraints: const BoxConstraints.tightFor(width: 40, height: 40),
                      ),
                    ),
                  ),

                  const SizedBox(height: 40),

                  // Trophy image
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Transform.rotate(
                      angle: 0.15,
                      child: Image.asset(
                        widget.trophyImageUrl,
                        height: 300,
                        fit: BoxFit.contain,
                        errorBuilder: (context, error, stackTrace) {
                          // Fallback trophy if image fails to load
                          return Container(
                            height: 200,
                            width: 180,
                            decoration: BoxDecoration(
                              color: Colors.amber,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: const Center(
                              child: Text(
                                "#1",
                                style: TextStyle(
                                  fontSize: 48,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),

                  const Spacer(),

                  // Date
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.date,
                          style: GoogleFonts.montserrat(
                            fontSize: 50,
                            fontWeight: FontWeight.w800,
                            color: Colors.black,
                          ),
                        ),

                        const SizedBox(height: 10),

                        // Title
                        Text(
                          widget.title,
                          textAlign: TextAlign.center,
                          style: GoogleFonts.openSans(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),

                        const SizedBox(height: 16),
                      ],
                    ),
                  ),

                  const Spacer(),

                  // More detailed button
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                        minimumSize: const Size(double.infinity, 46),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        elevation: 0,
                      ),
                      child: Text(
                        'More detailed',
                        style: GoogleFonts.openSans(
                          fontSize: 16,
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
    );
  }
}
