// File: lib/src/presentation/pages/home/home_page.dart

import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  final String imageUrl;
  final double? height;
  final double? width;

  const ImageWidget({
    super.key,
    required this.imageUrl,
    this.height,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    if (imageUrl.startsWith('http')) {
      // Handle network image
      return Image(
        image: NetworkImage(imageUrl),
        height: height,
        width: width,
        fit: BoxFit.cover,
        errorBuilder: (context, error, stackTrace) {
          return Container(
            height: height,
            width: width,
            color: Colors.grey[300],
            child: Center(
              child: Icon(
                Icons.image_not_supported,
                color: Colors.grey[600],
              ),
            ),
          );
        },
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) {
            return child;
          }
          return Container(
            height: height,
            width: width,
            color: Colors.grey[300],
            child: Center(
              child: CircularProgressIndicator(
                value: loadingProgress.expectedTotalBytes != null
                    ? loadingProgress.cumulativeBytesLoaded / loadingProgress.expectedTotalBytes!
                    : null,
                valueColor: AlwaysStoppedAnimation<Color>(Colors.grey[600]!),
              ),
            ),
          );
        },
      );
    } else {
      // Handle asset image
      return Image.asset(
        imageUrl,
        height: height,
        width: width,
        fit: BoxFit.cover,
      );
    }
  }
}
