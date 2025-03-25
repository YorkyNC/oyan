import 'package:intl/intl.dart';

extension DateTimeExtension on DateTime {
  String get formatTime => DateFormat("HH:mm").format(this);
  String get formatDateTime => DateFormat('dd.MM.yyyy HH:mm').format(this);
  String get formatDate => DateFormat('dd.MM.yyyy').format(this);
  String get formatDateFull => DateFormat("dd MMMM, y").format(this);

  static String formatDatePeriod(DateTime startDate, DateTime? endDate) {
    if (endDate != null) {
      return "${startDate.formatDate}-${endDate.formatDate}";
    }
    return startDate.formatDate;
  }

  static String formatDatePeriodFull(DateTime startDate, DateTime? endDate) {
    if (endDate != null) {
      return "${startDate.formatDateFull} - ${endDate.formatDateFull}";
    }
    return startDate.formatDateFull;
  }
}