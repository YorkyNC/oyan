// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_book_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetBookRequestImpl _$$GetBookRequestImplFromJson(Map<String, dynamic> json) =>
    _$GetBookRequestImpl(
      type: $enumDecode(_$BookTypeEnumMap, json['type']),
      page: (json['page'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$GetBookRequestImplToJson(
        _$GetBookRequestImpl instance) =>
    <String, dynamic>{
      'type': _$BookTypeEnumMap[instance.type]!,
      'page': instance.page,
    };

const _$BookTypeEnumMap = {
  BookType.newBooks: 'new',
  BookType.popular: 'popular',
  BookType.recommended: 'recommended',
};
