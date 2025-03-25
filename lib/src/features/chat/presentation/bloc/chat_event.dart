part of 'chat_bloc.dart';

@freezed
class ChatEvent with _$ChatEvent {
  const factory ChatEvent.started() = _Started;
  const factory ChatEvent.getChats(GetChatsRequest request) = _GetChats;
  const factory ChatEvent.getMessages(GetMessagesRequest request) = _GetMessages;
  const factory ChatEvent.getMessage(GetMessageRequest request) = _GetMessage;
  const factory ChatEvent.sendMessage(SendMessageRequest message) = _SendMessage;
  const factory ChatEvent.viewMessage(ViewMessageRequest message) = _ViewMessage;
  const factory ChatEvent.newMessageArrived(MessageEntity message) = _NewMessageArrived;
  const factory ChatEvent.loadMoreBefore(String chatId, String schoolId, {String? messageId}) =
      _LoadMoreBefore;
  const factory ChatEvent.loadMoreAfter(String chatId, String schoolId, {String? messageId}) =
      _LoadMoreAfter;
  const factory ChatEvent.error(String message) = _Error;
}
