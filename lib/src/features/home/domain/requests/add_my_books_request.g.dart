// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_my_books_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddMyBooksRequestImpl _$$AddMyBooksRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$AddMyBooksRequestImpl(
      username: json['username'] as String,
      filter: json['filter'] as String,
      bookId: (json['book_id'] as num).toInt(),
    );

Map<String, dynamic> _$$AddMyBooksRequestImplToJson(
        _$AddMyBooksRequestImpl instance) =>
    <String, dynamic>{
      'username': instance.username,
      'filter': instance.filter,
      'book_id': instance.bookId,
    };
