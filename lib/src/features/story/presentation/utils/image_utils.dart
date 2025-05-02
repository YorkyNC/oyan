import 'package:flutter/material.dart';

Widget loadImageWithOverlay({
  required String url,
  required String fallbackAsset,
  required BoxFit fit,
  required Color overlayColor,
  required double overlayOpacity,
}) {
  return Stack(
    fit: StackFit.expand,
    children: [
      Image.network(
        url,
        fit: fit,
        errorBuilder: (_, __, ___) => Image.asset(fallbackAsset, fit: fit),
        loadingBuilder: (_, child, loadingProgress) {
          if (loadingProgress == null) return child;
          return const Center(child: CircularProgressIndicator());
        },
      ),
      Container(color: overlayColor.withOpacity(overlayOpacity)),
    ],
  );
}
