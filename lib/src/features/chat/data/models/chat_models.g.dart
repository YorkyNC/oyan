// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatResponseImpl _$$ChatResponseImplFromJson(Map<String, dynamic> json) =>
    _$ChatResponseImpl(
      title: json['title'] as String,
      description: json['description'] as String,
      type: json['type'] as String,
      chatId: json['chatId'] as String,
      schoolId: json['schoolId'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      profilePictureId: json['profilePictureId'] == null
          ? null
          : ProfilePicture.fromJson(
              json['profilePictureId'] as Map<String, dynamic>),
      members: (json['members'] as List<dynamic>)
          .map((e) => ChatMember.fromJson(e as Map<String, dynamic>))
          .toList(),
      classId: json['classId'] as String?,
    );

Map<String, dynamic> _$$ChatResponseImplToJson(_$ChatResponseImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'type': instance.type,
      'chatId': instance.chatId,
      'schoolId': instance.schoolId,
      'createdAt': instance.createdAt.toIso8601String(),
      'profilePictureId': instance.profilePictureId,
      'members': instance.members,
      'classId': instance.classId,
    };

_$ProfilePictureImpl _$$ProfilePictureImplFromJson(Map<String, dynamic> json) =>
    _$ProfilePictureImpl(
      id: json['id'] as String,
      url: json['url'] as String,
      fileName: json['fileName'] as String,
      fileSizeInBytes: (json['fileSizeInBytes'] as num).toInt(),
      contentType: json['contentType'] as String,
    );

Map<String, dynamic> _$$ProfilePictureImplToJson(
        _$ProfilePictureImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
      'fileName': instance.fileName,
      'fileSizeInBytes': instance.fileSizeInBytes,
      'contentType': instance.contentType,
    };

_$ChatMemberImpl _$$ChatMemberImplFromJson(Map<String, dynamic> json) =>
    _$ChatMemberImpl(
      userId: json['userId'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      roles: (json['roles'] as List<dynamic>)
          .map((e) => ChatRole.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ChatMemberImplToJson(_$ChatMemberImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'roles': instance.roles,
    };

_$ChatRoleImpl _$$ChatRoleImplFromJson(Map<String, dynamic> json) =>
    _$ChatRoleImpl(
      role: json['role'] as String,
      studentId: json['studentId'] as String?,
      studentFirstName: json['studentFirstName'] as String?,
      studentLastName: json['studentLastName'] as String?,
    );

Map<String, dynamic> _$$ChatRoleImplToJson(_$ChatRoleImpl instance) =>
    <String, dynamic>{
      'role': instance.role,
      'studentId': instance.studentId,
      'studentFirstName': instance.studentFirstName,
      'studentLastName': instance.studentLastName,
    };

_$AttachmentImpl _$$AttachmentImplFromJson(Map<String, dynamic> json) =>
    _$AttachmentImpl(
      id: json['id'] as String,
      type: json['type'] as String,
    );

Map<String, dynamic> _$$AttachmentImplToJson(_$AttachmentImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
    };

_$OriginalUserMessageImpl _$$OriginalUserMessageImplFromJson(
        Map<String, dynamic> json) =>
    _$OriginalUserMessageImpl(
      id: json['id'] as String,
      authorId: json['authorId'] as String,
      text: json['text'] as String,
      repliedMessageId: json['repliedMessageId'] as String?,
      attachments: (json['attachments'] as List<dynamic>?)
              ?.map((e) => Attachment.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      recipientId: json['recipientId'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$OriginalUserMessageImplToJson(
        _$OriginalUserMessageImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'authorId': instance.authorId,
      'text': instance.text,
      'repliedMessageId': instance.repliedMessageId,
      'attachments': instance.attachments,
      'recipientId': instance.recipientId,
      'runtimeType': instance.$type,
    };

_$OriginalChatMessageImpl _$$OriginalChatMessageImplFromJson(
        Map<String, dynamic> json) =>
    _$OriginalChatMessageImpl(
      id: json['id'] as String,
      authorId: json['authorId'] as String,
      text: json['text'] as String,
      repliedMessageId: json['repliedMessageId'] as String?,
      attachments: (json['attachments'] as List<dynamic>?)
              ?.map((e) => Attachment.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      chatId: json['chatId'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$OriginalChatMessageImplToJson(
        _$OriginalChatMessageImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'authorId': instance.authorId,
      'text': instance.text,
      'repliedMessageId': instance.repliedMessageId,
      'attachments': instance.attachments,
      'chatId': instance.chatId,
      'runtimeType': instance.$type,
    };

_$ForwardedUserMessageImpl _$$ForwardedUserMessageImplFromJson(
        Map<String, dynamic> json) =>
    _$ForwardedUserMessageImpl(
      id: json['id'] as String,
      authorId: json['authorId'] as String,
      forwardedMessageId: json['forwardedMessageId'] as String,
      recipientId: json['recipientId'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ForwardedUserMessageImplToJson(
        _$ForwardedUserMessageImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'authorId': instance.authorId,
      'forwardedMessageId': instance.forwardedMessageId,
      'recipientId': instance.recipientId,
      'runtimeType': instance.$type,
    };

_$ForwardedChatMessageImpl _$$ForwardedChatMessageImplFromJson(
        Map<String, dynamic> json) =>
    _$ForwardedChatMessageImpl(
      id: json['id'] as String,
      authorId: json['authorId'] as String,
      forwardedMessageId: json['forwardedMessageId'] as String,
      chatId: json['chatId'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ForwardedChatMessageImplToJson(
        _$ForwardedChatMessageImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'authorId': instance.authorId,
      'forwardedMessageId': instance.forwardedMessageId,
      'chatId': instance.chatId,
      'runtimeType': instance.$type,
    };

_$MessageSeenEventImpl _$$MessageSeenEventImplFromJson(
        Map<String, dynamic> json) =>
    _$MessageSeenEventImpl(
      type: json['type'] as String,
      userId: json['userId'] as String,
      messageId: json['messageId'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$MessageSeenEventImplToJson(
        _$MessageSeenEventImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'userId': instance.userId,
      'messageId': instance.messageId,
      'runtimeType': instance.$type,
    };

_$MessageSentEventImpl _$$MessageSentEventImplFromJson(
        Map<String, dynamic> json) =>
    _$MessageSentEventImpl(
      type: json['type'] as String,
      message: Message.fromJson(json['message'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$MessageSentEventImplToJson(
        _$MessageSentEventImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'message': instance.message,
      'runtimeType': instance.$type,
    };
