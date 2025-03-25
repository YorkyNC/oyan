// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_class_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PostClassEntityImpl _$$PostClassEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$PostClassEntityImpl(
      classId: json['classId'] as String,
      courses: (json['courses'] as List<dynamic>?)
          ?.map((e) => PostCourseEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PostClassEntityImplToJson(
        _$PostClassEntityImpl instance) =>
    <String, dynamic>{
      'classId': instance.classId,
      'courses': instance.courses,
    };
