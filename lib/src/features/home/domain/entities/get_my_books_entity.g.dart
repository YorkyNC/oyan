// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_my_books_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetMyBooksEntityImpl _$$GetMyBooksEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$GetMyBooksEntityImpl(
      count: (json['count'] as num?)?.toInt(),
      next: json['next'] as String?,
      previous: json['previous'] as String?,
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => MyBookEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GetMyBooksEntityImplToJson(
        _$GetMyBooksEntityImpl instance) =>
    <String, dynamic>{
      'count': instance.count,
      'next': instance.next,
      'previous': instance.previous,
      'results': instance.results,
    };
