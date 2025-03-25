import 'package:flutter/material.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:oyan/src/core/extensions/build_context_extension.dart';

import '../../../../../core/utils/constants/app_icons.dart';

class ReplyPreview extends StatelessWidget {
  final types.Message? repliedMessage;
  final VoidCallback onCancelReply;
  final Color accentColor;
  final Color borderColor;

  const ReplyPreview({
    super.key,
    this.repliedMessage,
    required this.onCancelReply,
    this.accentColor = const Color(0xFF2599A0),
    this.borderColor = const Color(0xFFE0E0E0),
  });

  @override
  Widget build(BuildContext context) {
    if (repliedMessage == null) return const SizedBox.shrink();

    final previewContent = _buildPreviewContent();

    return Container(
      decoration: BoxDecoration(border: Border(top: BorderSide(color: borderColor)), color: Colors.white),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(width: 4, height: 56, color: accentColor),
          if (previewContent.attachmentPreview != null)
            Padding(padding: const EdgeInsets.only(left: 12), child: previewContent.attachmentPreview),
          Expanded(
            child: _buildMessagePreview(
              previewContent.text,
              context,
              hasAttachment: previewContent.attachmentPreview != null,
            ),
          ),
          _buildCloseButton(),
        ],
      ),
    );
  }

  Widget _buildCloseButton() {
    return IconButton(
      icon: const Icon(Icons.close, size: 20),
      onPressed: onCancelReply,
      color: Colors.grey[600],
      padding: EdgeInsets.zero,
      constraints: const BoxConstraints(minWidth: 32, minHeight: 32),
    );
  }

  Widget _buildMessagePreview(String previewText, BuildContext context, {required bool hasAttachment}) {
    return Padding(
      padding: EdgeInsets.only(left: hasAttachment ? 0 : 12, right: 12, top: 8, bottom: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Icon(
                context.icons.add_square__square_remove_cross_buttons_add_plus_button___mathematics_math,
                size: 14,
                color: accentColor,
              ),
              const SizedBox(width: 4),
              Text(
                'Reply to ${repliedMessage?.author.firstName ?? ''}',
                style: TextStyle(fontSize: 13, color: accentColor, fontWeight: FontWeight.w500),
              ),
            ],
          ),
          const SizedBox(height: 4),
          Text(
            previewText,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontSize: 13, color: Colors.grey[800]),
          ),
        ],
      ),
    );
  }

  PreviewContent _buildPreviewContent() {
    if (repliedMessage is types.TextMessage) {
      return PreviewContent(text: (repliedMessage as types.TextMessage).text);
    }

    if (repliedMessage is types.ImageMessage) {
      final imageMessage = repliedMessage as types.ImageMessage;
      return PreviewContent(text: imageMessage.name, attachmentPreview: _buildImagePreview(imageMessage.uri));
    }

    if (repliedMessage is types.FileMessage) {
      final fileMessage = repliedMessage as types.FileMessage;
      return PreviewContent(text: fileMessage.name, attachmentPreview: _buildFilePreview());
    }

    return const PreviewContent(text: 'Message');
  }

  Widget _buildImagePreview(String uri) {
    return Container(
      width: 40,
      height: 40,
      margin: const EdgeInsets.only(right: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        image: DecorationImage(image: NetworkImage(uri), fit: BoxFit.cover),
      ),
    );
  }

  Widget _buildFilePreview() {
    return Container(
      width: 40,
      height: 40,
      margin: const EdgeInsets.only(right: 12),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(4), color: Colors.grey[200]),
      child: const Icon(Icons.insert_drive_file, color: Colors.grey),
    );
  }
}

class PreviewContent {
  final String text;
  final Widget? attachmentPreview;

  const PreviewContent({required this.text, this.attachmentPreview});
}
