import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:oyan/main.dart';
import 'package:oyan/src/core/extensions/build_context_extension.dart';

Future<T?> showBasePopup<T>(
  BuildContext context, {
  Color? backgroundColor,
  Widget? title,
  required Widget Function(BuildContext) builder,
  bool useRootNavigator = true,
}) {
  return showModalBottomSheet<T>(
    isScrollControlled: true,
    useRootNavigator: useRootNavigator,
    context: context,
    backgroundColor: Colors.transparent,
    barrierColor: Colors.black.withAlpha(125),
    builder:
        (context) => Stack(
          fit: StackFit.passthrough,
          children: [
            GestureDetector(onTap: context.pop),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                decoration: BoxDecoration(
                  color: backgroundColor ?? context.colors.white,
                  borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Material(
                  type: MaterialType.transparency,
                  child: SafeArea(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 20, 0, 12),
                          child: Row(
                            children: [
                              Expanded(child: title ?? const SizedBox()),
                              InkWell(
                                customBorder: const CircleBorder(),
                                onTap: context.pop,
                                child: SvgPicture.asset(context.assetImages.cross),
                              ),
                            ],
                          ),
                        ),
                        builder(context),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
  );
}
