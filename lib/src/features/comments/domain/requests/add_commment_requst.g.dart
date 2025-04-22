// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_commment_requst.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddCommentRequestImpl _$$AddCommentRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$AddCommentRequestImpl(
      bookId: (json['book_id'] as num).toInt(),
      content: json['content'] as String,
      rate: (json['rate'] as num).toInt(),
    );

Map<String, dynamic> _$$AddCommentRequestImplToJson(
        _$AddCommentRequestImpl instance) =>
    <String, dynamic>{
      'book_id': instance.bookId,
      'content': instance.content,
      'rate': instance.rate,
    };
