import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oyan/src/app/imports.dart';
import 'package:oyan/src/core/extensions/build_context_extension.dart';
import 'package:oyan/src/core/router/router.dart';
import 'package:oyan/src/core/services/injectable/injectable_service.dart';
import 'package:oyan/src/features/story/domain/request/get_daily_hits_request.dart';
import 'package:oyan/src/features/story/presentation/bloc/story_bloc.dart';

class NewHitsStoryPage extends StatefulWidget {
  final String title;
  final String date;
  final String backgroundImageUrl;
  final String trophyImageUrl;
  final int storyDuration;

  const NewHitsStoryPage({
    super.key,
    this.title = 'The story of a lonely boy',
    this.date = 'TODAY\'s Hit',
    this.backgroundImageUrl = 'assets/app_images/main4.png',
    this.trophyImageUrl = 'assets/app_images/main2.png',
    this.storyDuration = 5,
  });

  @override
  State<NewHitsStoryPage> createState() => _NewHitsStoryPageState();
}

class _NewHitsStoryPageState extends State<NewHitsStoryPage> {
  late Timer _timer;
  final double _progress = 0.0;
  int _currentStoryIndex = 0;
  final List<double> _storyProgress = List.generate(9, (index) => 0.0);
  bool _isPaused = false;
  DateTime? _pauseStartTime;
  double _pauseProgress = 0.0;

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
      if (!_isPaused) {
        setState(() {
          _storyProgress[_currentStoryIndex] += progressIncrement;
          if (_storyProgress[_currentStoryIndex] >= 1.0) {
            if (_currentStoryIndex < 8) {
              _currentStoryIndex++;
              _storyProgress[_currentStoryIndex] = 0.0;
            } else {
              _timer.cancel();
              context.pop();
            }
          }
        });
      }
    });
  }

  void _pauseTimer() {
    if (!_isPaused) {
      setState(() {
        _isPaused = true;
        _pauseStartTime = DateTime.now();
        _pauseProgress = _storyProgress[_currentStoryIndex];
      });
    }
  }

  void _resumeTimer() {
    if (_isPaused) {
      setState(() {
        _isPaused = false;
        _pauseStartTime = null;
      });
    }
  }

  void _nextStory() {
    if (_currentStoryIndex < 8) {
      setState(() {
        _storyProgress[_currentStoryIndex] = 1.0;
        _currentStoryIndex++;
        _storyProgress[_currentStoryIndex] = 0.0;
      });
      _timer.cancel();
      _startTimer();
    } else {
      setState(() {
        _storyProgress[_currentStoryIndex] = 1.0;
      });
      context.pop();
    }
  }

  void _previousStory() {
    if (_currentStoryIndex > 0) {
      setState(() {
        _storyProgress[_currentStoryIndex] = 1.0;
        _currentStoryIndex--;
        _storyProgress[_currentStoryIndex] = 0.0;
      });
      _timer.cancel();
      _startTimer();
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StoryBloc, StoryState>(
      builder: (context, state) {
        return state.when(
          loading: () => _buildLoadingState(),
          loaded: (viewModel) => _buildLoadedState(viewModel),
          error: (error) => _buildErrorState(error),
        );
      },
    );
  }

  Widget _buildLoadingState() {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }

  Widget _buildErrorState(String error) {
    return Scaffold(
      body: Center(
        child: Text('Error: $error'),
      ),
    );
  }

  Widget _buildLoadedState(StoryViewModel viewModel) {
    final dailyHits = viewModel.dailyHits?.results ?? [];
    if (dailyHits.isEmpty) return _buildErrorState('No stories available');

    final currentStory = dailyHits[_currentStoryIndex];

    return Scaffold(
      body: GestureDetector(
        onLongPressStart: (_) => _pauseTimer(),
        onLongPressEnd: (_) => _resumeTimer(),
        onTapDown: (details) {
          final screenWidth = MediaQuery.of(context).size.width;
          if (details.localPosition.dx < screenWidth / 3) {
            _previousStory();
          } else if (details.localPosition.dx > screenWidth * 2 / 3) {
            _nextStory();
          }
        },
        child: Stack(
          children: [
            Positioned.fill(
              child: Image.network(
                currentStory.coverImageUrl ?? widget.backgroundImageUrl,
                fit: BoxFit.fitHeight,
                errorBuilder: (context, error, stackTrace) {
                  return Image.asset(
                    widget.backgroundImageUrl,
                    fit: BoxFit.cover,
                  );
                },
              ),
            ),
            Positioned.fill(
              child: Container(
                color: Colors.black.withOpacity(0.8),
              ),
            ),
            SafeArea(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
                    child: Row(
                      children: List.generate(9, (index) {
                        return Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 2.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(2),
                              child: LinearProgressIndicator(
                                value: _storyProgress[index],
                                backgroundColor: Colors.white.withOpacity(0.3),
                                color: _isPaused ? Colors.orange : Colors.white,
                                minHeight: 2,
                              ),
                            ),
                          ),
                        );
                      }),
                    ),
                  ),
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
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Transform.rotate(
                      angle: 0.15,
                      child: Image.network(
                        currentStory.coverImageUrl ?? widget.trophyImageUrl,
                        height: 300,
                        fit: BoxFit.contain,
                        errorBuilder: (context, error, stackTrace) {
                          return Image.asset(
                            widget.trophyImageUrl,
                            height: 300,
                            fit: BoxFit.contain,
                          );
                        },
                      ),
                    ),
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          context.loc.todaysHit,
                          style: GoogleFonts.montserrat(
                            fontSize: 50,
                            fontWeight: FontWeight.w800,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          currentStory.title ?? widget.title,
                          textAlign: TextAlign.center,
                          style: GoogleFonts.openSans(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 16),
                      ],
                    ),
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
                    child: ElevatedButton(
                      onPressed: () {
                        context.pop();
                        context.push(RoutePaths.booksDetails, extra: {
                          'id': currentStory.id,
                        });
                      },
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
                        context.loc.moreDetailed,
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

class NewHitsStoryPageWrapper extends StatelessWidget {
  const NewHitsStoryPageWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<StoryBloc>()..add(const StoryEvent.getDailyHits(GetDailyHitsRequest())),
      child: const NewHitsStoryPage(),
    );
  }
}
