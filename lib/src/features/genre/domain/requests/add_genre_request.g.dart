// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_genre_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddGenreRequestImpl _$$AddGenreRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$AddGenreRequestImpl(
      genres: (json['genres'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
    );

Map<String, dynamic> _$$AddGenreRequestImplToJson(
        _$AddGenreRequestImpl instance) =>
    <String, dynamic>{
      'genres': instance.genres,
    };
