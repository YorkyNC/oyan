// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_posts_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetPostsRequestImpl _$$GetPostsRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$GetPostsRequestImpl(
      limit: (json['limit'] as num).toInt(),
      offset: (json['offset'] as num).toInt(),
      orderAsc: json['order_asc'] as bool,
      resolution: (json['resolution'] as num?)?.toInt(),
      feedType: json['feedType'] as String?,
      schoolId: json['school_id'] as String,
      role: json['role'] as String,
      childId: json['child_id'] as String?,
    );

Map<String, dynamic> _$$GetPostsRequestImplToJson(
        _$GetPostsRequestImpl instance) =>
    <String, dynamic>{
      'limit': instance.limit,
      'offset': instance.offset,
      'order_asc': instance.orderAsc,
      'resolution': instance.resolution,
      'feedType': instance.feedType,
      'school_id': instance.schoolId,
      'role': instance.role,
      'child_id': instance.childId,
    };
