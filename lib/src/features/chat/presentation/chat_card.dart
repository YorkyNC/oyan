import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart';
import 'package:oyan/src/core/extensions/build_context_extension.dart';

import '../../../core/router/router.dart';
import '../../../core/theme/colors.dart';
import '../../../core/theme/typography.dart';
import '../data/models/chat_entity.dart';

class ChatCard extends StatelessWidget {
  const ChatCard({
    super.key,
    required this.chat,
    this.onTap,
    this.avatarRadius = 24.0,
    this.contentPadding = const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
  });

  final ChatEntity chat;
  final VoidCallback? onTap;
  final double avatarRadius;
  final EdgeInsets contentPadding;

  // Format time considering the date context
  String _formatTimeContext(DateTime date) {
    final now = DateTime.now();

    // If same day, show time
    if (date.eqvDay(now)) {
      return _formatTime(date);
    }

    // If yesterday, show "yesterday"
    if (date.eqvDay(now.subtract(const Duration(days: 1)))) {
      return 'вчера';
    }

    // If within the last week, show day name
    if (now.difference(date).inDays < 7) {
      return _getDayName(date);
    }

    // Otherwise show date
    return _formatDate(date);
  }

  String _formatTime(DateTime date) {
    return '${date.hour.toString().padLeft(2, '0')}:${date.minute.toString().padLeft(2, '0')}';
  }

  String _formatDate(DateTime date) {
    return '${date.day.toString().padLeft(2, '0')}.${date.month.toString().padLeft(2, '0')}';
  }

  String _getDayName(DateTime date) {
    const days = ['Пн', 'Вт', 'Ср', 'Чт', 'Пт', 'Сб', 'Вс'];
    return days[date.weekday - 1];
  }

  String _getInitials(String? fullName) {
    if (fullName == null || fullName.isEmpty) return '';

    final parts = fullName.split(' ');
    if (parts.isEmpty) return '';

    final firstPart = parts.first;
    if (firstPart.length < 2) return firstPart;

    return firstPart.substring(0, 2).toUpperCase();
  }

  Widget _buildAvatar(BuildContext context) {
    final defaultAvatarColor = context.colors.gray100;
    final initialsStyle = const FigmaTextStyles().typography2Medium.copyWith(color: context.colors.gray500);

    if (chat.type == 'parent') {
      return CircleAvatar(
        radius: avatarRadius,
        backgroundColor: defaultAvatarColor,
        child: Text(_getInitials(chat.title), style: initialsStyle),
      );
    }

    return Container(
      width: avatarRadius * 2,
      height: avatarRadius * 2,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: chat.profilePictureId != null ? null : defaultAvatarColor,
        image:
            chat.profilePictureId != null
                ? DecorationImage(image: NetworkImage(chat.profilePictureId!.url!), fit: BoxFit.cover)
                : null,
      ),
      child: chat.profilePictureId == null ? Center(child: Text(_getInitials(chat.title), style: initialsStyle)) : null,
    );
  }

  Widget _buildUnreadBadge(BuildContext context) {
    if (chat.unreadCount! <= 0) return const SizedBox.shrink();

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
      decoration: BoxDecoration(color: context.colors.gray400, borderRadius: BorderRadius.circular(12)),
      child: Text(
        chat.unreadCount.toString(),
        style: const FigmaTextStyles().typography2Regular.copyWith(color: context.colors.white),
      ),
    );
  }

  Widget _buildLastMessage(BuildContext context) {
    if (chat.lastMessage == null) return const SizedBox.shrink();

    final author = chat.lastMessage!.author;
    final authorName = author != null ? '${author.firstName} ${author.lastName}: ' : '';

    return Text(
      '$authorName${chat.lastMessage!.text}',
      style: const FigmaTextStyles().typography2Regular.copyWith(color: context.colors.gray600),
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: contentPadding,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildAvatar(context),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          chat.title ??
                              '${chat.members!.firstWhere((element) => element.userId != getCurrentRole().sub).firstName} ${chat.members!.firstWhere((element) => element.userId != getCurrentRole().sub).lastName}',
                          style: const FigmaTextStyles().typography2Medium.copyWith(color: context.colors.black),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      const SizedBox(width: 8),
                      Text(
                        _formatTimeContext(chat.lastMessage?.createdAt ?? chat.latestActivity!),
                        style: const FigmaTextStyles().typography2Regular.copyWith(color: context.colors.gray600),
                      ),
                    ],
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      Expanded(child: _buildLastMessage(context)),
                      if (chat.unreadCount! > 0) ...[const SizedBox(width: 8), _buildUnreadBadge(context)],
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
