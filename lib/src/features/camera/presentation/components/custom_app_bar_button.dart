import 'package:flutter/material.dart';
import 'package:oyan/src/core/extensions/build_context_extension.dart';

class CustomAppBarButton extends StatelessWidget {
  final VoidCallback onTap;
  final bool selected;
  final IconData icon;

  const CustomAppBarButton({super.key, required this.onTap, required this.icon, this.selected = false});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: selected ? context.colors.brand400 : context.colors.white,
      shape: CircleBorder(side: selected ? BorderSide.none : BorderSide(color: context.colors.gray300, width: 1)),
      elevation: 1,
      shadowColor: const Color(0xFF0A0D12).withOpacity(0.05),
      child: InkWell(
        customBorder: const CircleBorder(),
        onTap: onTap,
        child: Padding(padding: const EdgeInsets.all(12), child: Icon(icon, size: 20, color: context.colors.black)),
      ),
    );
  }
}
