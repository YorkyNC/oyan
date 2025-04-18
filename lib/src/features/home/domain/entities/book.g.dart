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
      coverImageUrl: json['coverImageUrl'] as String?,
      rating: (json['rating'] as num?)?.toDouble(),
      genres: (json['genres'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      publishedYear: (json['publishedYear'] as num?)?.toInt(),
      plan: json['plan'] as String?,
      price: (json['price'] as num?)?.toDouble(),
      pageCount: (json['pageCount'] as num?)?.toInt(),
      ageLimit: json['ageLimit'] as String?,
      readUrl: json['readUrl'] as String?,
    );

Map<String, dynamic> _$$BookImplToJson(_$BookImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'author': instance.author,
      'description': instance.description,
      'coverImageUrl': instance.coverImageUrl,
      'rating': instance.rating,
      'genres': instance.genres,
      'createdAt': instance.createdAt?.toIso8601String(),
      'publishedYear': instance.publishedYear,
      'plan': instance.plan,
      'price': instance.price,
      'pageCount': instance.pageCount,
      'ageLimit': instance.ageLimit,
      'readUrl': instance.readUrl,
    };
