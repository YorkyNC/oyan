// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_book_by_id_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetBookByIdRequestImpl _$$GetBookByIdRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$GetBookByIdRequestImpl(
      bookId: (json['book_id'] as num).toInt(),
    );

Map<String, dynamic> _$$GetBookByIdRequestImplToJson(
        _$GetBookByIdRequestImpl instance) =>
    <String, dynamic>{
      'book_id': instance.bookId,
    };
