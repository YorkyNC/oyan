import 'package:flutter_svg/flutter_svg.dart';
import 'package:oyan/src/app/imports.dart';
import 'package:oyan/src/core/components/events/domain/models/enums/event_type.dart';
import 'package:oyan/src/core/components/events/domain/models/event_entity.dart';
import 'package:oyan/src/core/extensions/build_context_extension.dart';
import 'package:oyan/src/core/extensions/date_time_extension.dart';

class ReviewEventTile extends StatelessWidget {
  const ReviewEventTile({super.key, required this.event, this.onTap});

  final VoidCallback? onTap;
  final EventEntity event;

  Text _getExpirationText(BuildContext context) {
    final timeLeft = event.expiresAt.difference(DateTime.now());
    final textStyle = context.typography.typography1Medium;
    switch (timeLeft.inSeconds) {
      case > 21600:
        return Text(context.loc.hours(timeLeft.inHours), style: textStyle.copyWith(color: context.colors.blue500));
      case > 3600:
        return Text(context.loc.hours(timeLeft.inHours), style: textStyle.copyWith(color: context.colors.warning500));
      case > 0:
        return Text(context.loc.minutes(timeLeft.inMinutes), style: textStyle.copyWith(color: context.colors.error500));
      default:
        return Text(event.expiresAt.formatDateTime, style: textStyle.copyWith(color: context.colors.black));
    }
  }

  String _getIcon(BuildContext context) {
    return switch (event.eventType) {
      EventType.conflict => context.assetImages.conflictsFilled,
      EventType.smoking => context.assetImages.smokingFilled,
      EventType.cheating => context.assetImages.cheatingFilled,
    };
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Row(
          children: [
            SvgPicture.asset(_getIcon(context)),
            const SizedBox(width: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  context.loc.conflict,
                  style: context.typography.typography2SemiBold.copyWith(color: context.colors.black),
                ),
                const SizedBox(height: 4),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: event.createdAt.formatTime,
                        style: context.typography.typography1Regular.copyWith(color: context.colors.gray500),
                      ),
                      WidgetSpan(
                        child: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 4, vertical: 6),
                          width: 4,
                          height: 4,
                          decoration: BoxDecoration(color: context.colors.gray400, shape: BoxShape.circle),
                        ),
                        style: context.typography.typography1Regular.copyWith(color: context.colors.gray600),
                      ),
                      TextSpan(
                        text: event.location,
                        style: context.typography.typography1Regular.copyWith(color: context.colors.gray500),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Spacer(),
            if (event.eventType == EventType.conflict)
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    event.expiresAt.isBefore(DateTime.now()) ? context.loc.timeOut : context.loc.left,
                    style: context.typography.typography1Regular.copyWith(color: context.colors.gray500),
                  ),
                  const SizedBox(height: 4),
                  _getExpirationText(context),
                ],
              ),
            const SizedBox(width: 12),
            SvgPicture.asset(context.assetImages.chevronRight),
          ],
        ),
      ),
    );
  }
}
