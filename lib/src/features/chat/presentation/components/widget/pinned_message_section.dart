import 'package:flutter/material.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:oyan/src/core/extensions/build_context_extension.dart';

class PinnedMessagesSection extends StatelessWidget {
  final List<types.Message> pinnedMessages;
  final Function(types.Message) onUnpin;
  final Function(types.Message) onMessageTap;
  final Color accentColor;
  final String pinnedMessageLabel;

  const PinnedMessagesSection({
    super.key,
    required this.pinnedMessages,
    required this.onUnpin,
    required this.onMessageTap,
    this.accentColor = const Color(0xFF2599A0),
    required this.pinnedMessageLabel,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.white,
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: pinnedMessages.map((message) => _buildPinnedMessage(message, context)).toList(),
      ),
    );
  }

  Widget _buildPinnedMessage(types.Message message, BuildContext context) {
    return Row(
      children: [
        IconButton(
          icon: Icon(
            context.icons.add_square__square_remove_cross_buttons_add_plus_button___mathematics_math,
            color: Colors.black,
            size: 24,
          ),
          onPressed: () => onUnpin(message),
        ),
        Expanded(child: _buildMessageContent(message)),
      ],
    );
  }

  Widget _buildMessageContent(types.Message message) {
    return GestureDetector(
      onTap: () => onMessageTap(message),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(pinnedMessageLabel, style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12, color: accentColor)),
          _buildMessagePreview(message),
        ],
      ),
    );
  }

  Widget _buildMessagePreview(types.Message message) {
    final String previewText = _getMessagePreview(message);

    return Text(
      previewText,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 12, color: Colors.black),
    );
  }

  String _getMessagePreview(types.Message message) {
    if (message is types.TextMessage) {
      return message.text;
    } else if (message is types.ImageMessage) {
      return 'IMAGE';
    } else if (message is types.FileMessage) {
      return 'FILE: ${message.name}';
    }
    return 'MESSAGE';
  }
}
