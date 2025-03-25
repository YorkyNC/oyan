import 'package:flutter/cupertino.dart';
import 'package:oyan/src/core/extensions/build_context_extension.dart';
import 'package:oyan/src/core/utils/constants/app_icons.dart';

class SubmitButton extends StatelessWidget {
  final VoidCallback onSubmit;

  const SubmitButton({Key? key, required this.onSubmit}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: const EdgeInsets.all(0),
      onPressed: onSubmit,
      child: Icon(
        context.icons.add_square__square_remove_cross_buttons_add_plus_button___mathematics_math,
        color: const Color(0xFF64748B),
        size: 24,
      ),
    );
  }
}
