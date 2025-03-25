import 'package:flutter/material.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart' as chat_ui;

const customChatTheme = chat_ui.DefaultChatTheme(
  primaryColor: Color(0xFFDDF4EE),
  inputBackgroundColor: Colors.white,
  inputTextColor: Colors.black,
  inputTextStyle: TextStyle(
    color: Colors.black,
  ),
  messageInsetsVertical: 10,
  messageInsetsHorizontal: 16,
  messageBorderRadius: 8,
  sentMessageBodyTextStyle: TextStyle(
    color: Colors.black,
  ),
  receivedMessageBodyTextStyle: TextStyle(
    color: Colors.black87,
  ),
);
