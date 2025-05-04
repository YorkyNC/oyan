import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oyan/src/app/imports.dart';
import 'package:oyan/src/core/extensions/build_context_extension.dart';
import 'package:oyan/src/core/router/router.dart';
import 'package:oyan/src/core/services/injectable/injectable_service.dart';
import 'package:oyan/src/core/widgets/shimmer/shimmer_container.dart';
import 'package:oyan/src/features/competition/domain/entities/competition_entity.dart';
import 'package:oyan/src/features/competition/domain/entities/get_competition_entity.dart';
import 'package:oyan/src/features/competition/domain/requests/get_result_request.dart';
import 'package:oyan/src/features/competition/domain/requests/patch_tournament_requst.dart';
import 'package:oyan/src/features/competition/presentation/bloc/competition_bloc.dart';
import 'package:oyan/src/features/home/domain/entities/book.dart';
import 'package:oyan/src/features/home/domain/requests/get_book_by_id_request.dart';
import 'package:oyan/src/features/home/presentation/bloc/book_bloc.dart';

class TournamentsDetailPage extends StatefulWidget {
  final int tournamentId;
  final int bookId;

  const TournamentsDetailPage({
    super.key,
    required this.tournamentId,
    required this.bookId,
  });

  @override
  State<TournamentsDetailPage> createState() => _TournamentsDetailPageState();
}

class _TournamentsDetailPageState extends State<TournamentsDetailPage> {
  late CompetitionBloc _competitionBloc;
  late BookBloc _bookBloc;

  @override
  void initState() {
    super.initState();
    _competitionBloc = getIt<CompetitionBloc>();
    _bookBloc = getIt<BookBloc>();
    _loadData();
  }

  void _loadData() {
    _competitionBloc.add(
      CompetitionEvent.getDetail(
        GetResultRequest(
          tournamentId: widget.tournamentId,
        ),
      ),
    );

    _bookBloc.add(
      BookEvent.getBookById(
        GetBookByIdRequest(bookId: widget.bookId),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider.value(value: _competitionBloc),
        BlocProvider.value(value: _bookBloc),
      ],
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            // Half circle decoration
            Positioned(
              top: -MediaQuery.of(context).size.height * 0.35,
              left: -20,
              right: -20,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.8,
                decoration: const BoxDecoration(
                  color: Color(0xFFEBF0FF),
                  shape: BoxShape.circle,
                ),
              ),
            ),
            // Main content
            SafeArea(
              child: Column(
                children: [
                  _buildAppBar(context),
                  Expanded(
                    child: BlocBuilder<CompetitionBloc, CompetitionState>(
                      builder: (context, competitionState) {
                        return BlocBuilder<BookBloc, BookState>(
                          builder: (context, bookState) {
                            return competitionState.maybeWhen(
                              orElse: () => _buildLoadingState(),
                              loaded: (viewModel) {
                                final tournament = viewModel.detail?.results?.firstOrNull;

                                if (tournament == null) {
                                  return const Center(child: Text('Tournament not found'));
                                }

                                return bookState.maybeWhen(
                                  orElse: () => const Center(child: CircularProgressIndicator()),
                                  loaded: (bookViewModel) {
                                    if (bookViewModel.book == null) {
                                      return const Center(child: Text('Book not found'));
                                    }

                                    return SingleChildScrollView(
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 24.0),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            const SizedBox(height: 20),
                                            _buildBookCover(context, bookViewModel.book!),
                                            const SizedBox(height: 20),
                                            _buildBookTitle(context, bookViewModel.book!),
                                            const SizedBox(height: 8),
                                            _buildAuthorName(context, bookViewModel.book!),
                                            const SizedBox(height: 16),
                                            _buildDateRange(context, tournament),
                                            const SizedBox(height: 30),
                                            _buildTournamentDescription(context, tournament),
                                            const SizedBox(height: 32),
                                            _buildTournamentStats(context, tournament),
                                            const SizedBox(height: 24),
                                            _buildTournamentCountdown(context, tournament),
                                            const SizedBox(height: 32),
                                            _buildParticipateButton(context, tournament),
                                            const SizedBox(height: 32),
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                );
                              },
                            );
                          },
                        );
                      },
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

  Widget _buildAppBar(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Row(
        children: [
          GestureDetector(
            onTap: () => Navigator.of(context).pop(),
            child: Container(
              padding: const EdgeInsets.all(8),
              child: const Icon(
                Icons.arrow_back_ios,
                size: 20,
              ),
            ),
          ),
          const SizedBox(width: 8),
          Text(
            'Tournament #${widget.tournamentId}',
            style: GoogleFonts.openSans(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: const Color(0xff323232),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLoadingState() {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 29),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(16),
                    color: Colors.transparent,
                    child: const Column(
                      children: [
                        SizedBox(height: 16),
                        ShimmerContainer(width: 206.61761474609375, height: 283.0863952636719),
                        SizedBox(height: 12),
                        ShimmerContainer(width: 260, height: 24),
                        SizedBox(height: 12),
                        ShimmerContainer(width: 180, height: 24),
                        SizedBox(height: 12),
                        ShimmerContainer(width: 100, height: 24),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ShimmerContainer(width: 68, height: 48),
                            SizedBox(width: 6),
                            ShimmerContainer(width: 68, height: 48),
                            SizedBox(width: 6),
                            ShimmerContainer(width: 68, height: 48),
                            SizedBox(width: 6),
                            ShimmerContainer(width: 68, height: 48),
                          ],
                        ),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ShimmerContainer(width: 100, height: 12),
                            SizedBox(width: 12),
                            ShimmerContainer(width: 100, height: 12),
                          ],
                        ),
                        SizedBox(height: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ShimmerContainer(width: 100, height: 12),
                          ],
                        ),
                        SizedBox(height: 20),
                        ShimmerContainer(width: double.infinity, height: 46),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildBookCover(BuildContext context, Book book) {
    return Container(
      width: 120.68,
      height: 165.35,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: ClipRRect(
        child: Image.network(
          book.coverImageUrl ?? 'https://via.placeholder.com/180x260',
          fit: BoxFit.cover,
          errorBuilder: (context, error, stackTrace) {
            return Container(
              color: context.colors.gray200,
              child: Center(
                child: Icon(
                  Icons.book,
                  size: 48,
                  color: context.colors.gray400,
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _buildBookTitle(BuildContext context, Book book) {
    return Text(
      book.title ?? 'Book Title',
      style: GoogleFonts.openSans(
        fontSize: 17,
        fontWeight: FontWeight.w600,
        color: const Color(0xff323232),
      ),
      textAlign: TextAlign.center,
    );
  }

  Widget _buildAuthorName(BuildContext context, Book book) {
    return Text(
      book.author ?? 'Author Name',
      style: GoogleFonts.openSans(
        fontSize: 15,
        fontWeight: FontWeight.w500,
        color: const Color(0xffA2ADD0),
      ),
      textAlign: TextAlign.center,
    );
  }

  Widget _buildDateRange(BuildContext context, Competition tournament) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          _formatDate(tournament.fromDate),
          style: GoogleFonts.openSans(
            fontSize: 15,
            fontWeight: FontWeight.w600,
            color: const Color(0xff323232),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(
            'to',
            style: GoogleFonts.openSans(
              fontSize: 15,
              fontWeight: FontWeight.w500,
              color: const Color(0xffA2ADD0),
            ),
          ),
        ),
        Text(
          _formatDate(tournament.toDate),
          style: GoogleFonts.openSans(
            fontSize: 15,
            fontWeight: FontWeight.w600,
            color: const Color(0xff323232),
          ),
        ),
      ],
    );
  }

  String _formatDate(DateTime? date) {
    if (date == null) return '';
    return '${date.day} ${_getMonthName(date.month)}';
  }

  String _getMonthName(int month) {
    const months = {
      1: 'JAN',
      2: 'FEB',
      3: 'MAR',
      4: 'APR',
      5: 'MAY',
      6: 'JUN',
      7: 'JUL',
      8: 'AUG',
      9: 'SEP',
      10: 'OCT',
      11: 'NOV',
      12: 'DEC',
    };
    return months[month] ?? '';
  }

  Widget _buildTournamentDescription(BuildContext context, Competition tournament) {
    return Text(
      tournament.description ?? 'Tournament Description',
      style: GoogleFonts.openSans(
        fontSize: 15,
        fontWeight: FontWeight.w400,
        color: const Color(0xff323232),
      ),
      textAlign: TextAlign.left,
    );
  }

  Widget _buildTournamentStats(BuildContext context, Competition tournament) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildStatItem(
          context,
          '${(tournament.pageTo ?? 0) - (tournament.pageFrom ?? 0)}',
          'Pages',
        ),
        _buildStatItem(context, '${tournament.prize}\$', 'Prize'),
        _buildStatItem(context, '${tournament.players}', 'Player'),
        _buildStatItem(context, '${tournament.questions}', 'Questions'),
      ],
    );
  }

  Widget _buildStatItem(BuildContext context, String value, String label) {
    return Column(
      children: [
        Text(
          value,
          style: GoogleFonts.openSans(
            fontSize: 17,
            fontWeight: FontWeight.w600,
            color: const Color(0xff323232),
          ),
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: GoogleFonts.openSans(
            fontSize: 15,
            fontWeight: FontWeight.w500,
            color: const Color(0xffA2ADD0),
          ),
        ),
      ],
    );
  }

  Widget _buildTournamentCountdown(BuildContext context, Competition tournament) {
    return Text(
      _calculateCountdown(tournament.toDate),
      style: GoogleFonts.openSans(
        fontSize: 17,
        fontWeight: FontWeight.w600,
        color: const Color(0xff323232),
      ),
    );
  }

  String _calculateCountdown(DateTime? endDate) {
    if (endDate == null) return '00h : 00m : 00s';

    final now = DateTime.now();
    final difference = endDate.difference(now);

    if (difference.isNegative) return '00h : 00m : 00s';

    final hours = difference.inHours;
    final minutes = difference.inMinutes.remainder(60);
    final seconds = difference.inSeconds.remainder(60);

    return '${hours.toString().padLeft(2, '0')}h : ${minutes.toString().padLeft(2, '0')}m : ${seconds.toString().padLeft(2, '0')}s';
  }

  Widget _buildParticipateButton(BuildContext context, Competition tournament) {
    final now = DateTime.now();
    final isActive = tournament.fromDate != null &&
        tournament.toDate != null &&
        now.isAfter(tournament.fromDate!) &&
        now.isBefore(tournament.toDate!);

    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          HapticFeedback.mediumImpact();
          if (isActive) {
            context.push(RoutePaths.test, extra: {
              'tournamentId': widget.tournamentId,
            });
          } else {
            _competitionBloc.add(
              CompetitionEvent.patchTournament(
                PatchTournamentRequest(
                  tournamentId: widget.tournamentId,
                  status: CompetitionStatus.participate,
                ),
              ),
            );
          }
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: context.colors.main,
          foregroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(vertical: 12),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
        ),
        child: Text(
          isActive ? context.loc.start : context.loc.participate,
          style: GoogleFonts.openSans(
            fontSize: 17,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
