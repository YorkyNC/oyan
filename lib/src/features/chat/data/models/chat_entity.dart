import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../attachment/domain/entities/attachment_entity.dart';

part 'chat_entity.freezed.dart';
part 'chat_entity.g.dart';

@freezed
class ChatEntity with _$ChatEntity {
  const factory ChatEntity({
    required String type,
    String? title,
    String? description,
    String? chatId,
    String? classId,
    String? schoolId,
    DateTime? createdAt,
    AttachmentEntity? profilePictureId,
    List<ChatMemberEntity>? members,
    MessageEntity? lastMessage,
    int? unreadCount,
    DateTime? latestActivity,
  }) = _ChatEntity;

  factory ChatEntity.fromJson(Map<String, dynamic> json) => _$ChatEntityFromJson(json);
}

@freezed
class ChatMemberEntity with _$ChatMemberEntity {
  const factory ChatMemberEntity({
    required String userId,
    required String firstName,
    required String lastName,
    List<ChatRoleEntity>? roles,
  }) = _ChatMemberEntity;

  factory ChatMemberEntity.fromJson(Map<String, dynamic> json) => _$ChatMemberEntityFromJson(json);
}

@freezed
class ChatRoleEntity with _$ChatRoleEntity {
  const factory ChatRoleEntity({
    required String role,
    String? studentId,
    String? studentFirstName,
    String? studentLastName,
  }) = _ChatRoleEntity;

  factory ChatRoleEntity.fromJson(Map<String, dynamic> json) => _$ChatRoleEntityFromJson(json);
}

@freezed
class MessageEntity with _$MessageEntity {
  const factory MessageEntity({
    String? text,
    String? chatId,
    String? forwardedMessageId,
    String? repliedMessageId,
    ChatMemberEntity? author,
    String? messageId,
    String? id,
    String? authorId,
    DateTime? createdAt,
    bool? isViewed,
    @Default([]) List<AttachmentEntity> attachments,
    bool? isWebsocketMessage,
  }) = _MessageEntity;

  factory MessageEntity.fromJson(Map<String, dynamic> json) => _$MessageEntityFromJson(json);
}

@freezed
class NewMessageEntity with _$NewMessageEntity {
  const factory NewMessageEntity({
    required String content,
    @JsonKey(name: 'chat_id') required String chatId,
    @JsonKey(name: 'forwarded_message_id') String? forwardedMessageId,
    @JsonKey(name: 'replied_message_id') String? repliedMessageId,
    List<AttachmentEntity>? attachments,
  }) = _NewMessageEntity;

  factory NewMessageEntity.fromJson(Map<String, dynamic> json) => _$NewMessageEntityFromJson(json);
}

@freezed
class SentMessageEntity with _$SentMessageEntity {
  const factory SentMessageEntity({
    required String schoolId,
    required String chatId,
    required String messageId,
    // List<AttachmentEntity>? attachments,
  }) = _SentMessageEntity;

  factory SentMessageEntity.fromJson(Map<String, dynamic> json) =>
      _$SentMessageEntityFromJson(json);
}

@freezed
class MessageSentEntity with _$MessageSentEntity {
  const factory MessageSentEntity({
    required String type,
    MessageEntity? message,
    String? userId,
    String? messageId,
    String? chatId,
    DateTime? seenAt,
  }) = _MessageSentEntity;

  factory MessageSentEntity.fromJson(Map<String, dynamic> json) =>
      _$MessageSentEntityFromJson(json);
}

@freezed
class MessageDataEntity with _$MessageDataEntity {
  const factory MessageDataEntity({
    required String id,
    required String chatId,
    required String authorId,
    required String createdAt,
    required String text,
    String? repliedMessageId,
    @Default([]) List<AttachmentEntity> attachments,
  }) = _MessageDataEntity;

  factory MessageDataEntity.fromJson(Map<String, dynamic> json) =>
      _$MessageDataEntityFromJson(json);
}
