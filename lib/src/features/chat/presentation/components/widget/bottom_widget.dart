import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:image_picker/image_picker.dart';

import 'build_custom_input_widget.dart';
import 'reply_preview.dart';

class BottomWidget extends StatelessWidget {
  final types.Message? repliedMessage;
  final VoidCallback onCancelReply;
  final List<XFile> selectedImages;
  final TextEditingController controller;
  final Function(String) onMessageSubmitted;
  final Function(List<XFile>?, List<XFile>?, List<String>?) onAttachmentIdsChanged;
  final List<XFile> selectedFiles;
  final List<String> attachmentIds;

  const BottomWidget({
    super.key,
    this.repliedMessage,
    required this.onCancelReply,
    required this.selectedImages,
    required this.controller,
    required this.onMessageSubmitted,
    required this.onAttachmentIdsChanged,
    required this.selectedFiles,
    required this.attachmentIds,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (repliedMessage != null)
            ReplyPreview(
              repliedMessage: repliedMessage,
              onCancelReply: onCancelReply,
            ),
          if (selectedImages.isNotEmpty) _buildImagePreviewList(),
          _buildInputWidget(),
        ],
      ),
    );
  }

  Widget _buildImagePreviewList() {
    return Container(
      height: 100,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: selectedImages.length,
        separatorBuilder: (_, __) => const SizedBox(width: 8),
        itemBuilder: (context, index) => _buildImagePreviewItem(index),
      ),
    );
  }

  Widget _buildImagePreviewItem(int index) {
    return Stack(
      children: [
        _buildImageContainer(index),
        _buildRemoveButton(index),
      ],
    );
  }

  Widget _buildImageContainer(int index) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        image: DecorationImage(
          image: FileImage(File(selectedImages[index].path)),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _buildRemoveButton(int index) {
    return Positioned(
      right: 4,
      top: 4,
      child: GestureDetector(
        onTap: () => _handleRemoveImage(index),
        child: Container(
          padding: const EdgeInsets.all(4),
          decoration: const BoxDecoration(
            color: Colors.black54,
            shape: BoxShape.circle,
          ),
          child: const Icon(
            Icons.close,
            size: 16,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  Widget _buildInputWidget() {
    return BuildCustomInputWidget(
      controller: controller,
      onSubmitted: _handleSubmit,
      onAttachmentIdsChanged: onAttachmentIdsChanged,
    );
  }

  void _handleRemoveImage(int index) {
    final newImages = List<XFile>.from(selectedImages)..removeAt(index);
    onAttachmentIdsChanged(
      newImages,
      selectedFiles,
      attachmentIds,
    );
  }

  void _handleSubmit(String value) {
    if (value.trim().isNotEmpty || attachmentIds.isNotEmpty) {
      onMessageSubmitted(value);
    }
  }
}

// Image preview component
class ImagePreview extends StatelessWidget {
  final File image;
  final VoidCallback onRemove;

  const ImagePreview({
    super.key,
    required this.image,
    required this.onRemove,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            image: DecorationImage(
              image: FileImage(image),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          right: 4,
          top: 4,
          child: RemoveButton(onTap: onRemove),
        ),
      ],
    );
  }
}

// Remove button component
class RemoveButton extends StatelessWidget {
  final VoidCallback onTap;

  const RemoveButton({
    super.key,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(4),
        decoration: const BoxDecoration(
          color: Colors.black54,
          shape: BoxShape.circle,
        ),
        child: const Icon(
          Icons.close,
          size: 16,
          color: Colors.white,
        ),
      ),
    );
  }
}
