import 'package:flutter/cupertino.dart';
import 'package:oyan/src/core/extensions/build_context_extension.dart';
import 'package:oyan/src/core/theme/typography.dart';

class AddPostsButtonWidget extends StatelessWidget {
  final String title;
  const AddPostsButtonWidget({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(color: context.colors.gray50, borderRadius: BorderRadius.circular(8)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(title, style: const FigmaTextStyles().typography2Medium.copyWith(color: context.colors.black)),
          ),
          Icon(
            context.icons.add_square__square_remove_cross_buttons_add_plus_button___mathematics_math,
            size: 24,
            color: context.colors.gray500,
          ),
        ],
      ),
    );
  }
}
