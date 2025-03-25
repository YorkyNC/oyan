import 'package:flutter/material.dart';
import 'package:oyan/src/features/news/presentation/news_card_skeleton_widget.dart';

class NewsCardSkeleton extends StatelessWidget {
  const NewsCardSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 20),
        SizedBox(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              NewsCardSkeletonWidget(height: 20, width: MediaQuery.of(context).size.width * 0.45),
              const SizedBox(height: 4),
              NewsCardSkeletonWidget(height: 17, width: MediaQuery.of(context).size.width * 0.25),
            ],
          ),
        ),
        const SizedBox(height: 8),
        NewsCardSkeletonWidget(height: 250, width: MediaQuery.of(context).size.width),
        const SizedBox(height: 8),
        Center(child: NewsCardSkeletonWidget(height: 7, width: MediaQuery.of(context).size.width * .1)),
        const SizedBox(height: 8),
        NewsCardSkeletonWidget(height: 29, width: MediaQuery.of(context).size.width * 0.6),
        const SizedBox(height: 4),
        NewsCardSkeletonWidget(height: 29, width: MediaQuery.of(context).size.width * 0.2),
      ],
    );
  }
}
