// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_messages_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetMessagesRequestImpl _$$GetMessagesRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$GetMessagesRequestImpl(
      schoolId: json['schoolId'] as String,
      chatId: json['chatId'] as String,
      messageId: json['messageId'] as String?,
      before: (json['before'] as num?)?.toInt(),
      after: (json['after'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$GetMessagesRequestImplToJson(
        _$GetMessagesRequestImpl instance) =>
    <String, dynamic>{
      'schoolId': instance.schoolId,
      'chatId': instance.chatId,
      'messageId': instance.messageId,
      'before': instance.before,
      'after': instance.after,
    };
