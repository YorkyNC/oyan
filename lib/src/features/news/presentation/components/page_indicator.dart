import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PageIndicator extends StatelessWidget {
  const PageIndicator({
    super.key,
    required List<XFile> selectedImages,
    required List<XFile> selectedFiles,
    required PageController pageController,
  })  : _selectedImages = selectedImages,
        _selectedFiles = selectedFiles,
        _pageController = pageController;

  final List<XFile> _selectedImages;
  final List<XFile> _selectedFiles;
  final PageController _pageController;

  @override
  Widget build(BuildContext context) {
    final itemCount = _selectedImages.length + _selectedFiles.length;
    return Center(
      child: SmoothPageIndicator(
        controller: _pageController,
        count: itemCount,
        effect: const ExpandingDotsEffect(
          expansionFactor: 2.5,
          dotHeight: 8.0,
          dotWidth: 8.0,
          spacing: 8.0,
          activeDotColor: Color(0xFF64748B),
          dotColor: Color(0xFFCBD5E1),
        ),
      ),
    );
  }
}
