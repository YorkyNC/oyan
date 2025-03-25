import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:oyan/src/core/base/base_bloc/bloc/base_bloc_widget.dart';
import 'package:oyan/src/core/extensions/build_context_extension.dart';
import 'package:oyan/src/core/services/injectable/injectable_service.dart';
import 'package:oyan/src/features/attachment/domain/requests/add_attachment_request.dart';
import 'package:oyan/src/features/attachment/presentation/bloc/attachment_bloc.dart';
import 'package:oyan/src/features/news/presentation/bloc/news_bloc.dart';
import 'package:oyan/src/features/news/presentation/components/empty_state.dart';
import 'package:oyan/src/features/news/presentation/components/file_preview.dart';
import 'package:oyan/src/features/news/presentation/components/file_thumbnail.dart';
import 'package:oyan/src/features/news/presentation/components/page_indicator.dart';

import '../../../presentation/document_pick_widget.dart';

class MediaUpload extends StatefulWidget {
  final Function(List<String>)? onAttachmentIdsChanged;
  const MediaUpload({Key? key, this.onAttachmentIdsChanged}) : super(key: key);

  @override
  _MediaUploadState createState() => _MediaUploadState();
}

class _MediaUploadState extends State<MediaUpload> {
  final List<XFile> _selectedImages = [];
  final List<XFile> _selectedFiles = [];
  final List<String> _attachmentIds = [];
  final PageController _pageController = PageController();
  final AttachmentBloc _attachmentBloc = getIt<AttachmentBloc>();
  final NewsBloc _newsBloc = getIt<NewsBloc>();

  @override
  Widget build(BuildContext context) {
    return BaseBlocWidget<NewsBloc, NewsEvent, NewsState>(
      bloc: _newsBloc,
      builder: (context, state, bloc) {
        return BlocListener<AttachmentBloc, AttachmentState>(
          bloc: _attachmentBloc,
          listener: _handleAttachmentState,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _buildMediaUploadSection(),
              const SizedBox(height: 8),
              if (_hasSelectedMedia) ...[
                PageIndicator(
                  selectedImages: _selectedImages,
                  selectedFiles: _selectedFiles,
                  pageController: _pageController,
                ),
                const SizedBox(height: 8),
                _buildMediaList(),
              ],
            ],
          ),
        );
      },
    );
  }

  Widget _buildMediaUploadSection() {
    return InkWell(
      onTap: _showDocumentPicker,
      child:
          _hasSelectedMedia
              ? BlocBuilder<AttachmentBloc, AttachmentState>(
                bloc: _attachmentBloc,
                builder: (context, state) => _buildPageView(context),
              )
              : const EmptyState(),
    );
  }

  Widget _buildPageView(BuildContext context) {
    final List<XFile> itemsToDisplay = [..._selectedImages, ..._selectedFiles];

    return Container(
      width: double.infinity,
      height: 250,
      decoration: BoxDecoration(color: context.colors.gray100, borderRadius: BorderRadius.circular(8)),
      child: Stack(
        children: [
          PageView.builder(
            controller: _pageController,
            itemCount: itemsToDisplay.length,
            itemBuilder:
                (context, index) =>
                    _buildMediaPreview(itemsToDisplay[index], index, _selectedImages.contains(itemsToDisplay[index])),
          ),
          Positioned(
            right: 16,
            top: 16,
            child: FloatingActionButton(
              splashColor: Colors.transparent,
              elevation: 0,
              onPressed: _showDocumentPicker,
              backgroundColor: context.colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  context.icons.add_square__square_remove_cross_buttons_add_plus_button___mathematics_math,
                  color: context.colors.black,
                  size: 24,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMediaPreview(XFile file, int index, bool isImage) {
    if (_attachmentIds.length > index) {
      return isImage
          ? Image.file(File(file.path), fit: BoxFit.cover, width: double.infinity, height: 250)
          : FilePreview(file: file);
    } else {
      return const Center(child: CircularProgressIndicator());
    }
  }

  Widget _buildMediaList() {
    return SizedBox(
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _selectedImages.length + _selectedFiles.length,
        itemBuilder: (context, index) => _buildMediaListItem(index),
      ),
    );
  }

  Widget _buildMediaListItem(int index) {
    bool isImage = index < _selectedImages.length;
    final XFile file = isImage ? _selectedImages[index] : _selectedFiles[index - _selectedImages.length];

    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: InkWell(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: () => _jumpToPage(index),
        child: Stack(
          children: [
            _buildMediaThumbnail(file, index, isImage),
            Positioned(
              right: 0,
              top: 0,
              child: InkWell(
                onTap: () => _removeMedia(file, index, isImage),
                child: Icon(
                  context.icons.add_square__square_remove_cross_buttons_add_plus_button___mathematics_math,
                  size: 24,
                  color: context.colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMediaThumbnail(XFile file, int index, bool isImage) {
    return SizedBox(
      width: 100,
      height: 100,
      child:
          _attachmentIds.length > index
              ? isImage
                  ? Image.file(File(file.path), width: 100, height: 100, fit: BoxFit.cover)
                  : FileThumbnail(file: file)
              : const Center(child: CircularProgressIndicator()),
    );
  }

  void _handleAttachmentState(BuildContext context, AttachmentState state) {
    state.maybeWhen(
      loaded: (viewModel) {
        final newAttachmentId = viewModel.attachment!.id;
        if (!_attachmentIds.contains(newAttachmentId)) {
          setState(() {
            _attachmentIds.add(newAttachmentId!);
          });
          if (widget.onAttachmentIdsChanged != null) {
            widget.onAttachmentIdsChanged!(_attachmentIds);
          }
        }
      },
      error: (error) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Error: $error')));
      },
      orElse: () {},
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

  void _onImagesSelected(List<XFile> images) {
    setState(() {
      _selectedImages.addAll(images);
    });
    for (var image in images) {
      _uploadAttachment(image);
    }
  }

  void _onFilesSelected(List<XFile> files) {
    setState(() {
      _selectedFiles.addAll(files);
    });
    for (var file in files) {
      _uploadAttachment(file);
    }
  }

  void _uploadAttachment(XFile file) {
    _attachmentBloc.add(AttachmentEvent.addAttachment(AddAttachmentRequest(attachment: file)));
  }

  void _removeMedia(XFile file, int index, bool isImage) {
    setState(() {
      if (isImage) {
        _selectedImages.remove(file);
      } else {
        _selectedFiles.remove(file);
      }
      if (_attachmentIds.length > index) {
        _attachmentIds.removeAt(index);
      }
    });
  }

  void _jumpToPage(int index) {
    _pageController.animateToPage(index, duration: const Duration(milliseconds: 300), curve: Curves.linear);
  }

  bool get _hasSelectedMedia => _selectedImages.isNotEmpty || _selectedFiles.isNotEmpty;
}
