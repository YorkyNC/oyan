import 'package:flutter/cupertino.dart';
import 'package:oyan/src/core/extensions/build_context_extension.dart';

import '../../../../core/theme/colors.dart';
import '../../../../core/theme/typography.dart';

class CustomTextInput extends StatelessWidget {
  final String label;
  final TextEditingController controller;

  const CustomTextInput({Key? key, required this.label, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoTextField(
      controller: controller,
      placeholder: label,
      maxLines: null,
      placeholderStyle: const FigmaTextStyles().typography2Regular,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(color: CupertinoColors.white, borderRadius: BorderRadius.circular(8)),
    );
  }
}
