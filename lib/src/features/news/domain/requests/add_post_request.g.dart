// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_post_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddPostRequestImpl _$$AddPostRequestImplFromJson(Map<String, dynamic> json) =>
    _$AddPostRequestImpl(
      schoolId: json['school_id'] as String,
      title: json['title'] as String,
      content: json['content'] as String,
      isImportant: json['isImportant'] as bool?,
      role: json['role'] as String,
      tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
      attachments: (json['attachments'] as List<dynamic>?)
          ?.map((e) => AttachmentEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      classes: (json['classes'] as List<dynamic>)
          .map((e) => PostClassEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$AddPostRequestImplToJson(
        _$AddPostRequestImpl instance) =>
    <String, dynamic>{
      'school_id': instance.schoolId,
      'title': instance.title,
      'content': instance.content,
      'isImportant': instance.isImportant,
      'role': instance.role,
      'tags': instance.tags,
      'attachments': instance.attachments,
      'classes': instance.classes,
    };
