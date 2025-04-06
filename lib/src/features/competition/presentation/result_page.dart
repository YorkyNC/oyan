import 'package:google_fonts/google_fonts.dart';
import 'package:oyan/src/app/imports.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key});

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
          'Tournament #4',
          style: GoogleFonts.openSans(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: const Color(0xff323232),
          ),
        ),
        centerTitle: false,
      ),
      body: Column(
        children: [
          _buildPodium(),
          const SizedBox(height: 20),
          _buildMyPlace(),
          const SizedBox(height: 14),
          _buildOtherPlaces(),
          Expanded(
            child: _buildParticipantsList(),
          ),
        ],
      ),
    );
  }

  Widget _buildPodium() {
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
          Positioned(
            bottom: 4,
            left: 0,
            child: _buildPodiumPlace(
              height: 67,
              width: 114,
              position: "#2",
              username: "@loremupsum_123",
              color: const Color(0xFFEBF0FF),
            ),
          ),

          // First place (center)
          Positioned(
            bottom: 4,
            left: 0,
            right: 0,
            child: Center(
              child: _buildPodiumPlace(
                height: 110,
                width: 114,
                position: "#1",
                username: "@nurikkz",
                color: const Color(0xFFFFD700),
                isFirst: true,
              ),
            ),
          ),

          // Third place (right)
          Positioned(
            bottom: 4,
            right: 0,
            child: _buildPodiumPlace(
              height: 67,
              width: 114,
              position: "#3",
              username: "@lorem_123",
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

  Widget _buildMyPlace() {
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
            position: 1,
            username: '@nurikkz',
            time: '01:51:00',
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

  Widget _buildParticipantsList() {
    // Sample data for the list
    final List<Map<String, dynamic>> participants = [
      {'position': 4, 'username': '@wefwef', 'time': '01:52:00'},
      {'position': 5, 'username': '@xyzabc', 'time': '01:53:00'},
      {'position': 6, 'username': '@qwertyui', 'time': '01:54:00'},
      {'position': 7, 'username': '@asdfghjkl', 'time': '01:56:00'},
      {'position': 8, 'username': '@zxcvbnm', 'time': '01:59:00'},
      {'position': 9, 'username': '@qazwsx', 'time': '02:01:00'},
      {'position': 10, 'username': '@plmokn', 'time': '01:54:00'},
      {'position': 11, 'username': '@tyuiop', 'time': '01:54:00'},
      {'position': 12, 'username': '@ghjklzxc', 'time': '01:54:00'},
      {'position': 13, 'username': '@vbnmqwe', 'time': '01:54:00'},
      {'position': 14, 'username': '@rtyuiop', 'time': '01:54:00'},
      {'position': 15, 'username': '@fghjklmn', 'time': '01:54:00'},
      {'position': 16, 'username': '@cvbnmlo', 'time': '01:54:00'},
      {'position': 17, 'username': '@xswqer', 'time': '01:54:00'},
    ];

    return ListView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      itemCount: participants.length,
      itemBuilder: (context, index) {
        final participant = participants[index];
        return _buildParticipantRow(
          position: participant['position'],
          username: participant['username'],
          time: participant['time'],
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
      decoration: const BoxDecoration(
        color: Colors.white,
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
