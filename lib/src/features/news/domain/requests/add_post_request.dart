import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:oyan/src/features/attachment/domain/entities/attachment_entity.dart';
import 'package:oyan/src/features/news/domain/entities/post_class_entity.dart';
import 'package:oyan/src/features/news/domain/entities/tag_entity.dart';

import '../../../../core/base/base_models/base_request.dart';

part 'add_post_request.freezed.dart';
part 'add_post_request.g.dart';

@freezed
class AddPostRequest extends BaseRequest with _$AddPostRequest {
  const factory AddPostRequest({
    @JsonKey(name: 'school_id') required String schoolId,
    required String title,
    required String content,
    bool? isImportant,
    required String role,
    List<String>? tags,
    List<AttachmentEntity>? attachments,
    required List<PostClassEntity> classes,
  }) = _AddPostRequest;

  factory AddPostRequest.fromJson(Map<String, dynamic> json) => _$AddPostRequestFromJson(json);
}
