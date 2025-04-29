import 'package:google_fonts/google_fonts.dart';
import 'package:oyan/src/app/imports.dart';
import 'package:oyan/src/core/base/base_bloc/bloc/base_bloc_widget.dart';
import 'package:oyan/src/core/services/injectable/injectable_service.dart';
import 'package:oyan/src/features/competition/domain/entities/get_result_entity.dart';
import 'package:oyan/src/features/competition/domain/requests/get_result_request.dart';
import 'package:oyan/src/features/competition/presentation/bloc/competition_bloc.dart';

class ResultPage extends StatefulWidget {
  final int tournamentId;
  const ResultPage({super.key, required this.tournamentId});

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  late CompetitionBloc _competitionBloc;

  @override
  void initState() {
    super.initState();
    _competitionBloc = getIt<CompetitionBloc>();
    _competitionBloc.add(CompetitionEvent.getResult(GetResultRequest(tournamentId: widget.tournamentId)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.chevron_left, color: Colors.black),
          onPressed: () => context.pop(),
        ),
        title: Text(
          'Tournament #${widget.tournamentId}',
          style: GoogleFonts.openSans(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: const Color(0xff323232),
          ),
        ),
        centerTitle: false,
      ),
      body: BaseBlocWidget<CompetitionBloc, CompetitionEvent, CompetitionState>(
        bloc: _competitionBloc,
        builder: (context, state, bloc) {
          return state.maybeWhen(
            orElse: () => const Center(child: CircularProgressIndicator()),
            loaded: (viewModel) {
              final results = viewModel.result?.results ?? [];
              if (results.isEmpty) {
                return Center(
                  child: Text(
                    'No results available',
                    style: GoogleFonts.openSans(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xffA2ADD0),
                    ),
                  ),
                );
              }
              results.sort((a, b) => (b.score ?? 0).compareTo(a.score ?? 0));

              return Column(
                children: [
                  _buildPodium(results),
                  const SizedBox(height: 20),
                  _buildMyPlace(results),
                  const SizedBox(height: 14),
                  _buildOtherPlaces(),
                  Expanded(
                    child: _buildParticipantsList(results),
                  ),
                ],
              );
            },
            error: (error) => Center(
              child: Text(
                error,
                style: GoogleFonts.openSans(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xffA2ADD0),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildPodium(List<Result> results) {
    final topThree = results.take(3).toList();
    return Container(
      height: 180,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          // Base blue line
          Positioned(
            bottom: -10,
            left: 0,
            right: 0,
            child: Container(
              height: 14,
              color: const Color(0xff646CE6),
            ),
          ),

          // Second place (left)
          if (topThree.length >= 2)
            Positioned(
              bottom: 4,
              left: 0,
              child: _buildPodiumPlace(
                height: 67,
                width: 114,
                position: "#2",
                username: topThree[1].user ?? '',
                color: const Color(0xFFEBF0FF),
              ),
            ),

          // First place (center)
          if (topThree.isNotEmpty)
            Positioned(
              bottom: 4,
              left: 0,
              right: 0,
              child: Center(
                child: _buildPodiumPlace(
                  height: 110,
                  width: 114,
                  position: "#1",
                  username: topThree[0].user ?? '',
                  color: const Color(0xFFFFD700),
                  isFirst: true,
                ),
              ),
            ),

          // Third place (right)
          if (topThree.length >= 3)
            Positioned(
              bottom: 4,
              right: 0,
              child: _buildPodiumPlace(
                height: 67,
                width: 114,
                position: "#3",
                username: topThree[2].user ?? '',
                color: const Color(0xFFEBF0FF),
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildPodiumPlace({
    required double height,
    required double width,
    required String position,
    required String username,
    required Color color,
    bool isFirst = false,
  }) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          username,
          style: GoogleFonts.openSans(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: Colors.black,
          ),
          textAlign: TextAlign.center,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(height: 4),
        Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
            color: color,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(5),
              topRight: Radius.circular(5),
            ),
          ),
          child: Center(
            child: Text(
              position,
              style: GoogleFonts.openSans(
                fontSize: 20,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildMyPlace(List<Result> results) {
    final myResult = results.firstWhere(
      (result) => result.user == 'current_user',
      orElse: () => results.first,
    );

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'My place',
            style: GoogleFonts.openSans(
              fontSize: 15,
              fontWeight: FontWeight.w400,
              color: const Color(0xffA2ADD0),
            ),
          ),
          const SizedBox(height: 12),
          _buildParticipantRow(
            position: results.indexOf(myResult) + 1,
            username: myResult.user ?? '',
            time: myResult.time ?? '',
            isHighlighted: true,
          ),
        ],
      ),
    );
  }

  Widget _buildOtherPlaces() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Text(
        'Other places',
        style: GoogleFonts.openSans(
          fontSize: 15,
          fontWeight: FontWeight.w400,
          color: const Color(0xffA2ADD0),
        ),
      ),
    );
  }

  Widget _buildParticipantsList(List<Result> results) {
    return ListView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      itemCount: results.length,
      itemBuilder: (context, index) {
        final result = results[index];
        return _buildParticipantRow(
          position: index + 1,
          username: result.user ?? '',
          time: result.time ?? '',
        );
      },
    );
  }

  Widget _buildParticipantRow({
    required int position,
    required String username,
    required String time,
    bool isHighlighted = false,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12),
      decoration: BoxDecoration(
        color: isHighlighted ? const Color(0xFFEBF0FF) : Colors.white,
      ),
      child: Row(
        children: [
          SizedBox(
            width: 40,
            child: Text(
              '#$position',
              style: GoogleFonts.openSans(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
          ),
          Expanded(
            child: Text(
              username,
              style: GoogleFonts.openSans(
                fontSize: 15,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ),
          ),
          Text(
            time,
            style: GoogleFonts.openSans(
              fontSize: 15,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
