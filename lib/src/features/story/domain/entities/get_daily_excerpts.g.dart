// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_daily_excerpts.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetDailyExcerptsImpl _$$GetDailyExcerptsImplFromJson(
        Map<String, dynamic> json) =>
    _$GetDailyExcerptsImpl(
      status: json['status'] as String?,
      dailyExcerpts: (json['dailyexcerpts'] as List<dynamic>?)
          ?.map((e) => DailyExcerpt.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GetDailyExcerptsImplToJson(
        _$GetDailyExcerptsImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'dailyexcerpts': instance.dailyExcerpts,
    };

_$DailyExcerptImpl _$$DailyExcerptImplFromJson(Map<String, dynamic> json) =>
    _$DailyExcerptImpl(
      id: (json['id'] as num?)?.toInt(),
      text: json['text'] as String?,
      book: (json['book'] as num?)?.toInt(),
      generatedImageUrl: json['generated_image_url'] as String?,
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
    );

Map<String, dynamic> _$$DailyExcerptImplToJson(_$DailyExcerptImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'text': instance.text,
      'book': instance.book,
      'generated_image_url': instance.generatedImageUrl,
      'date': instance.date?.toIso8601String(),
    };
