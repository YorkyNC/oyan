// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PostEntityImpl _$$PostEntityImplFromJson(Map<String, dynamic> json) =>
    _$PostEntityImpl(
      title: json['title'] as String,
      content: json['content'] as String,
      authorId: json['authorId'] as String,
      id: json['id'] as String,
      schoolId: json['schoolId'] as String?,
      isImportant: json['isImportant'] as bool?,
      courseId: json['courseId'] as String?,
      classId: json['classId'] as String?,
      createdDate: json['createdDate'] as String,
      modifiedDate: json['modifiedDate'] as String,
      attachments: (json['attachments'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : AttachmentEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      tags: (json['tags'] as List<dynamic>?)
          ?.map((e) =>
              e == null ? null : TagEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PostEntityImplToJson(_$PostEntityImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'content': instance.content,
      'authorId': instance.authorId,
      'id': instance.id,
      'schoolId': instance.schoolId,
      'isImportant': instance.isImportant,
      'courseId': instance.courseId,
      'classId': instance.classId,
      'createdDate': instance.createdDate,
      'modifiedDate': instance.modifiedDate,
      'attachments': instance.attachments,
      'tags': instance.tags,
    };
