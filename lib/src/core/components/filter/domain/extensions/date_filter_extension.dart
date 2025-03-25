import 'package:oyan/src/core/components/filter/domain/models/date_filter.dart';
import 'package:oyan/src/core/components/filter/domain/models/events_filter.dart';

extension EventsFilterExtension on EventsFilter {
  bool get isDefault => date is! DateFilterDay || eventTypes.isNotEmpty;
}
