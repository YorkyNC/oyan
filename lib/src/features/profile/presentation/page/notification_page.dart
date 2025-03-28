import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oyan/src/core/extensions/build_context_extension.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  State<NotificationPage> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationPage> {
  bool priorityNotifications = true;
  bool achievementNotifications = true;
  bool competitionNotifications = true;
  bool vibrationAlarm = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('Notification'),
        iconTheme: const IconThemeData(color: Colors.black),
        centerTitle: false,
        titleTextStyle: GoogleFonts.openSans(
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: Colors.black,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            _buildSwitchTile(
              title: 'Priority notifications',
              subtitle: 'We\'ll let you know when new members of the group',
              value: priorityNotifications,
              onChanged: (value) {
                setState(() {
                  priorityNotifications = value;
                });
              },
            ),
            const SizedBox(height: 40),
            _buildSwitchTile(
              title: 'Achievement',
              subtitle: 'Notification of achievements',
              value: achievementNotifications,
              onChanged: (value) {
                setState(() {
                  achievementNotifications = value;
                });
              },
            ),
            const SizedBox(height: 40),
            _buildSwitchTile(
              title: 'Competition',
              subtitle: 'Notification of upcoming tournaments',
              value: competitionNotifications,
              onChanged: (value) {
                setState(() {
                  competitionNotifications = value;
                });
              },
            ),
            const SizedBox(height: 40),
            _buildSwitchTile(
              title: 'Vibration alarm',
              subtitle: 'Vibration reminder when notification comes',
              value: vibrationAlarm,
              onChanged: (value) {
                setState(() {
                  vibrationAlarm = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSwitchTile({
    required String title,
    required String subtitle,
    required bool value,
    required ValueChanged<bool> onChanged,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: GoogleFonts.openSans(
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xff323232),
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  subtitle,
                  style: GoogleFonts.openSans(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xffA2ADD0),
                  ),
                ),
              ],
            ),
          ),
          NotificationSwitch(
            value: value,
            onChanged: onChanged,
          ),
        ],
      ),
    );
  }
}

class NotificationSwitch extends StatelessWidget {
  final bool value;
  final ValueChanged<bool> onChanged;

  const NotificationSwitch({
    super.key,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Switch(
            value: value,
            onChanged: onChanged,
            activeColor: context.colors.white,
            activeTrackColor: context.colors.indigo500,
            inactiveTrackColor: context.colors.gray300,
            inactiveThumbColor: context.colors.white,
            trackOutlineColor: const WidgetStatePropertyAll(
              Colors.transparent,
            ),
          ),
        ],
      ),
    );
  }
}
