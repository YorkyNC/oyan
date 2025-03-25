import 'package:flutter/cupertino.dart';
import 'package:image_picker/image_picker.dart';
import 'package:oyan/src/core/extensions/build_context_extension.dart';

import 'prefix_button.dart';
import 'suffix_row.dart';

class BuildCustomInputWidget extends StatefulWidget {
  final TextEditingController controller;
  final Function(String) onSubmitted;
  final Function(List<XFile> images, List<XFile> files, List<String> attachmentIds)? onAttachmentIdsChanged;

  const BuildCustomInputWidget({
    Key? key,
    required this.controller,
    required this.onSubmitted,
    this.onAttachmentIdsChanged,
  }) : super(key: key);

  @override
  _CustomInputWidgetState createState() => _CustomInputWidgetState();
}

class _CustomInputWidgetState extends State<BuildCustomInputWidget> {
  final List<XFile> _selectedImages = [];
  final List<XFile> _selectedFiles = [];
  final List<String> _attachmentIds = [];

  void _clearText() {
    setState(() {
      widget.controller.clear();
    });
  }

  void _submitText() {
    if (_attachmentIds.isNotEmpty || widget.controller.text.trim().isNotEmpty) {
      widget.onSubmitted(widget.controller.text);
      _clearText();
      setState(() {
        _attachmentIds.clear();
        _selectedImages.clear();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(color: const Color(0xFFE2E8F0), width: 1.0),
          borderRadius: BorderRadius.circular(0.0),
        ),
        child: CupertinoTextField(
          controller: widget.controller,
          placeholder: context.loc.message,
          placeholderStyle: const TextStyle(fontWeight: FontWeight.w400, fontSize: 16, color: Color(0xFF64748B)),
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
          decoration: null,
          onEditingComplete: _submitText,
          onSubmitted: widget.onSubmitted,
          maxLines: null,
          expands: true,
          textAlignVertical: TextAlignVertical.top,
          suffixMode: OverlayVisibilityMode.always,
          clearButtonMode: OverlayVisibilityMode.never,
          prefix: PrefixButton(
            onAttachmentIdsChanged: (images, files, attachmentIds) {
              if (mounted) {
                setState(() {
                  _selectedImages
                    ..clear()
                    ..addAll(images);
                  _selectedFiles
                    ..clear()
                    ..addAll(files);
                  _attachmentIds
                    ..clear()
                    ..addAll(attachmentIds);
                });
                widget.onAttachmentIdsChanged?.call(_selectedImages, _selectedFiles, _attachmentIds);
              }
            },
          ),
          suffix: SuffixRow(controller: widget.controller, onClear: _clearText, onSubmit: _submitText),
          onChanged: (text) {
            setState(() {});
          },
        ),
      ),
    );
  }
}
