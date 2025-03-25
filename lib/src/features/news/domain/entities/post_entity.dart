import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:oyan/src/features/news/domain/entities/tag_entity.dart';

import '../../../../core/base/base_models/base_entity.dart';
import '../../../attachment/domain/entities/attachment_entity.dart';

part 'post_entity.freezed.dart';
part 'post_entity.g.dart';

@freezed
class PostEntity extends BaseEntity with _$PostEntity {
  const factory PostEntity({
    required String title,
    required String content,
    required String authorId,
    required String id,
    String? schoolId,
    bool? isImportant,
    String? courseId,
    String? classId,
    required String createdDate,
    required String modifiedDate,
    List<AttachmentEntity?>? attachments,
    List<TagEntity?>? tags,
  }) = _PostEntity;

  factory PostEntity.fromJson(Map<String, dynamic> json) => _$PostEntityFromJson(json);
}
