import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/base/base_models/base_entity.dart';

part 'post_course_entity.freezed.dart';
part 'post_course_entity.g.dart';

@freezed
class PostCourseEntity extends BaseEntity with _$PostCourseEntity {
  const factory PostCourseEntity({
    required String courseId,
  }) = _PostCourseEntity;

  factory PostCourseEntity.fromJson(Map<String, dynamic> json) =>
      _$PostCourseEntityFromJson(json);
}
