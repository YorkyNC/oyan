// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_comments_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetCommentsRequestImpl _$$GetCommentsRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$GetCommentsRequestImpl(
      bookId: (json['book_id'] as num).toInt(),
    );

Map<String, dynamic> _$$GetCommentsRequestImplToJson(
        _$GetCommentsRequestImpl instance) =>
    <String, dynamic>{
      'book_id': instance.bookId,
    };
