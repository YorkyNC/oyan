import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:oyan/src/core/extensions/build_context_extension.dart';

class MessageSelectionHandler {
  final List<String> selectedMessageIds;
  final List<types.Message> messages;
  final Function(types.Message) onReplyPressed;
  final VoidCallback onCopyPressed;
  final VoidCallback onForwardPressed;
  final Function(types.Message) onPinPressed;
  final Color iconColor;
  final double iconSize;

  const MessageSelectionHandler({
    required this.selectedMessageIds,
    required this.messages,
    required this.onReplyPressed,
    required this.onCopyPressed,
    required this.onForwardPressed,
    required this.onPinPressed,
    this.iconColor = CupertinoColors.black,
    this.iconSize = 24,
  });

  List<Widget> buildSelectionActions(BuildContext context) {
    return [
      if (_isSingleMessageSelected)
        _buildActionButton(
          icon: context.icons.add_square__square_remove_cross_buttons_add_plus_button___mathematics_math,
          onPressed: () => _handleSingleMessageAction(onReplyPressed),
        ),
      _buildActionButton(
        icon: context.icons.add_square__square_remove_cross_buttons_add_plus_button___mathematics_math,
        onPressed: onCopyPressed,
      ),
      _buildActionButton(
        icon: context.icons.add_square__square_remove_cross_buttons_add_plus_button___mathematics_math,
        onPressed: onForwardPressed,
      ),
      if (_isSingleMessageSelected)
        _buildActionButton(
          icon: context.icons.add_square__square_remove_cross_buttons_add_plus_button___mathematics_math,
          onPressed: () => _handleSingleMessageAction(onPinPressed),
        ),
    ];
  }

  bool get _isSingleMessageSelected => selectedMessageIds.length == 1;

  types.Message? get _selectedMessage {
    if (!_isSingleMessageSelected) return null;

    try {
      return messages.firstWhere((message) => selectedMessageIds.contains(message.id));
    } catch (e) {
      return null;
    }
  }

  void _handleSingleMessageAction(Function(types.Message) action) {
    final message = _selectedMessage;
    if (message != null) {
      action(message);
    }
  }

  Widget _buildActionButton({required IconData icon, required VoidCallback onPressed}) {
    return IconButton(icon: Icon(icon, color: iconColor, size: iconSize), onPressed: onPressed);
  }
}
