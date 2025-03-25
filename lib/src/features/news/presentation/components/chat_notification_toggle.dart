import 'package:flutter/material.dart';
import 'package:oyan/src/core/extensions/build_context_extension.dart';

import '../../../../core/theme/colors.dart';
import '../../../../core/widgets/toggle_bar/custom_toggle_bar.dart';

class ChatNotificationToggle extends StatefulWidget {
  const ChatNotificationToggle({Key? key}) : super(key: key);

  @override
  _ChatNotificationToggleState createState() => _ChatNotificationToggleState();
}

class _ChatNotificationToggleState extends State<ChatNotificationToggle> {
  bool _isEnabled = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Отправить рассылку в чаты',
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14, color: context.colors.black),
        ),
        CustomSwitch(
          value: _isEnabled,
          activeColor: const Color(0xFF2CB1B9),
          onToggle: (value) {
            setState(() {
              _isEnabled = value;
            });
          },
        ),
      ],
    );
  }
}
