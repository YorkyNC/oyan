import 'package:flutter/material.dart';
import 'package:oyan/src/core/extensions/build_context_extension.dart';
import 'package:oyan/src/features/camera/presentation/components/camera_app_bar.dart';
import 'package:oyan/src/features/camera/presentation/components/camera_list_section.dart';
import 'package:oyan/src/features/class_events/presentation/components/custom_search_bar.dart';

class CameraPage extends StatelessWidget {
  const CameraPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.gray100,
      appBar: const CameraAppBar(),
      body: Column(
        children: [
          Container(
            color: context.colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 8),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      _buildFilterChip(context, 'Все', true),
                      _buildFilterChip(context, 'Подвал', false),
                      _buildFilterChip(context, 'Этаж 1', true),
                      _buildFilterChip(context, 'Этаж 2', false),
                      _buildFilterChip(context, 'Этаж 3', false),
                      _buildFilterChip(context, 'Этаж 4', false),
                    ],
                  ),
                ),
                CustomSearchBar(hintText: context.loc.search),
              ],
            ),
          ),
          const SizedBox(height: 8),
          const CameraListSection(),
        ],
      ),
    );
  }

  Widget _buildFilterChip(BuildContext context, String label, bool isSelected) {
    return Container(
      margin: const EdgeInsets.only(right: 8),
      child: FilterChip(
        selectedColor: Colors.white,
        showCheckmark: false,
        label: Text(label),
        selected: isSelected,
        onSelected: (bool selected) {},
        backgroundColor: context.colors.gray100,
        labelStyle: context.typography.typography2Regular.copyWith(
          color: isSelected ? context.colors.purple500 : context.colors.black,
        ),
        side: BorderSide(color: isSelected ? context.colors.purple500 : Colors.transparent),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),
    );
  }
}
