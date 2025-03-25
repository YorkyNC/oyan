import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:oyan/src/features/news/domain/entities/post_course_entity.dart';

import '../../../../core/base/base_models/base_entity.dart';

part 'post_class_entity.freezed.dart';
part 'post_class_entity.g.dart';

@freezed
class PostClassEntity extends BaseEntity with _$PostClassEntity {
  const factory PostClassEntity({required String classId, List<PostCourseEntity>? courses}) = _PostClassEntity;

  factory PostClassEntity.fromJson(Map<String, dynamic> json) => _$PostClassEntityFromJson(json);
}
