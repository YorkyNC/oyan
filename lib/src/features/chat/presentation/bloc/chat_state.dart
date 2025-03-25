part of 'chat_bloc.dart';

@freezed
class ChatState with _$ChatState {
  const factory ChatState.loading() = _Loading;
  const factory ChatState.loadingMore({required ChatViewModel viewModel}) = _LoadingMore;
  const factory ChatState.loaded({required ChatViewModel viewModel}) = _Loaded;
  const factory ChatState.errorState(String message) = _ErrorState;
}

// chat_view_model.dart
@freezed
class ChatViewModel with _$ChatViewModel {
  const factory ChatViewModel({
    @Default([]) List<ChatEntity>? chats,
    @Default([]) List<MessageEntity>? messages,
    @Default(false) bool hasMoreBefore,
    @Default(false) bool hasMoreAfter,
    @Default(null) MessageEntity? repliedMessage,
  }) = _ChatViewModel;
}
