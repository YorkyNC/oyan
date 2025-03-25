import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:oyan/src/core/extensions/build_context_extension.dart';

import '../../core/theme/typography.dart';
import '../../core/utils/constants/app_icons.dart';

class DocumentPickWidget extends StatefulWidget {
  final Function(List<XFile>) onImagesSelected;
  final Function(List<XFile>) onFilesSelected;

  const DocumentPickWidget({super.key, required this.onImagesSelected, required this.onFilesSelected});

  @override
  _DocumentPickWidgetState createState() => _DocumentPickWidgetState();
}

class _DocumentPickWidgetState extends State<DocumentPickWidget> {
  final ImagePicker _imagePicker = ImagePicker();
  final List<XFile> _selectedFiles = [];

  int? _selectedIndex;

  Future<void> _pickMultipleImages() async {
    final List<XFile> images = await _imagePicker.pickMultiImage();
    if (images.isNotEmpty) {
      setState(() {
        _selectedIndex = 0;
      });
      widget.onImagesSelected(images);
    }
    Navigator.pop(context);
  }

  Future<void> _pickMultipleFiles() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      allowMultiple: true,
      type: FileType.custom,
      allowedExtensions: ['pdf', 'doc', 'docx'],
    );

    if (result != null) {
      List<XFile> files = result.paths.map((path) => XFile(path!)).toList();
      setState(() {
        _selectedIndex = 1;
        _selectedFiles.addAll(files);
        widget.onFilesSelected(_selectedFiles);
      });
    }
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 214,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              context.loc.selectSource,
              style: const FigmaTextStyles().typography4Medium.copyWith(color: context.colors.black),
            ),
            const SizedBox(height: 6),
            Column(
              children: [
                InkWell(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: _pickMultipleImages,
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: _selectedIndex == 0 ? context.colors.gray100 : Colors.transparent,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(color: context.colors.brand300, shape: BoxShape.circle),
                          padding: const EdgeInsets.all(10.0),
                          child: Icon(
                            context.icons.add_square__square_remove_cross_buttons_add_plus_button___mathematics_math,
                            size: 24,
                            color: context.colors.white,
                          ),
                        ),
                        const SizedBox(width: 8),
                        Text(
                          context.loc.gallery,
                          style: const FigmaTextStyles().typography2Regular.copyWith(color: context.colors.black),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 6),
                InkWell(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: _pickMultipleFiles,
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: _selectedIndex == 1 ? context.colors.gray100 : Colors.transparent,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(color: context.colors.purple300, shape: BoxShape.circle),
                          padding: const EdgeInsets.all(10.0),
                          child: Icon(
                            context.icons.add_square__square_remove_cross_buttons_add_plus_button___mathematics_math,
                            size: 24,
                            color: context.colors.white,
                          ),
                        ),
                        const SizedBox(width: 8),
                        Text(
                          context.loc.document,
                          style: const FigmaTextStyles().typography2Regular.copyWith(color: context.colors.black),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
