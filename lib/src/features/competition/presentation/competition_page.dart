import 'package:google_fonts/google_fonts.dart';
import 'package:oyan/src/app/imports.dart';
import 'package:oyan/src/core/extensions/build_context_extension.dart';
import 'package:oyan/src/core/router/router.dart';
import 'package:oyan/src/features/home/domain/entities/book.dart';

class CompetitionPage extends StatefulWidget {
  const CompetitionPage({super.key});

  @override
  State<CompetitionPage> createState() => _CompetitionPageState();
}

class _CompetitionPageState extends State<CompetitionPage> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            child: TabBarView(
              controller: _tabController,
              children: [
                _buildDailyTasksTab(),
                _buildTournamentsTab(),
                _buildTakingPartTab(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDailyTasksTab() {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        _buildTaskItem(
          points: '250 OY',
          title: 'Read the passage',
          subtitle: 'The story of a lonely boy',
          pointsColor: const Color(0xffFFC100),
        ),
        const SizedBox(height: 16),
        _buildTaskItem(
          points: '250 OY',
          title: 'Read the passage',
          subtitle: 'Love brings you home',
          pointsColor: const Color(0xffFFC100),
        ),
        const SizedBox(height: 16),
        _buildTaskItem(
          points: '50 OY',
          title: 'Follow on Instagram',
          subtitle: '@oyan_kz',
          pointsColor: const Color(0xffFFC100),
        ),
      ],
    );
  }

  Widget _buildTournamentsTab() {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        _buildTournamentItem(
          amount: '50\$',
          title: 'Tournament #2',
          subtitle: 'Love brings you home',
          amountColor: const Color(0xff0CD887),
        ),
        const SizedBox(height: 16),
        _buildTournamentItem(
          amount: '150\$',
          title: 'Tournament #3',
          subtitle: 'Abai Zholy',
          amountColor: const Color(0xff0CD887),
        ),
      ],
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

  Widget _buildTakingPartTab() {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        _buildParticipatingItem(
          amount: '100\$',
          title: 'Tournament #1',
          subtitle: 'The story of a lonely boy',
          amountColor: const Color(0xff66D48A),
          buttonText: 'Details',
        ),
        const SizedBox(height: 24),
        _buildResultsExpansionTile(),
      ],
    );
  }

  Widget _buildResultsExpansionTile() {
    return Theme(
      data: Theme.of(context).copyWith(
        dividerColor: Colors.transparent,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
      ),
      child: ExpansionTile(
        title: Text(
          'Results',
          style: GoogleFonts.openSans(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        tilePadding: EdgeInsets.zero,
        childrenPadding: EdgeInsets.zero,
        iconColor: Colors.black,
        collapsedIconColor: Colors.black,
        backgroundColor: Colors.transparent,
        children: [
          const SizedBox(height: 16),
          _buildResultParticipatingItem(
            amount: '100\$',
            title: 'Tournament #4',
            subtitle: 'The story of a lonely boy',
            amountColor: const Color(0xff66D48A),
            buttonText: 'Result',
          ),
        ],
      ),
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

  Widget _buildResultParticipatingItem({
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
            context.push(RoutePaths.tournamentResult);
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
