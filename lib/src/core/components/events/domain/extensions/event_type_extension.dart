import 'package:flutter/cupertino.dart';
import 'package:oyan/src/core/components/events/domain/models/enums/event_type.dart';
import 'package:oyan/src/core/extensions/build_context_extension.dart';

extension EventTypeExtension on EventType {
  String getLocalizedText(BuildContext context) {
    return switch (this) {
      EventType.conflict => context.loc.conflicts,
      EventType.smoking => context.loc.smoking,
      EventType.cheating => context.loc.cheating,
    };
  }

  String getFilledAssetPath(BuildContext context) {
    return switch (this) {
      EventType.conflict => context.assetImages.conflictsFilled,
      EventType.smoking => context.assetImages.smokingFilled,
      EventType.cheating => context.assetImages.cheatingFilled,
    };
  }
}
