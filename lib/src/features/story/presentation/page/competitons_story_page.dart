import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oyan/src/app/imports.dart';
import 'package:oyan/src/core/extensions/build_context_extension.dart';
import 'package:oyan/src/core/router/router.dart';
import 'package:oyan/src/core/services/injectable/injectable_service.dart';
import 'package:oyan/src/features/competition/domain/entities/get_competition_entity.dart';
import 'package:oyan/src/features/competition/domain/requests/get_competition_request.dart';
import 'package:oyan/src/features/competition/presentation/bloc/competition_bloc.dart';
import 'package:oyan/src/features/story/presentation/utils/image_utils.dart';

class CompetitionStoryPage extends StatefulWidget {
  final String title;
  final String content;
  final String imageUrl;
  final int bookId;
  final String? createdDate;
  final String? prize;
  const CompetitionStoryPage({
    super.key,
    required this.title,
    required this.content,
    required this.imageUrl,
    required this.bookId,
    this.createdDate,
    this.prize,
  });

  @override
  State<CompetitionStoryPage> createState() => _CompetitionStoryPageState();
}

class _CompetitionStoryPageState extends State<CompetitionStoryPage> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Timer _timer;
  double _progress = 0.0;
  final Duration _storyDuration = const Duration(seconds: 5);
  String? _lastImageUrl;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: _storyDuration,
    )..addListener(() {
        setState(() {
          _progress = _controller.value;
        });
      });
    _startTimer();
  }

  void _startTimer() {
    _controller.forward();
    _timer = Timer(_storyDuration, () {
      if (mounted) {
        Navigator.of(context).pop();
      }
    });
  }

  void _resetTimer() {
    _timer.cancel();
    _controller.reset();
    _startTimer();
  }

  @override
  void dispose() {
    _controller.dispose();
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CompetitionBloc, CompetitionState>(
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
      backgroundColor: Colors.black,
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

  Widget _buildLoadedState(CompetitionViewModel viewModel) {
    final tournament = viewModel.participateCompetition?.results?.firstOrNull;
    final imageUrl = tournament?.coverImageUrl ?? widget.imageUrl;

    if (imageUrl != _lastImageUrl) {
      _lastImageUrl = imageUrl;
      print('Tournament coverUrl: ${tournament?.coverImageUrl}');
      print('Widget imageUrl: ${widget.imageUrl}');
      print('Final imageUrl being used: $imageUrl');
    }

    return GestureDetector(
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
                child: loadImageWithOverlay(
                  url: imageUrl,
                  fallbackAsset: 'assets/app_images/main4.png',
                  fit: BoxFit.cover,
                  overlayColor: Colors.black,
                  overlayOpacity: 0.6,
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
                      valueColor: const AlwaysStoppedAnimation<Color>(Colors.white),
                      minHeight: 2,
                    ),
                  ),
                ),
              ),
              SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
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
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Transform.rotate(
                        angle: 0.15,
                        child: Image.asset(
                          'assets/app_images/main3.png',
                          height: 300,
                          fit: BoxFit.contain,
                          errorBuilder: (context, error, stackTrace) {
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
                    const SizedBox(height: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Text(
                            widget.createdDate ?? '',
                            style: GoogleFonts.openSans(
                              fontWeight: FontWeight.w800,
                              fontSize: 50,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Text(
                            overflow: TextOverflow.ellipsis,
                            maxLines: 5,
                            widget.title,
                            textAlign: TextAlign.center,
                            style: GoogleFonts.openSans(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Text(
                            'PRIZE: ${widget.prize}${widget.prize?.isNotEmpty == true ? ' \$' : ''}',
                            overflow: TextOverflow.ellipsis,
                            maxLines: 5,
                            textAlign: TextAlign.center,
                            style: GoogleFonts.openSans(
                              fontSize: 40,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Padding(
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

class CompetitonsStoryPageWrapper extends StatelessWidget {
  const CompetitonsStoryPageWrapper({super.key});

  String _formatDate(BuildContext context, DateTime? date) {
    if (date == null) return '';

    final months = {
      1: context.loc.january,
      2: context.loc.february,
      3: context.loc.march,
      4: context.loc.april,
      5: context.loc.may,
      6: context.loc.june,
      7: context.loc.july,
      8: context.loc.august,
      9: context.loc.september,
      10: context.loc.october,
      11: context.loc.november,
      12: context.loc.december,
    };

    return '${date.day} ${months[date.month]}';
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<CompetitionBloc>()
        ..add(const CompetitionEvent.getCompetition(GetCompetitionRequest(status: CompetitionStatus.participate))),
      child: BlocBuilder<CompetitionBloc, CompetitionState>(
        builder: (context, state) {
          return state.maybeWhen(
            loading: () => const Scaffold(
              backgroundColor: Colors.black,
              body: Center(
                child: CircularProgressIndicator(),
              ),
            ),
            loaded: (viewModel) {
              final tournament = viewModel.participateCompetition?.results?.firstOrNull;
              return CompetitionStoryPage(
                title: tournament?.tournamentName ?? 'Competition',
                content: tournament?.description ?? '',
                imageUrl: 'assets/app_images/main4.png',
                bookId: tournament?.book ?? 0,
                createdDate: _formatDate(context, tournament?.createdAt),
                prize: tournament?.prize ?? '',
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
