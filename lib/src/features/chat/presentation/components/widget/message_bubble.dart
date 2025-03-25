import 'package:flutter/material.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:intl/intl.dart';
import 'package:oyan/src/core/extensions/build_context_extension.dart';
import 'package:oyan/src/core/theme/typography.dart';

import '../../../../../core/theme/colors.dart';
import 'replied_message_widget.dart';

class MessageBubble extends StatelessWidget {
  final types.Message message;
  final bool isCurrentUser;
  final bool nextMessageInGroup;
  final bool isSelected;
  final VoidCallback onLongPress;
  final double maxWidth;
  final Color primaryColor;
  final Color selectedColor;

  const MessageBubble({
    super.key,
    required this.message,
    required this.isCurrentUser,
    required this.nextMessageInGroup,
    required this.isSelected,
    required this.onLongPress,
    this.maxWidth = 270,
    this.primaryColor = const Color(0xFF2599A0),
    this.selectedColor = const Color(0xFFE8F5F6),
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPress: onLongPress,
      child: Container(
        decoration: BoxDecoration(color: isSelected ? selectedColor : Colors.transparent),
        child: Container(
          margin: EdgeInsets.only(
            bottom: nextMessageInGroup ? 3 : 10,
            left: isCurrentUser ? 20 : 0,
            right: isCurrentUser ? 0 : 20,
          ),
          child: Column(
            crossAxisAlignment: isCurrentUser ? CrossAxisAlignment.end : CrossAxisAlignment.start,
            children: [_buildMessageContainer(context)],
          ),
        ),
      ),
    );
  }

  Widget _buildMessageContainer(BuildContext context) {
    // Get the screen width
    final screenWidth = MediaQuery.of(context).size.width;
    // Calculate maximum width as 70% of screen width
    final maxWidth = screenWidth * 0.7;

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12),
      constraints: BoxConstraints(
        maxWidth: maxWidth,
        minWidth: 0, // Allow container to shrink to content
      ),
      decoration: BoxDecoration(
        color: isCurrentUser ? selectedColor : Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: !isCurrentUser ? Border.all(color: const Color(0xFFE5E5EA)) : null,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          if (message.metadata?['repliedMessageId'] != null)
            RepliedMessageWidget(repliedMessageId: message.metadata!['repliedMessageId'] as String),
          _buildMessageContent(context),
        ],
      ),
    );
  }

  Widget _buildMessageContent(BuildContext context) {
    if (message is types.TextMessage) {
      return _buildTextMessage(context, message as types.TextMessage);
    } else if (message is types.ImageMessage) {
      return _buildImageMessage(context, message as types.ImageMessage);
    } else if (message is types.FileMessage) {
      return _buildFileMessage(message as types.FileMessage);
    }
    return const SizedBox.shrink();
  }

  Widget _buildTextMessage(BuildContext context, types.TextMessage textMessage) {
    return IntrinsicWidth(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (!isCurrentUser)
            Padding(
              padding: const EdgeInsets.only(left: 8, right: 8, top: 8, bottom: 1),
              child: Text(
                '${message.author.firstName} ${message.author.lastName}',
                style: TextStyle(color: primaryColor, fontWeight: FontWeight.w500),
              ),
            ),
          Padding(
            padding: EdgeInsets.only(left: 8, right: 8, bottom: 2, top: isCurrentUser ? 8 : 1),
            child: Text(
              textMessage.text,
              style: const FigmaTextStyles().typography2Regular.copyWith(color: context.colors.black),
            ),
          ),
          Padding(padding: const EdgeInsets.only(left: 8, right: 8, bottom: 8), child: _buildMessageFooter()),
        ],
      ),
    );
  }

  Widget _buildImageMessage(BuildContext context, types.ImageMessage imageMessage) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.network(
            imageMessage.uri,
            fit: BoxFit.cover,
            loadingBuilder: (context, child, loadingProgress) {
              if (loadingProgress == null) return child;
              return Center(
                child: CircularProgressIndicator(
                  value:
                      loadingProgress.expectedTotalBytes != null
                          ? loadingProgress.cumulativeBytesLoaded / loadingProgress.expectedTotalBytes!
                          : null,
                ),
              );
            },
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (imageMessage.name.isNotEmpty)
              Padding(
                padding: const EdgeInsets.only(
                  left: 8,
                  right: 8,
                  top: 8,
                  // bottom: 2,
                ),
                child: Text(
                  imageMessage.name,
                  style: const FigmaTextStyles().typography2Regular.copyWith(color: context.colors.black),
                ),
              ),
            Padding(padding: const EdgeInsets.all(8.0), child: _buildMessageFooter()),
          ],
        ),
      ],
    );
  }

  Widget _buildFileMessage(types.FileMessage fileMessage) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Icon(Icons.attachment),
              const SizedBox(width: 8),
              Expanded(child: Text(fileMessage.name, maxLines: 1, overflow: TextOverflow.ellipsis)),
            ],
          ),
          _buildMessageFooter(),
        ],
      ),
    );
  }

  Widget _buildMessageFooter() {
    final isViewed = message.metadata?['isViewed'] as bool? ?? false;

    return SizedBox(
      width: double.infinity,
      child: Align(
        alignment: Alignment.centerRight,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              DateFormat('HH:mm').format(DateTime.fromMillisecondsSinceEpoch(message.createdAt ?? 0)),
              style: TextStyle(fontSize: 11, color: Colors.grey[500]),
            ),
            if (isCurrentUser) ...[
              const SizedBox(width: 4),
              Icon(isViewed ? Icons.done_all : Icons.done, size: 14, color: isViewed ? primaryColor : Colors.grey[500]),
            ],
            if (message is types.ImageMessage && (message as types.ImageMessage).status == types.Status.sending) ...[
              const SizedBox(width: 4),
              SizedBox(
                width: 12,
                height: 12,
                child: CircularProgressIndicator(strokeWidth: 2, color: Colors.grey[500]),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
