import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oyan/src/app/imports.dart';
import 'package:oyan/src/core/components/filter/domain/extensions/date_filter_extension.dart';
import 'package:oyan/src/core/extensions/build_context_extension.dart';
import 'package:oyan/src/features/camera/presentation/components/custom_app_bar_button.dart';
import 'package:oyan/src/features/events/domain/models/enums/events_sort.dart';
import 'package:oyan/src/features/events/presentation/bloc/events_bloc.dart';
import 'package:oyan/src/features/events/presentation/bloc/events_event.dart';
import 'package:oyan/src/features/events/presentation/bloc/events_state.dart';
import 'package:oyan/src/features/events/presentation/popups/events_filter_popup.dart';
import 'package:oyan/src/features/events/presentation/popups/events_sort_popup.dart';

class EventsAppBar extends StatelessWidget implements PreferredSizeWidget {
  const EventsAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(120);

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: context.colors.white,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
          child: BlocBuilder<EventsBloc, EventsState>(
            buildWhen: (prev, curr) => prev.filter != curr.filter || prev.sort != curr.sort,
            builder: (context, state) {
              return Row(
                children: [
                  CustomAppBarButton(onTap: context.pop, icon: context.icons.chevron_left),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Text(
                      context.loc.allEvents,
                      style: context.typography.typography4Bold.copyWith(color: context.colors.gray800),
                    ),
                  ),
                  CustomAppBarButton(
                    selected: state.filter.isDefault,
                    icon: context.icons.filter_2__funnel_filter_angle_oil,
                    onTap: () => showEventsFilterPopup(context),
                  ),
                  const SizedBox(width: 12),
                  CustomAppBarButton(
                    selected: state.sort != EventsSort.urgent,
                    icon: context.icons.sort_descending,
                    onTap:
                        () => showEventsSortPopup(
                          context,
                          initialSort: state.sort,
                          onSortUpdated: (sort) => context.read<EventsBloc>().add(EventsSortUpdated(sort)),
                        ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
