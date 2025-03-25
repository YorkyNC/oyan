import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart' as chat_ui;
import 'package:oyan/src/core/extensions/build_context_extension.dart';
import 'package:oyan/src/core/localization/generated/l10n.dart';
import 'package:oyan/src/features/chat/data/models/chat_entity.dart' as chatEntity;

import '../../../../core/utils/constants/app_icons.dart';

const defaultChatTheme = chat_ui.DefaultChatTheme(
  backgroundColor: Colors.white,
  messageBorderRadius: 16,
  messageInsetsHorizontal: 0,
  bubbleMargin: EdgeInsets.zero,
  messageInsetsVertical: 0,
  inputBackgroundColor: Colors.white,
  primaryColor: Color(0xFFE8F5F6),
  highlightMessageColor: Colors.red,
  secondaryColor: Colors.white,
  userAvatarNameColors: [Color(0xFF2599A0)],
  sentMessageBodyTextStyle: TextStyle(fontSize: 16, color: Colors.black87, height: 1.3),
  receivedMessageBodyTextStyle: TextStyle(fontSize: 16, color: Colors.black87, height: 1.3),
);

DateTime convertToLocalTime(DateTime utcTime) {
  final tz = DateTime.now().timeZoneOffset;

  if (utcTime.timeZoneOffset.inHours == tz.inHours) {
    return utcTime.add(tz);
  } else if (utcTime.timeZoneOffset.inHours < tz.inHours) {
    return utcTime.subtract(tz);
  }

  return utcTime;
}

List<String> processRoles(List<chatEntity.ChatRoleEntity> roles) {
  final List<String> formattedRoles = [];

  for (var roleData in roles) {
    String roleName = roleData.role;

    if (roleName != 'parent') {
      if (roleName == 'classroomTeacher') {
        roleName = S.current.classroomTeacher;
        formattedRoles.add(roleName);
      }
      if (roleName == 'teacher') {
        roleName = S.current.teacher;
        formattedRoles.add(roleName);
      }
    }
    if (roleName == 'parent') {
      String studentFullName = '${roleData.studentFirstName ?? 'FName'} ${roleData.studentLastName ?? 'LName'}';
      formattedRoles.add(studentFullName);
    }
  }

  return formattedRoles;
}

List<Widget> buildDefaultActions(BuildContext context) {
  return [
    CupertinoButton(
      padding: EdgeInsets.zero,
      child: Icon(
        context.icons.add_square__square_remove_cross_buttons_add_plus_button___mathematics_math,
        color: CupertinoColors.black,
        size: 24,
      ),
      onPressed: () {
        showModalBottomSheet(
          isScrollControlled: true,
          useRootNavigator: true,
          showDragHandle: true,
          backgroundColor: Colors.white,
          context: context,
          builder:
              (context) => const SizedBox(
                // title: context.loc.notifications,
              ),
        );
      },
    ),
    CupertinoButton(
      padding: EdgeInsets.zero,
      child: Icon(
        context.icons.add_square__square_remove_cross_buttons_add_plus_button___mathematics_math,
        color: Colors.black,
        size: 24,
      ),
      onPressed: () {},
    ),
  ];
}
