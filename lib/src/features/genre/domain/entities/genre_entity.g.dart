// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'genre_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GenreImpl _$$GenreImplFromJson(Map<String, dynamic> json) => _$GenreImpl(
      id: (json['id'] as num).toInt(),
      genre: json['genre'] as String,
    );

Map<String, dynamic> _$$GenreImplToJson(_$GenreImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'genre': instance.genre,
    };

_$GenreEntityImpl _$$GenreEntityImplFromJson(Map<String, dynamic> json) =>
    _$GenreEntityImpl(
      status: json['status'] as String,
      data: (json['data'] as List<dynamic>)
          .map((e) => Genre.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GenreEntityImplToJson(_$GenreEntityImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
    };
