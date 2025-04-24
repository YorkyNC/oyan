// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_book_by_id_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetBookByIdEntityImpl _$$GetBookByIdEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$GetBookByIdEntityImpl(
      status: json['status'] as String?,
      data: json['data'] == null
          ? null
          : Book.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GetBookByIdEntityImplToJson(
        _$GetBookByIdEntityImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
    };
