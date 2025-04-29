import 'dart:async';

import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:oyan/src/app/imports.dart';
import 'package:oyan/src/core/base/base_bloc/bloc/base_bloc_widget.dart';
import 'package:oyan/src/core/services/injectable/injectable_service.dart';
import 'package:oyan/src/features/competition/domain/entities/get_competition_entity.dart';
import 'package:oyan/src/features/competition/domain/requests/get_competition_request.dart';
import 'package:oyan/src/features/competition/presentation/bloc/competition_bloc.dart';

class CompetitonsStoryPage extends StatefulWidget {
  final int storyDuration;

  const CompetitonsStoryPage({
    super.key,
    this.storyDuration = 15,
  });

  @override
  State<CompetitonsStoryPage> createState() => _CompetitonsStoryPageState();
}

class _CompetitonsStoryPageState extends State<CompetitonsStoryPage> {
  late Timer _timer;
  double _progress = 0.0;
  late CompetitionBloc _competitionBloc;

  @override
  void initState() {
    super.initState();
    _competitionBloc = getIt<CompetitionBloc>();
    _competitionBloc.add(const CompetitionEvent.getCompetition(
      GetCompetitionRequest(status: CompetitionStatus.participate),
    ));
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
      backgroundColor: Colors.black,
      body: GestureDetector(
        onLongPress: _pauseTimer,
        onLongPressUp: _resumeTimer,
        child: BaseBlocWidget<CompetitionBloc, CompetitionEvent, CompetitionState>(
          bloc: _competitionBloc,
          builder: (context, state, bloc) {
            return state.maybeWhen(
              orElse: () => const Center(child: CircularProgressIndicator()),
              loaded: (viewModel) {
                final competition = viewModel.participateCompetition?.results?.first;

                if (competition == null) {
                  return const Center(child: Text('Competition not found'));
                }

                return Stack(
                  children: [
                    Positioned.fill(
                      child: Image.asset(
                        'assets/app_images/main4.png',
                        fit: BoxFit.cover,
                      ),
                    ),

                    // Content
                    SafeArea(
                      child: Center(
                        child: SingleChildScrollView(
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

                              const SizedBox(height: 20),

                              // Trophy image
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 20),
                                child: Transform.rotate(
                                  angle: 0.15,
                                  child: Image.asset(
                                    'assets/app_images/main3.png',
                                    height: 200,
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

                              // Date
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 16),
                                child: Text(
                                  competition.fromDate != null
                                      ? DateFormat('dd.MM.yyyy').format(competition.fromDate!)
                                      : '',
                                  style: GoogleFonts.montserrat(
                                    fontSize: 40,
                                    fontWeight: FontWeight.w800,
                                    color: Colors.black,
                                  ),
                                ),
                              ),

                              const SizedBox(height: 10),

                              // Title
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 16),
                                child: Text(
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 5,
                                  competition.description ?? '',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.openSans(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                  ),
                                ),
                              ),

                              const SizedBox(height: 16),

                              // Prize
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 16),
                                child: Text(
                                  '${competition.prize}\$',
                                  style: GoogleFonts.montserrat(
                                    fontSize: 36,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                  ),
                                ),
                              ),

                              const SizedBox(height: 32),

                              // More detailed button
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 16.0,
                                  right: 16.0,
                                  bottom: 16.0,
                                ),
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
                                    padding: const EdgeInsets.symmetric(vertical: 12),
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
                      ),
                    ),
                  ],
                );
              },
            );
          },
        ),
      ),
    );
  }
}
