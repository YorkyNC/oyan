import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:oyan/src/core/extensions/build_context_extension.dart';
import 'package:oyan/src/features/camera/presentation/components/custom_app_bar_button.dart';
import 'package:oyan/src/features/camera/presentation/components/filtering_modal.dart';
import 'package:oyan/src/features/camera/presentation/components/sorting_modal.dart';

class CameraAppBar extends StatefulWidget implements PreferredSizeWidget {
  const CameraAppBar({super.key});

  @override
  State<CameraAppBar> createState() => _CameraAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(60);
}

class _CameraAppBarState extends State<CameraAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.colors.white,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
          child: Row(
            children: [
              Expanded(
                child: Row(
                  children: [
                    CustomAppBarButton(
                      onTap: () {
                        context.pop();
                      },
                      icon: context.icons.chevron_left,
                    ),
                    const SizedBox(width: 12),
                    Text(
                      context.loc.cameras,
                      style: context.typography.typography4Bold.copyWith(color: context.colors.gray800),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  CustomAppBarButton(
                    icon: context.icons.filter_2__funnel_filter_angle_oil,
                    onTap: () {
                      showModalBottomSheet(
                        context: context,
                        showDragHandle: true,
                        useRootNavigator: true,
                        backgroundColor: Colors.white,
                        builder: (context) {
                          return const FilteringModal();
                        },
                      );
                    },
                  ),
                  const SizedBox(width: 12),
                  CustomAppBarButton(
                    icon: context.icons.sort_descending,
                    onTap: () {
                      showModalBottomSheet(
                        showDragHandle: true,
                        context: context,
                        useRootNavigator: true,
                        backgroundColor: Colors.white,
                        builder: (context) {
                          return SortingModal(onSortingChanged: (onSortingChanged) {});
                        },
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
