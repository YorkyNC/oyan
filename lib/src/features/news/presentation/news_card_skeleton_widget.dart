import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class NewsCardSkeletonWidget extends StatelessWidget {
  const NewsCardSkeletonWidget({super.key, this.width, this.height});
  final double? width, height;
  @override
  Widget build(BuildContext context) {
    return Shimmer(
      gradient: LinearGradient(
        colors: [Colors.white, Colors.grey.shade300],
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(4),
        ),
        child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.04), borderRadius: const BorderRadius.all(Radius.circular(8))),
        ),
      ),
    );
  }
}
