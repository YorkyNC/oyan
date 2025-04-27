import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oyan/src/app/imports.dart';
import 'package:oyan/src/core/base/base_bloc/bloc/base_bloc_widget.dart';
import 'package:oyan/src/core/extensions/build_context_extension.dart';
import 'package:oyan/src/core/router/router.dart';
import 'package:oyan/src/core/services/injectable/injectable_service.dart';
import 'package:oyan/src/core/widgets/shimmer/shimmer_container.dart';
import 'package:oyan/src/features/competition/domain/entities/get_competition_entity.dart';
import 'package:oyan/src/features/competition/domain/requests/get_competition_request.dart';
import 'package:oyan/src/features/competition/presentation/bloc/competition_bloc.dart';
import 'package:oyan/src/features/home/domain/entities/book.dart';

class CompetitionPage extends StatefulWidget {
  const CompetitionPage({super.key});

  @override
  State<CompetitionPage> createState() => _CompetitionPageState();
}

class _CompetitionPageState extends State<CompetitionPage> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  late CompetitionBloc _competitionBloc;

  final List<Map<String, dynamic>> _tabs = [
    {
      'label': 'Daily tasks',
      'status': CompetitionStatus.done,
    },
    {
      'label': 'Tournaments',
      'status': CompetitionStatus.participate,
    },
    {
      'label': 'Taking part',
      'status': CompetitionStatus.start,
    },
  ];
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: _tabs.length, vsync: this);
    _tabController.addListener(_handleTabChange);
    _competitionBloc = getIt<CompetitionBloc>();
    _loadBooksForCurrentTab();
  }

  void _handleTabChange() {
    if (_tabController.indexIsChanging) {
      _loadBooksForCurrentTab();
      setState(() {});
    }
  }

  void _loadBooksForCurrentTab() {
    final currentTab = _tabs[_tabController.index];
    _competitionBloc.add(
      CompetitionEvent.getCompetition(
        GetCompetitionRequest(
          status: currentTab['status'],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _tabController.removeListener(_handleTabChange);
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _competitionBloc,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text(
            'Competition',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
          centerTitle: false,
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: Column(
          children: [
            TabBar(
              dividerColor: Colors.transparent,
              controller: _tabController,
              indicatorColor: context.colors.main,
              indicatorWeight: 3,
              labelColor: context.colors.main,
              unselectedLabelColor: context.colors.gray400,
              labelStyle: GoogleFonts.openSans(fontWeight: FontWeight.w500, fontSize: 17),
              tabs: const [
                Tab(text: 'Daily tasks'),
                Tab(text: 'Tournaments'),
                Tab(text: 'Taking part'),
              ],
            ),
            Expanded(
              child: BaseBlocWidget<CompetitionBloc, CompetitionEvent, CompetitionState>(
                bloc: _competitionBloc,
                builder: (context, state, bloc) {
                  return state.maybeWhen(
                    orElse: () {
                      return ListView.builder(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return const Padding(
                            padding: EdgeInsets.only(bottom: 16),
                            child: Row(
                              children: [
                                ShimmerContainer(width: 100, height: 150),
                                SizedBox(width: 16),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      ShimmerContainer(width: double.infinity, height: 24),
                                      SizedBox(height: 8),
                                      ShimmerContainer(width: 150, height: 20),
                                      SizedBox(height: 16),
                                      ShimmerContainer(width: 100, height: 40),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      );
                    },
                    loaded: (viewModel) {
                      return TabBarView(
                        controller: _tabController,
                        children: [
                          _buildDailyTasksTab(),
                          _buildTournamentsTab(),
                          _buildTakingPartTab(),
                        ],
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildEmptyState(String message) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.emoji_events_outlined,
            size: 64,
            color: context.colors.gray300,
          ),
          const SizedBox(height: 16),
          Text(
            message,
            style: GoogleFonts.openSans(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: context.colors.gray400,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget _buildDailyTasksTab() {
    return BlocBuilder<CompetitionBloc, CompetitionState>(
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () => const SizedBox(),
          loaded: (viewModel) {
            final tasks = viewModel.doneCompetition?.results ?? [];
            if (tasks.isEmpty) {
              return _buildEmptyState('No daily tasks available at the moment');
            }
            return ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: tasks.length,
              itemBuilder: (context, index) {
                final task = tasks[index];
                return _buildTaskItem(
                  points: '${task.prize} OY',
                  title: task.description ?? '',
                  subtitle: '${task.players} players',
                  pointsColor: const Color(0xffFFC100),
                );
              },
            );
          },
        );
      },
    );
  }

  Widget _buildTournamentsTab() {
    return BlocBuilder<CompetitionBloc, CompetitionState>(
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () => const SizedBox(),
          loaded: (viewModel) {
            final tournaments = viewModel.participateCompetition?.results ?? [];
            if (tournaments.isEmpty) {
              return _buildEmptyState('No tournaments available at the moment');
            }
            return ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: tournaments.length,
              itemBuilder: (context, index) {
                final tournament = tournaments[index];
                return _buildTournamentItem(
                  amount: '${tournament.prize}\$',
                  title: tournament.description ?? '',
                  subtitle: '${tournament.players} players',
                  amountColor: const Color(0xff0CD887),
                );
              },
            );
          },
        );
      },
    );
  }

  Widget _buildTakingPartTab() {
    return BlocBuilder<CompetitionBloc, CompetitionState>(
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () => const SizedBox(),
          loaded: (viewModel) {
            final participating = viewModel.startCompetition?.results ?? [];
            if (participating.isEmpty) {
              return _buildEmptyState('No active competitions at the moment');
            }
            return ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: participating.length,
              itemBuilder: (context, index) {
                final competition = participating[index];
                return _buildParticipatingItem(
                  amount: '${competition.prize}\$',
                  title: competition.description ?? '',
                  subtitle: '${competition.players} players',
                  amountColor: const Color(0xff66D48A),
                  buttonText: 'Details',
                );
              },
            );
          },
        );
      },
    );
  }

  Widget _buildTournamentItem({
    required String amount,
    required String title,
    required String subtitle,
    required Color amountColor,
  }) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
          decoration: BoxDecoration(
            color: amountColor,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Text(
            amount,
            style: GoogleFonts.openSans(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
        ),
        const SizedBox(width: 14),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: GoogleFonts.openSans(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              Text(
                subtitle,
                style: GoogleFonts.openSans(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xffA2ADD0),
                ),
              ),
            ],
          ),
        ),
        ElevatedButton(
          onPressed: () {
            context.push(RoutePaths.booksDetails, extra: const Book());
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xffEBF0FF),
            foregroundColor: Colors.black,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
          ),
          child: Text(
            'Participate',
            style: GoogleFonts.openSans(
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildParticipatingItem({
    required String amount,
    required String title,
    required String subtitle,
    required Color amountColor,
    required String buttonText,
  }) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
          decoration: BoxDecoration(
            color: amountColor,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Text(
            amount,
            style: GoogleFonts.openSans(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
        ),
        const SizedBox(width: 14),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: GoogleFonts.openSans(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              Text(
                subtitle,
                style: GoogleFonts.openSans(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xffA2ADD0),
                ),
              ),
            ],
          ),
        ),
        ElevatedButton(
          onPressed: () {
            context.push(RoutePaths.booksDetails, extra: const Book());
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xffEBF0FF),
            foregroundColor: Colors.black,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
          ),
          child: Text(
            buttonText,
            style: GoogleFonts.openSans(
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildTaskItem({
    required String points,
    required String title,
    required String subtitle,
    required Color pointsColor,
  }) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 8),
          decoration: BoxDecoration(
            color: pointsColor,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Text(
            '+$points',
            style: GoogleFonts.openSans(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
        ),
        const SizedBox(width: 14),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: GoogleFonts.openSans(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              Text(
                subtitle,
                style: GoogleFonts.openSans(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xffA2ADD0),
                ),
              ),
            ],
          ),
        ),
        ElevatedButton(
          onPressed: () {
            context.push(RoutePaths.booksDetails, extra: const Book());
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xffEBF0FF),
            foregroundColor: Colors.black,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
          ),
          child: Text(
            'Start',
            style: GoogleFonts.openSans(
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }
}
