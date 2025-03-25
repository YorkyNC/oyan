// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_message_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetMessageRequestImpl _$$GetMessageRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$GetMessageRequestImpl(
      messageId: json['messageId'] as String,
      schoolId: json['schoolId'] as String,
      role: json['role'] as String?,
    );

Map<String, dynamic> _$$GetMessageRequestImplToJson(
        _$GetMessageRequestImpl instance) =>
    <String, dynamic>{
      'messageId': instance.messageId,
      'schoolId': instance.schoolId,
      'role': instance.role,
    };
