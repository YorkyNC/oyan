import 'package:oyan/src/app/imports.dart';
import 'package:oyan/src/core/extensions/build_context_extension.dart';
import 'package:oyan/src/features/camera/presentation/components/custom_app_bar_button.dart';

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
                      context.loc.classes,
                      style: context.typography.typography4Bold.copyWith(color: context.colors.gray800),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
