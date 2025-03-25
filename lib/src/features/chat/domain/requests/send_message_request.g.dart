// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_message_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SendMessageRequestImpl _$$SendMessageRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$SendMessageRequestImpl(
      text: json['text'] as String,
      chatId: json['chatId'] as String?,
      forwardedMessageId: json['forwardedMessageId'] as String?,
      repliedMessageId: json['repliedMessageId'] as String?,
      author: json['author'] == null
          ? null
          : ChatMemberEntity.fromJson(json['author'] as Map<String, dynamic>),
      messageId: json['messageId'] as String?,
      createdDate: json['createdDate'] == null
          ? null
          : DateTime.parse(json['createdDate'] as String),
      isViewed: json['isViewed'] as bool? ?? false,
      attachments: (json['attachments'] as List<dynamic>?)
          ?.map((e) => AttachmentEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SendMessageRequestImplToJson(
        _$SendMessageRequestImpl instance) =>
    <String, dynamic>{
      'text': instance.text,
      'chatId': instance.chatId,
      'forwardedMessageId': instance.forwardedMessageId,
      'repliedMessageId': instance.repliedMessageId,
      'author': instance.author,
      'messageId': instance.messageId,
      'createdDate': instance.createdDate?.toIso8601String(),
      'isViewed': instance.isViewed,
      'attachments': instance.attachments,
    };
