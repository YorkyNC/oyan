// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatEntityImpl _$$ChatEntityImplFromJson(Map<String, dynamic> json) =>
    _$ChatEntityImpl(
      type: json['type'] as String,
      title: json['title'] as String?,
      description: json['description'] as String?,
      chatId: json['chatId'] as String?,
      classId: json['classId'] as String?,
      schoolId: json['schoolId'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      profilePictureId: json['profilePictureId'] == null
          ? null
          : AttachmentEntity.fromJson(
              json['profilePictureId'] as Map<String, dynamic>),
      members: (json['members'] as List<dynamic>?)
          ?.map((e) => ChatMemberEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      lastMessage: json['lastMessage'] == null
          ? null
          : MessageEntity.fromJson(json['lastMessage'] as Map<String, dynamic>),
      unreadCount: (json['unreadCount'] as num?)?.toInt(),
      latestActivity: json['latestActivity'] == null
          ? null
          : DateTime.parse(json['latestActivity'] as String),
    );

Map<String, dynamic> _$$ChatEntityImplToJson(_$ChatEntityImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'title': instance.title,
      'description': instance.description,
      'chatId': instance.chatId,
      'classId': instance.classId,
      'schoolId': instance.schoolId,
      'createdAt': instance.createdAt?.toIso8601String(),
      'profilePictureId': instance.profilePictureId,
      'members': instance.members,
      'lastMessage': instance.lastMessage,
      'unreadCount': instance.unreadCount,
      'latestActivity': instance.latestActivity?.toIso8601String(),
    };

_$ChatMemberEntityImpl _$$ChatMemberEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$ChatMemberEntityImpl(
      userId: json['userId'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      roles: (json['roles'] as List<dynamic>?)
          ?.map((e) => ChatRoleEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ChatMemberEntityImplToJson(
        _$ChatMemberEntityImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'roles': instance.roles,
    };

_$ChatRoleEntityImpl _$$ChatRoleEntityImplFromJson(Map<String, dynamic> json) =>
    _$ChatRoleEntityImpl(
      role: json['role'] as String,
      studentId: json['studentId'] as String?,
      studentFirstName: json['studentFirstName'] as String?,
      studentLastName: json['studentLastName'] as String?,
    );

Map<String, dynamic> _$$ChatRoleEntityImplToJson(
        _$ChatRoleEntityImpl instance) =>
    <String, dynamic>{
      'role': instance.role,
      'studentId': instance.studentId,
      'studentFirstName': instance.studentFirstName,
      'studentLastName': instance.studentLastName,
    };

_$MessageEntityImpl _$$MessageEntityImplFromJson(Map<String, dynamic> json) =>
    _$MessageEntityImpl(
      text: json['text'] as String?,
      chatId: json['chatId'] as String?,
      forwardedMessageId: json['forwardedMessageId'] as String?,
      repliedMessageId: json['repliedMessageId'] as String?,
      author: json['author'] == null
          ? null
          : ChatMemberEntity.fromJson(json['author'] as Map<String, dynamic>),
      messageId: json['messageId'] as String?,
      id: json['id'] as String?,
      authorId: json['authorId'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      isViewed: json['isViewed'] as bool?,
      attachments: (json['attachments'] as List<dynamic>?)
              ?.map((e) => AttachmentEntity.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      isWebsocketMessage: json['isWebsocketMessage'] as bool?,
    );

Map<String, dynamic> _$$MessageEntityImplToJson(_$MessageEntityImpl instance) =>
    <String, dynamic>{
      'text': instance.text,
      'chatId': instance.chatId,
      'forwardedMessageId': instance.forwardedMessageId,
      'repliedMessageId': instance.repliedMessageId,
      'author': instance.author,
      'messageId': instance.messageId,
      'id': instance.id,
      'authorId': instance.authorId,
      'createdAt': instance.createdAt?.toIso8601String(),
      'isViewed': instance.isViewed,
      'attachments': instance.attachments,
      'isWebsocketMessage': instance.isWebsocketMessage,
    };

_$NewMessageEntityImpl _$$NewMessageEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$NewMessageEntityImpl(
      content: json['content'] as String,
      chatId: json['chat_id'] as String,
      forwardedMessageId: json['forwarded_message_id'] as String?,
      repliedMessageId: json['replied_message_id'] as String?,
      attachments: (json['attachments'] as List<dynamic>?)
          ?.map((e) => AttachmentEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$NewMessageEntityImplToJson(
        _$NewMessageEntityImpl instance) =>
    <String, dynamic>{
      'content': instance.content,
      'chat_id': instance.chatId,
      'forwarded_message_id': instance.forwardedMessageId,
      'replied_message_id': instance.repliedMessageId,
      'attachments': instance.attachments,
    };

_$SentMessageEntityImpl _$$SentMessageEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$SentMessageEntityImpl(
      schoolId: json['schoolId'] as String,
      chatId: json['chatId'] as String,
      messageId: json['messageId'] as String,
    );

Map<String, dynamic> _$$SentMessageEntityImplToJson(
        _$SentMessageEntityImpl instance) =>
    <String, dynamic>{
      'schoolId': instance.schoolId,
      'chatId': instance.chatId,
      'messageId': instance.messageId,
    };

_$MessageSentEntityImpl _$$MessageSentEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$MessageSentEntityImpl(
      type: json['type'] as String,
      message: json['message'] == null
          ? null
          : MessageEntity.fromJson(json['message'] as Map<String, dynamic>),
      userId: json['userId'] as String?,
      messageId: json['messageId'] as String?,
      chatId: json['chatId'] as String?,
      seenAt: json['seenAt'] == null
          ? null
          : DateTime.parse(json['seenAt'] as String),
    );

Map<String, dynamic> _$$MessageSentEntityImplToJson(
        _$MessageSentEntityImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'message': instance.message,
      'userId': instance.userId,
      'messageId': instance.messageId,
      'chatId': instance.chatId,
      'seenAt': instance.seenAt?.toIso8601String(),
    };

_$MessageDataEntityImpl _$$MessageDataEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$MessageDataEntityImpl(
      id: json['id'] as String,
      chatId: json['chatId'] as String,
      authorId: json['authorId'] as String,
      createdAt: json['createdAt'] as String,
      text: json['text'] as String,
      repliedMessageId: json['repliedMessageId'] as String?,
      attachments: (json['attachments'] as List<dynamic>?)
              ?.map((e) => AttachmentEntity.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$MessageDataEntityImplToJson(
        _$MessageDataEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'chatId': instance.chatId,
      'authorId': instance.authorId,
      'createdAt': instance.createdAt,
      'text': instance.text,
      'repliedMessageId': instance.repliedMessageId,
      'attachments': instance.attachments,
    };
