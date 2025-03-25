import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:oyan/src/core/components/filter/domain/models/date_filter.dart';
import 'package:oyan/src/core/components/filter/presentation/widgets/date_filter_view.dart';
import 'package:oyan/src/core/extensions/build_context_extension.dart';
import 'package:oyan/src/core/widgets/popups/base_popup.dart';

Future<void> showDateFilterPopup(
  BuildContext context, {
  required DateFilter dateFilter,
  required String title,
  void Function(DateFilter)? onSelected,
}) {
  return showBasePopup(
    context,
    title: Text(title, style: context.typography.typography3SemiBold.copyWith(color: context.colors.black)),
    builder:
        (context) => DateFilterView(
          dateFilter: dateFilter,
          onSelected: (dateFilter) {
            onSelected?.call(dateFilter);
            context.pop();
          },
        ),
  );
}
