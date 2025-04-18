// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_books_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetBooksEntityImpl _$$GetBooksEntityImplFromJson(Map<String, dynamic> json) =>
    _$GetBooksEntityImpl(
      count: (json['count'] as num?)?.toInt(),
      next: json['next'] as String?,
      previous: json['previous'] as String?,
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => Book.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GetBooksEntityImplToJson(
        _$GetBooksEntityImpl instance) =>
    <String, dynamic>{
      'count': instance.count,
      'next': instance.next,
      'previous': instance.previous,
      'results': instance.results,
    };
