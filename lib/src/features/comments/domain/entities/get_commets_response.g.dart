// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_commets_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetCommentsResponseImpl _$$GetCommentsResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$GetCommentsResponseImpl(
      status: json['status'] as String?,
      count: (json['count'] as num?)?.toInt(),
      next: json['next'] as String?,
      previous: json['previous'] as String?,
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => Comment.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GetCommentsResponseImplToJson(
        _$GetCommentsResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'count': instance.count,
      'next': instance.next,
      'previous': instance.previous,
      'results': instance.results,
    };

_$CommentImpl _$$CommentImplFromJson(Map<String, dynamic> json) =>
    _$CommentImpl(
      id: (json['id'] as num?)?.toInt(),
      user: (json['user'] as num?)?.toInt(),
      username: json['username'] as String?,
      avatar: json['avatar'] as String?,
      content: json['content'] as String?,
      rate: json['rate'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$$CommentImplToJson(_$CommentImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user': instance.user,
      'username': instance.username,
      'avatar': instance.avatar,
      'content': instance.content,
      'rate': instance.rate,
      'created_at': instance.createdAt?.toIso8601String(),
    };
