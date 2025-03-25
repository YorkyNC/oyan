import 'package:flutter_svg/svg.dart';
import 'package:oyan/src/app/imports.dart';
import 'package:oyan/src/core/extensions/build_context_extension.dart';
import 'package:oyan/src/features/camera/presentation/components/camera_event_modal.dart';

class CameraListSection extends StatefulWidget {
  const CameraListSection({super.key});

  @override
  State<CameraListSection> createState() => _CameraListSectionState();
}

class _CameraListSectionState extends State<CameraListSection> {
  final List<Map<String, dynamic>> sections = [
    {'title': 'Двор', 'subtitle': 'Этаж 1, 4 камеры, 0 событий', 'camerasCount': 4},
    {'title': 'Столовая', 'subtitle': 'Этаж 1, 2 камеры, 0 событий', 'camerasCount': 2},
    {'title': 'Коридор', 'subtitle': 'Этаж 2, 4 камеры, 0 событий', 'camerasCount': 4},
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children:
            sections.asMap().entries.map((entry) {
              final isLast = entry.key == sections.length - 1;
              return Column(
                children: [
                  _buildExpandableSection(
                    title: entry.value['title'],
                    subtitle: entry.value['subtitle'],
                    camerasCount: entry.value['camerasCount'],
                  ),
                  if (!isLast) const SizedBox(height: 8),
                ],
              );
            }).toList(),
      ),
    );
  }

  Widget _buildExpandableSection({required String title, required String subtitle, required int camerasCount}) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 100),
      child: Material(
        color: context.colors.white,
        borderRadius: BorderRadius.circular(8),
        child: ExpansionTile(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          collapsedShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          collapsedBackgroundColor: context.colors.white,
          backgroundColor: context.colors.white,
          initiallyExpanded: true,
          collapsedIconColor: context.colors.gray500,
          iconColor: context.colors.gray500,
          onExpansionChanged: (expanded) {
            setState(() {});
          },
          title: Text(title, style: context.typography.textmdSemibold.copyWith(color: context.colors.black)),
          subtitle: Text(subtitle, style: context.typography.textsmRegular.copyWith(color: context.colors.gray500)),
          children: _buildCameraItems(camerasCount),
        ),
      ),
    );
  }

  List<Widget> _buildCameraItems(int count) {
    return List.generate(count, (index) => index + 1).map((index) {
      return Material(
        color: context.colors.white,
        child: ListTile(
          leading: SvgPicture.asset(context.assetImages.cameraFilledRed),
          title: Text('Камера $index', style: context.typography.textmdSemibold.copyWith(color: context.colors.black)),
          subtitle: Text('0 событий', style: context.typography.textsmRegular.copyWith(color: context.colors.gray500)),
          trailing: Icon(Icons.chevron_right, color: context.colors.gray500),
          onTap: () {
            showModalBottomSheet(
              backgroundColor: context.colors.white,
              showDragHandle: true,
              useSafeArea: true,
              useRootNavigator: true,
              context: context,
              builder: (context) {
                return const CameraEventModal();
              },
            );
          },
        ),
      );
    }).toList();
  }
}
