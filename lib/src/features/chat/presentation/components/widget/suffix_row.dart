import 'package:flutter/cupertino.dart';
import 'package:oyan/src/features/chat/presentation/components/widget/clear_button.dart';
import 'package:oyan/src/features/chat/presentation/components/widget/submit_button.dart';

class SuffixRow extends StatelessWidget {
  final TextEditingController controller;
  final VoidCallback onClear;
  final VoidCallback onSubmit;

  const SuffixRow({Key? key, required this.controller, required this.onClear, required this.onSubmit})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [if (controller.text.isNotEmpty) ClearButton(onClear: onClear), SubmitButton(onSubmit: onSubmit)],
    );
  }
}
