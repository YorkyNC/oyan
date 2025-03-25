import 'package:flutter/cupertino.dart';
import 'package:oyan/src/core/extensions/build_context_extension.dart';

class ClearButton extends StatelessWidget {
  final VoidCallback onClear;

  const ClearButton({Key? key, required this.onClear}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: const EdgeInsets.all(0),
      onPressed: onClear,
      child: Icon(
        context.icons.add_square__square_remove_cross_buttons_add_plus_button___mathematics_math,
        color: const Color(0xFF64748B),
        size: 24,
      ),
    );
  }
}
