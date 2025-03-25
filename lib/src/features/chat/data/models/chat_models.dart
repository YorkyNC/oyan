import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_models.freezed.dart';
part 'chat_models.g.dart';

@freezed
class ChatResponse with _$ChatResponse {
  const factory ChatResponse({
    required String title,
    required String description,
    required String type,
    required String chatId,
    required String schoolId,
    required DateTime createdAt,
    ProfilePicture? profilePictureId,
    required List<ChatMember> members,
    String? classId,
  }) = _ChatResponse;

  factory ChatResponse.fromJson(Map<String, dynamic> json) => _$ChatResponseFromJson(json);
}

@freezed
class ProfilePicture with _$ProfilePicture {
  const factory ProfilePicture({
    required String id,
    required String url,
    required String fileName,
    required int fileSizeInBytes,
    required String contentType,
  }) = _ProfilePicture;

  factory ProfilePicture.fromJson(Map<String, dynamic> json) => _$ProfilePictureFromJson(json);
}

@freezed
class ChatMember with _$ChatMember {
  const factory ChatMember({
    required String userId,
    required String firstName,
    required String lastName,
    required List<ChatRole> roles,
  }) = _ChatMember;

  factory ChatMember.fromJson(Map<String, dynamic> json) => _$ChatMemberFromJson(json);
}

@freezed
class ChatRole with _$ChatRole {
  const factory ChatRole({
    required String role,
    String? studentId,
    String? studentFirstName,
    String? studentLastName,
  }) = _ChatRole;

  factory ChatRole.fromJson(Map<String, dynamic> json) => _$ChatRoleFromJson(json);
}

@freezed
class GetChatsParams with _$GetChatsParams {
  const factory GetChatsParams({
    required String schoolId,
    required String role,
    String? childId,
    int? limit,
    int? offset,
  }) = _GetChatsParams;
}

@freezed
class Attachment with _$Attachment {
  const factory Attachment({
    required String id,
    required String type,
  }) = _Attachment;

  factory Attachment.fromJson(Map<String, dynamic> json) => _$AttachmentFromJson(json);
}

@freezed
class Message with _$Message {
  const factory Message.originalUser({
    required String id,
    required String authorId,
    required String text,
    String? repliedMessageId,
    @Default([]) List<Attachment> attachments,
    required String recipientId,
  }) = OriginalUserMessage;

  const factory Message.originalChat({
    required String id,
    required String authorId,
    required String text,
    String? repliedMessageId,
    @Default([]) List<Attachment> attachments,
    required String chatId,
  }) = OriginalChatMessage;

  const factory Message.forwardedUser({
    required String id,
    required String authorId,
    required String forwardedMessageId,
    required String recipientId,
  }) = ForwardedUserMessage;

  const factory Message.forwardedChat({
    required String id,
    required String authorId,
    required String forwardedMessageId,
    required String chatId,
  }) = ForwardedChatMessage;

  factory Message.fromJson(Map<String, dynamic> json) => _$MessageFromJson(json);
}

@freezed
class ChatEvent with _$ChatEvent {
  const factory ChatEvent.messageSeen({
    required String type,
    required String userId,
    required String messageId,
  }) = MessageSeenEvent;

  const factory ChatEvent.messageSent({
    required String type,
    required Message message,
  }) = MessageSentEvent;

  factory ChatEvent.fromJson(Map<String, dynamic> json) => _$ChatEventFromJson(json);
}
