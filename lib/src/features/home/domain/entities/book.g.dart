// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BookImpl _$$BookImplFromJson(Map<String, dynamic> json) => _$BookImpl(
      id: (json['id'] as num?)?.toInt(),
      title: json['title'] as String?,
      author: json['author'] as String?,
      description: json['description'] as String?,
      coverImageUrl: json['cover_image_url'] as String?,
      rating: json['rating'] as String?,
      genres: (json['genres'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      publishedYear: (json['published_year'] as num?)?.toInt(),
      plan: json['plan'] as String?,
      price: json['price'] as String?,
      pageCount: (json['page_count'] as num?)?.toInt(),
      ageLimit: json['age_limit'] as String?,
      readUrl: json['read_url'] as String?,
    );

Map<String, dynamic> _$$BookImplToJson(_$BookImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'author': instance.author,
      'description': instance.description,
      'cover_image_url': instance.coverImageUrl,
      'rating': instance.rating,
      'genres': instance.genres,
      'created_at': instance.createdAt?.toIso8601String(),
      'published_year': instance.publishedYear,
      'plan': instance.plan,
      'price': instance.price,
      'page_count': instance.pageCount,
      'age_limit': instance.ageLimit,
      'read_url': instance.readUrl,
    };
