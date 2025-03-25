import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:oyan/src/core/extensions/build_context_extension.dart';
import 'package:oyan/src/core/services/injectable/injectable_service.dart';
import 'package:oyan/src/core/theme/colors.dart';
import 'package:oyan/src/core/utils/constants/app_icons.dart';
import 'package:oyan/src/features/attachment/domain/requests/add_attachment_request.dart';
import 'package:oyan/src/features/attachment/presentation/bloc/attachment_bloc.dart';

import '../../../../presentation/document_pick_widget.dart';

class PrefixButton extends StatefulWidget {
  final Function(List<XFile> images, List<XFile> files, List<String> attachmentIds)? onAttachmentIdsChanged;

  PrefixButton({super.key, this.onAttachmentIdsChanged});

  @override
  _PrefixButtonState createState() => _PrefixButtonState();
}

class _PrefixButtonState extends State<PrefixButton> {
  @override
  dispose() {
    _attachmentBloc.close();
    _attachmentIds.clear();
    _selectedImages.clear();
    _selectedFiles.clear();

    super.dispose();
  }

  final List<XFile> _selectedImages = [];
  final List<XFile> _selectedFiles = [];
  final List<String> _attachmentIds = [];
  final AttachmentBloc _attachmentBloc = getIt<AttachmentBloc>();

  void _onImagesSelected(List<XFile> images) {
    // Upload each image and get attachment IDs
    for (var image in images) {
      _attachmentBloc.add(AttachmentEvent.addAttachment(AddAttachmentRequest(attachment: image)));
    }

    // Store selected images
    setState(() {
      _selectedImages.addAll(images);
    });
  }

  void _onFilesSelected(List<XFile> files) {
    // Upload each file and get attachment IDs
    for (var file in files) {
      _attachmentBloc.add(AttachmentEvent.addAttachment(AddAttachmentRequest(attachment: file)));
    }

    // Store selected files
    setState(() {
      _selectedFiles.addAll(files);
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AttachmentBloc, AttachmentState>(
      bloc: _attachmentBloc,
      listener: (context, state) {
        state.maybeWhen(
          loaded: (viewModel) {
            if (viewModel.attachment?.id != null) {
              setState(() {
                _attachmentIds.add(viewModel.attachment!.id!);
              });
              if (widget.onAttachmentIdsChanged != null) {
                widget.onAttachmentIdsChanged!(_selectedImages, _selectedFiles, _attachmentIds);
              }
            }
          },
          orElse: () {},
        );
      },
      child: CupertinoButton(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        onPressed: _showDocumentPicker,
        child: Icon(
          context.icons.add_square__square_remove_cross_buttons_add_plus_button___mathematics_math,
          color: const Color(0xFF64748B),
          size: 24,
        ),
      ),
    );
  }

  void _showDocumentPicker() {
    showModalBottomSheet(
      useRootNavigator: true,
      showDragHandle: true,
      backgroundColor: context.colors.white,
      context: context,
      builder: (context) => DocumentPickWidget(onImagesSelected: _onImagesSelected, onFilesSelected: _onFilesSelected),
    );
  }
}
