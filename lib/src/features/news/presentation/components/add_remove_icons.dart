import 'package:flutter/material.dart';
import 'package:oyan/src/core/extensions/build_context_extension.dart';
import 'package:oyan/src/core/theme/colors.dart';

class AddRemoveIcons extends StatelessWidget {
  final IconData icon;
  final VoidCallback onTap;

  const AddRemoveIcons({super.key, required this.icon, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(color: context.colors.white, borderRadius: BorderRadius.circular(8)),
        child: Padding(padding: const EdgeInsets.all(8.0), child: Icon(icon, color: Colors.black, size: 24)),
      ),
    );
  }
}
