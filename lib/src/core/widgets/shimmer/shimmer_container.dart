import 'package:flutter/material.dart';
import 'package:oyan/src/core/extensions/build_context_extension.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerContainer extends StatelessWidget {
  final double width;
  final double height;
  final bool? isEight;

  const ShimmerContainer({required this.width, required this.height, super.key, this.isEight});

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    return Shimmer(
      gradient: colors.gradientGray80060090deg,
      direction: ShimmerDirection.ltr,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: colors.gray600.withOpacity(0.2),
          // borderRadius: isEight != null ? BorderRadius.circular(8) : BorderRadius.circular(12),
        ),
        child: const SizedBox(),
      ),
    );
  }
}
