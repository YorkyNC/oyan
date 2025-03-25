import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:oyan/src/core/extensions/build_context_extension.dart';

class FilePreview extends StatelessWidget {
  final XFile file;

  const FilePreview({super.key, required this.file});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              context.icons.add_square__square_remove_cross_buttons_add_plus_button___mathematics_math,
              size: 60,
              color: Colors.grey,
            ),
            const SizedBox(height: 10),
            Text(file.name, style: const TextStyle(color: Colors.black, fontSize: 16), overflow: TextOverflow.ellipsis),
          ],
        ),
      ),
    );
  }
}
