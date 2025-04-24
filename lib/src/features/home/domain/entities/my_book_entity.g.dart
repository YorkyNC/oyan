// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_book_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MyBookEntityImpl _$$MyBookEntityImplFromJson(Map<String, dynamic> json) =>
    _$MyBookEntityImpl(
      user: (json['user'] as num?)?.toInt(),
      book: (json['book'] as num?)?.toInt(),
      coverUrl: json['cover_url'] as String?,
      title: json['title'] as String?,
      status: json['status'] as String?,
      author: json['author'] as String?,
      completedAt: json['completed_at'] == null
          ? null
          : DateTime.parse(json['completed_at'] as String),
    );

Map<String, dynamic> _$$MyBookEntityImplToJson(_$MyBookEntityImpl instance) =>
    <String, dynamic>{
      'user': instance.user,
      'book': instance.book,
      'cover_url': instance.coverUrl,
      'title': instance.title,
      'status': instance.status,
      'author': instance.author,
      'completed_at': instance.completedAt?.toIso8601String(),
    };
