import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oyan/src/app/imports.dart';
import 'package:oyan/src/core/extensions/build_context_extension.dart';
import 'package:oyan/src/core/router/router.dart';
import 'package:oyan/src/core/services/injectable/injectable_service.dart';
import 'package:oyan/src/features/story/domain/request/get_daily_excerpts_request.dart';
import 'package:oyan/src/features/story/presentation/bloc/story_bloc.dart';

class DailyStoryPage extends StatefulWidget {
  final String title;
  final String content;
  final String imageUrl;
  final int bookId;
  const DailyStoryPage({
    super.key,
    required this.title,
    required this.content,
    required this.imageUrl,
    required this.bookId,
  });

  @override
  State<DailyStoryPage> createState() => _DailyStoryPageState();
}

class _DailyStoryPageState extends State<DailyStoryPage> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  Timer? _timer;
  double _progress = 0.0;
  final Duration _storyDuration = const Duration(seconds: 5);
  bool _isPaused = false;
  DateTime? _pauseStartTime;
  double _pauseProgress = 0.0;
  Duration _remainingTime = const Duration(seconds: 5);

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: _storyDuration,
    )..addListener(() {
        if (!_isPaused) {
          setState(() {
            _progress = _controller.value;
          });
        }
      });
    _startTimer();
  }

  void _startTimer() {
    _controller.forward();
    _timer?.cancel();
    _timer = Timer(_remainingTime, () {
      if (mounted) {
        Navigator.of(context).pop();
      }
    });
  }

  void _pauseTimer() {
    if (!_isPaused) {
      setState(() {
        _isPaused = true;
        _pauseStartTime = DateTime.now();
        _pauseProgress = _progress;
      });
      _controller.stop();
      _timer?.cancel();

      // Calculate remaining time based on progress
      final elapsedTime = (_storyDuration.inMilliseconds * _progress).round();
      final remainingMilliseconds = _storyDuration.inMilliseconds - elapsedTime;
      _remainingTime = Duration(milliseconds: remainingMilliseconds);
    }
  }

  void _resumeTimer() {
    if (_isPaused) {
      setState(() {
        _isPaused = false;
        _pauseStartTime = null;
      });
      _controller.forward();
      _startTimer();
    }
  }

  void _resetTimer() {
    _timer?.cancel();
    _controller.reset();
    _remainingTime = _storyDuration;
    _startTimer();
  }

  @override
  void dispose() {
    _controller.dispose();
    _timer?.cancel();
    super.dispose();
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
    final dailyExcerpt = viewModel.dailyExcerpts?.dailyExcerpts?.firstOrNull;
    final imageUrl = dailyExcerpt?.generatedImageUrl ?? widget.imageUrl;

    return GestureDetector(
      onLongPressStart: (_) => _pauseTimer(),
      onLongPressEnd: (_) => _resumeTimer(),
      onTapDown: (_) => _controller.stop(),
      onTapUp: (_) => _controller.forward(),
      onTapCancel: () => _controller.forward(),
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            color: Colors.black,
          ),
          child: Stack(
            children: [
              Positioned.fill(
                child: Image.network(
                  imageUrl,
                  fit: BoxFit.fill,
                  errorBuilder: (context, error, stackTrace) {
                    return Container(
                      color: Colors.black.withOpacity(0.8),
                      child: Center(
                        child: Text(
                          'Failed to load image',
                          style: GoogleFonts.openSans(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    );
                  },
                  loadingBuilder: (context, child, loadingProgress) {
                    if (loadingProgress == null) return child;
                    return const Center(
                      child: CircularProgressIndicator(
                        color: Colors.black,
                      ),
                    );
                  },
                ),
              ),
              Positioned.fill(
                child: Container(
                  color: Colors.black.withOpacity(0.6),
                ),
              ),
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: SafeArea(
                  bottom: false,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: LinearProgressIndicator(
                      value: _progress,
                      backgroundColor: Colors.white.withOpacity(0.3),
                      valueColor: AlwaysStoppedAnimation<Color>(_isPaused ? Colors.orange : Colors.white),
                      minHeight: 2,
                    ),
                  ),
                ),
              ),
              SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        margin: const EdgeInsets.only(top: 14, right: 16),
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: IconButton(
                          icon: const Icon(Icons.close, color: Colors.white),
                          onPressed: () => context.pop(),
                          padding: EdgeInsets.zero,
                          constraints: const BoxConstraints.tightFor(width: 40, height: 40),
                        ),
                      ),
                    ),
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
                    dailyExcerpt?.book == null
                        ? const SizedBox.shrink()
                        : Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: ElevatedButton(
                              onPressed: () {
                                context.pop();
                                context.push(RoutePaths.booksDetails, extra: {
                                  'id': widget.bookId,
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                foregroundColor: Colors.black,
                                minimumSize: const Size(double.infinity, 46),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              child: Text(
                                context.loc.moreDetailed,
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

class DailyStoryPageWrapper extends StatelessWidget {
  const DailyStoryPageWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<StoryBloc>()..add(const StoryEvent.getDailyExcerpts(GetDailyExcerptsRequest())),
      child: BlocBuilder<StoryBloc, StoryState>(
        builder: (context, state) {
          return state.maybeWhen(
            loading: () => const Scaffold(
              backgroundColor: Colors.black,
              body: Center(
                child: CircularProgressIndicator(),
              ),
            ),
            loaded: (viewModel) {
              final dailyExcerpt = viewModel.dailyExcerpts?.dailyExcerpts?.firstOrNull;
              return DailyStoryPage(
                title: 'Daily Story',
                content: dailyExcerpt?.text ?? '',
                imageUrl: dailyExcerpt?.generatedImageUrl ?? '',
                bookId: dailyExcerpt?.book ?? 0,
              );
            },
            error: (message) => Center(child: Text(message)),
            orElse: () => const Center(child: Text('Something went wrong')),
          );
        },
      ),
    );
  }
}
