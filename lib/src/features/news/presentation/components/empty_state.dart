import 'package:flutter/material.dart';
import 'package:oyan/src/core/extensions/build_context_extension.dart';
import 'package:oyan/src/core/theme/typography.dart';

class EmptyState extends StatelessWidget {
  const EmptyState({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 250,
      decoration: BoxDecoration(color: context.colors.gray100, borderRadius: BorderRadius.circular(8)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(16)),
            child: const Padding(
              padding: EdgeInsets.all(13.0),
              child: Icon(Icons.add_photo_alternate, color: Colors.grey),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            context.loc.addMediaFile,
            style: FigmaTextStyles().typography2Medium.copyWith(color: context.colors.gray700),
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
