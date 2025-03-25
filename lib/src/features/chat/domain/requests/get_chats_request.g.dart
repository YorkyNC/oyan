// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_chats_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetChatsRequestImpl _$$GetChatsRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$GetChatsRequestImpl(
      schoolId: json['schoolId'] as String,
      role: json['role'] as String,
      childId: json['childId'] as String?,
      limit: (json['limit'] as num?)?.toInt(),
      offset: (json['offset'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$GetChatsRequestImplToJson(
        _$GetChatsRequestImpl instance) =>
    <String, dynamic>{
      'schoolId': instance.schoolId,
      'role': instance.role,
      'childId': instance.childId,
      'limit': instance.limit,
      'offset': instance.offset,
    };
