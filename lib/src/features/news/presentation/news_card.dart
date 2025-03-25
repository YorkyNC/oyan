// import 'dart:ui';

// import 'package:flutter/gestures.dart';
// import 'package:flutter/material.dart';
// import 'package:oyan/core/extensions/build_context_extension.dart';
// import 'package:oyan/src/core/theme/colors.dart';
// import 'package:oyan/src/core/theme/typography.dart';
// import 'package:oyan/src/core/utils/constants/app_icons.dart';
// import 'package:oyan/src/features/attachment/domain/entities/attachment_entity.dart';
// import 'package:oyan/src/features/news/presentation/components/tags_sheet.dart';
// import 'package:photo_view/photo_view.dart';
// import 'package:photo_view/photo_view_gallery.dart';
// import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// class NewsCard extends StatefulWidget {
//   const NewsCard({
//     super.key,
//     required this.images,
//     required this.title,
//     required this.date,
//     required this.subtext,
//     required this.index,
//     this.onButtonPressed,
//     this.tag,
//   });

//   final List<AttachmentEntity?> images;
//   final String title;
//   final String date;
//   final String subtext;

//   final int index;
//   final String? tag;
//   final VoidCallback? onButtonPressed;

//   @override
//   State<NewsCard> createState() => _NewsCardState();
// }

// class _NewsCardState extends State<NewsCard> with AutomaticKeepAliveClientMixin {
//   final PageController _pageController = PageController();
//   bool _isExpanded = false;
//   int _currentImageIndex = 0;

//   @override
//   bool get wantKeepAlive => true;

//   void _toggleExpanded() {
//     setState(() {
//       _isExpanded = !_isExpanded;
//     });
//   }

//   void _showPhotoViewGallery(BuildContext context, int initialIndex) {
//     int currentIndex = initialIndex;

//     showDialog(
//       useSafeArea: false,
//       context: context,
//       barrierColor: Colors.transparent,
//       builder: (context) => StatefulBuilder(
//         builder: (context, setState) => Stack(
//           children: [
//             BackdropFilter(
//               filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
//               child: Container(
//                 color: Colors.black.withOpacity(0.5),
//               ),
//             ),
//             // Photo Gallery Dialog
//             Dialog.fullscreen(
//               backgroundColor: Colors.transparent,
//               child: Stack(
//                 children: [
//                   PhotoViewGallery.builder(
//                     scrollPhysics: const BouncingScrollPhysics(),
//                     builder: (BuildContext context, int index) {
//                       return PhotoViewGalleryPageOptions(
//                         imageProvider: NetworkImage(widget.images[index]?.url ?? ''),
//                         initialScale: PhotoViewComputedScale.contained,
//                         minScale: PhotoViewComputedScale.contained,
//                         maxScale: PhotoViewComputedScale.covered * 2,
//                       );
//                     },
//                     itemCount: widget.images.length,
//                     loadingBuilder: (context, event) => const Center(
//                       child: CircularProgressIndicator(
//                         valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
//                       ),
//                     ),
//                     pageController: PageController(initialPage: initialIndex),
//                     onPageChanged: (index) {
//                       setState(() {
//                         currentIndex = index;
//                       });
//                     },
//                     backgroundDecoration: const BoxDecoration(
//                       color: Colors.transparent,
//                     ),
//                   ),
//                   // Close button
//                   SafeArea(
//                     child: Padding(
//                       padding: const EdgeInsets.all(16.0),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.end,
//                         children: [
//                           Container(
//                             decoration: BoxDecoration(
//                               color: Colors.black.withOpacity(0.5),
//                               shape: BoxShape.circle,
//                             ),
//                             child: IconButton(
//                               icon: const Icon(AppIcons.close, color: Colors.white, size: 24),
//                               onPressed: () => Navigator.of(context).pop(),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                   // Image counter
//                   if (widget.images.length > 1)
//                     Positioned(
//                       bottom: 16,
//                       left: 0,
//                       right: 0,
//                       child: Center(
//                         child: Container(
//                           padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
//                           decoration: BoxDecoration(
//                             color: Colors.black.withOpacity(0.5),
//                             borderRadius: BorderRadius.circular(20),
//                           ),
//                           child: Text(
//                             '${currentIndex + 1}/${widget.images.length}',
//                             style: const TextStyle(
//                               color: Colors.white,
//                               fontSize: 16,
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildImagePlaceholder() {
//     return Container(
//       height: 200,
//       width: double.infinity,
//       decoration: BoxDecoration(
//         color: const Color(0xFFE9F0F6),
//         borderRadius: BorderRadius.circular(8),
//       ),
//       child: const Center(
//         child: CircularProgressIndicator(
//           strokeWidth: 2,
//           valueColor: AlwaysStoppedAnimation<Color>(Color(0xFF64748B)),
//         ),
//       ),
//     );
//   }

//   Widget _buildErrorWidget() {
//     return Container(
//       decoration: BoxDecoration(
//         color: const Color(0xFFE9F0F6),
//         borderRadius: BorderRadius.circular(8),
//       ),
//       child: const Center(
//         child: Icon(
//           Icons.image_not_supported_rounded,
//           color: Colors.black54,
//           size: 32,
//         ),
//       ),
//     );
//   }

//   Widget _buildImage(int index) {
//     if (widget.images[index]?.url == null) {
//       return _buildErrorWidget();
//     }

//     return GestureDetector(
//       onTap: () => _showPhotoViewGallery(context, index),
//       child: Stack(
//         fit: StackFit.expand,
//         children: [
//           Image.network(
//             widget.images[index]!.url!,
//             fit: BoxFit.cover,
//             frameBuilder: (context, child, frame, wasSynchronouslyLoaded) {
//               if (wasSynchronouslyLoaded || frame != null) {
//                 return child;
//               }
//               return AnimatedSwitcher(
//                 duration: const Duration(milliseconds: 300),
//                 child: frame == null ? _buildImagePlaceholder() : child,
//               );
//             },
//             errorBuilder: (context, error, stackTrace) => _buildErrorWidget(),
//           ),
//         ],
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     super.build(context);

//     return Container(
//       padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
//       decoration: const BoxDecoration(
//         border: Border.symmetric(
//           horizontal: BorderSide(
//             color: Color(0xFFE2E8F0),
//             width: 0.25,
//           ),
//         ),
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           if (widget.images.isNotEmpty) ...[
//             Text(
//               widget.title,
//               style: const FigmaTextStyles().typography3Medium.copyWith(
//                     color: context.colors.black,
//                   ),
//             ),
//             const SizedBox(height: 4),
//             Text(
//               widget.date,
//               style: const FigmaTextStyles().typography1Regular.copyWith(
//                     color: context.colors.gray600,
//                   ),
//             ),
//             const SizedBox(height: 8),
//             ClipRRect(
//               borderRadius: BorderRadius.circular(8),
//               child: SizedBox(
//                 height: 250,
//                 child: PageView.builder(
//                   controller: _pageController,
//                   onPageChanged: (index) {
//                     setState(() {
//                       _currentImageIndex = index;
//                     });
//                   },
//                   scrollDirection: Axis.horizontal,
//                   itemCount: widget.images.length,
//                   itemBuilder: (context, index) => _buildImage(index),
//                 ),
//               ),
//             ),
//             if (widget.images.length > 1) ...[
//               const SizedBox(height: 15),
//               Center(
//                 child: SmoothPageIndicator(
//                   controller: _pageController,
//                   count: widget.images.length,
//                   effect: const ExpandingDotsEffect(
//                     expansionFactor: 2.5,
//                     dotHeight: 8.0,
//                     dotWidth: 8.0,
//                     spacing: 8.0,
//                     activeDotColor: Color(0xFF64748B),
//                     dotColor: Color(0xFFCBD5E1),
//                   ),
//                 ),
//               ),
//             ],
//           ] else ...[
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Expanded(
//                   child: Text(
//                     widget.title,
//                     style: const FigmaTextStyles().typography3Medium.copyWith(
//                           color: context.colors.black,
//                         ),
//                   ),
//                 ),
//                 const SizedBox(width: 12),
//                 Text(
//                   widget.date,
//                   style: const FigmaTextStyles().typography1Regular.copyWith(
//                         color: context.colors.gray600,
//                       ),
//                 ),
//               ],
//             ),
//           ],
//           const SizedBox(height: 8),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 8.0),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 GestureDetector(
//                   onTap: _toggleExpanded,
//                   child: _isExpanded || widget.subtext.length <= 50
//                       ? Text(
//                           widget.subtext,
//                           style: const FigmaTextStyles()
//                               .typography2Regular
//                               .copyWith(color: context.colors.black),
//                         )
//                       : RichText(
//                           text: TextSpan(
//                             text: widget.subtext.length > 50
//                                 ? '${widget.subtext.substring(0, 50)}... '
//                                 : widget.subtext,
//                             style: const FigmaTextStyles()
//                                 .typography2Regular
//                                 .copyWith(color: context.colors.black),
//                             children: [
//                               TextSpan(
//                                 text: context.loc.more,
//                                 style: const FigmaTextStyles()
//                                     .typography2Regular
//                                     .copyWith(color: context.colors.gray600),
//                                 recognizer: TapGestureRecognizer()..onTap = _toggleExpanded,
//                               ),
//                             ],
//                           ),
//                         ),
//                 ),
//               ],
//             ),
//           ),
//           if (widget.tag != null) ...[
//             const SizedBox(height: 8),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 8),
//               child: Wrap(
//                 spacing: 8,
//                 runSpacing: 8,
//                 children: widget.tag!.split(', ').map((tag) {
//                   final colors = TagColor.getRandomColors();
//                   return Container(
//                     decoration: BoxDecoration(
//                       color: colors.background,
//                       borderRadius: BorderRadius.circular(8),
//                     ),
//                     padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
//                     child: Text(
//                       tag,
//                       style:
//                           const FigmaTextStyles().typography1Regular.copyWith(color: colors.text),
//                     ),
//                   );
//                 }).toList(),
//               ),
//             ),
//           ],
//         ],
//       ),
//     );
//   }

//   @override
//   void dispose() {
//     _pageController.dispose();
//     super.dispose();
//   }
// }
