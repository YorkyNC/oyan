import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:oyan/src/core/extensions/build_context_extension.dart';

class FileThumbnail extends StatelessWidget {
  final XFile file;

  const FileThumbnail({super.key, required this.file});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      color: Colors.grey[300],
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              context.icons.add_square__square_remove_cross_buttons_add_plus_button___mathematics_math,
              size: 40,
              color: Colors.grey,
            ),
            const SizedBox(height: 8),
            Text(file.name, style: const TextStyle(color: Colors.black, fontSize: 12), overflow: TextOverflow.ellipsis),
          ],
        ),
      ),
    );
  }
}
