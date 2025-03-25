import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/base/base_bloc/bloc/base_bloc.dart';
import '../../../../core/base/base_usecase/result.dart';
import '../../../../core/exceptions/domain_exception.dart';
import '../../../../core/router/router.dart';
import '../../../../core/services/storage/storage_service_impl.dart';
import '../../data/models/chat_entity.dart';
import '../../domain/requests/get_chats_request.dart';
import '../../domain/requests/get_message_request.dart';
import '../../domain/requests/get_messages_request.dart';
import '../../domain/requests/send_message_request.dart';
import '../../domain/requests/view_message_request.dart';
import '../../domain/usecases/get_chats_use_case.dart';
import '../../domain/usecases/get_message_use_case.dart';
import '../../domain/usecases/get_messages_use_case.dart';
import '../../domain/usecases/send_message_use_case.dart';
import '../../domain/usecases/view_message_use_case.dart';

part 'chat_bloc.freezed.dart';
part 'chat_event.dart';
part 'chat_state.dart';

class ChatBloc extends BaseBloc<ChatEvent, ChatState> {
  ChatBloc(
    this.getChatsUseCase,
    this.getMessagesUseCase,
    this.getMessageUseCase,
    this.sendMessageUseCase,
    this.viewMessageUseCase,
  ) : super(const ChatState.loading());

  final GetChatsUseCase getChatsUseCase;
  final GetMessagesUseCase getMessagesUseCase;
  final GetMessageUseCase getMessageUseCase;
  final SendMessageUseCase sendMessageUseCase;
  final ViewMessageUseCase viewMessageUseCase;

  final StorageServiceImpl _storageService = StorageServiceImpl();

  ChatViewModel _viewModel = const ChatViewModel();
  String? _currentMessageId;
  bool _isLoadingMore = false;
  static const int _pageSize = 20;
  bool _hasMoreBefore = true;
  bool _hasMoreAfter = true;

  @override
  Future<void> onEventHandler(ChatEvent event, Emitter emit) async {
    await event.map(
      started: (_) async {},
      getChats: (e) => _getChats(e.request, emit as Emitter<ChatState>),
      getMessages: (e) => _getMessages(e.request, emit as Emitter<ChatState>),
      getMessage: (e) => _getMessage(e.request, emit as Emitter<ChatState>),
      sendMessage: (e) => _sendMessage(e.message, emit as Emitter<ChatState>),
      viewMessage: (e) => _viewMessage(e.message, emit as Emitter<ChatState>),
      newMessageArrived: (e) => _handleNewMessageEvent(e.message, emit as Emitter<ChatState>),
      loadMoreBefore: (e) => _loadMoreMessages(emit as Emitter<ChatState>, e.chatId, e.schoolId,
          before: true, messageId: e.messageId),
      loadMoreAfter: (e) => _loadMoreMessages(emit as Emitter<ChatState>, e.chatId, e.schoolId,
          before: false, messageId: e.messageId),
      error: (e) => _handleError(e.message, emit as Emitter<ChatState>),
    );
  }

  Future<void> _getChats(GetChatsRequest request, Emitter<ChatState> emit) async {
    emit(const ChatState.loading());

    final result = await getChatsUseCase.call(request);

    if (result.isSuccessful) {
      if (result.data!.isNotEmpty) {
        _viewModel = _viewModel.copyWith(chats: result.data!);
      }
      emit(ChatState.loaded(viewModel: _viewModel));
    } else {
      emit(ChatState.errorState(result.failure!.message));
    }
  }

  Future<void> _getMessages(GetMessagesRequest request, Emitter<ChatState> emit) async {
    emit(const ChatState.loading());

    _currentMessageId = request.messageId;
    _hasMoreBefore = true;
    _hasMoreAfter = true;
    _isLoadingMore = false;

    final result = await getMessagesUseCase.call(request);

    if (result.isSuccessful) {
      final messages = result.data!;
      _updatePaginationState(messages);

      // Sort messages in reverse chronological order (newest first)
      messages.sort((a, b) => b.createdAt!.compareTo(a.createdAt!));

      _viewModel = _viewModel.copyWith(
        messages: messages,
        hasMoreBefore: _hasMoreBefore,
        hasMoreAfter: _hasMoreAfter,
      );
      emit(ChatState.loaded(viewModel: _viewModel));
    } else {
      emit(ChatState.errorState(result.failure!.message));
    }
  }

  Future<void> _getMessage(GetMessageRequest request, Emitter<ChatState> emit) async {
    emit(const ChatState.loading());

    _currentMessageId = request.messageId;
    _hasMoreBefore = true;
    _hasMoreAfter = true;
    _isLoadingMore = false;

    final result = await getMessageUseCase.call(request);

    if (result.isSuccessful) {
      _viewModel = _viewModel.copyWith(
        repliedMessage: result.data!,
      );
      emit(ChatState.loaded(viewModel: _viewModel));
    } else {
      emit(ChatState.errorState(result.failure!.message));
    }
  }

  Future<void> _loadMoreMessages(
    Emitter<ChatState> emit,
    String chatId,
    String schoolId, {
    required bool before,
    String? messageId,
  }) async {
    if (_isLoadingMore || (before && !_hasMoreBefore) || (!before && !_hasMoreAfter)) {
      return;
    }

    _isLoadingMore = true;
    emit(ChatState.loadingMore(viewModel: _viewModel));

    final request = GetMessagesRequest(
      schoolId: schoolId,
      chatId: chatId,
      messageId: messageId ?? _currentMessageId,
      before: before ? _pageSize : 0,
      after: before ? 0 : _pageSize,
    );

    final result = await getMessagesUseCase.call(request);

    if (result.isSuccessful) {
      final newMessages = result.data!;
      _updatePaginationState(newMessages, loadingBefore: before);

      // Create a Set of existing message IDs for efficient lookup
      final existingIds = _viewModel.messages?.map((m) => m.messageId).toSet() ?? {};

      // Filter out duplicates from new messages
      final uniqueNewMessages = newMessages.where((msg) => !existingIds.contains(msg.messageId));

      // Combine and sort messages based on timestamp
      final List<MessageEntity> updatedMessages;
      if (before) {
        // Add older messages at the end
        updatedMessages = [...?_viewModel.messages, ...uniqueNewMessages];
      } else {
        // Add newer messages at the beginning
        updatedMessages = [...uniqueNewMessages, ...?_viewModel.messages];
      }

      // Sort all messages by timestamp (newest first)
      updatedMessages.sort((a, b) => b.createdAt!.compareTo(a.createdAt!));

      _viewModel = _viewModel.copyWith(
        messages: updatedMessages,
        hasMoreBefore: _hasMoreBefore,
        hasMoreAfter: _hasMoreAfter,
      );

      _isLoadingMore = false;
      emit(ChatState.loaded(viewModel: _viewModel));
    } else {
      _isLoadingMore = false;
      emit(ChatState.errorState(result.failure!.message));
    }
  }

  Future<void> _viewMessage(ViewMessageRequest message, Emitter<ChatState> emit) async {
    try {
      final Result<String, DomainException> result = await viewMessageUseCase.call(message);

      if (result.isSuccessful) {
        if (_viewModel.messages != null) {
          final updatedMessages = _viewModel.messages!.map((msg) {
            if (msg.messageId == message.messageId) {
              return msg.copyWith(
                isViewed: true,
              );
            }
            return msg;
          }).toList();

          _viewModel = _viewModel.copyWith(
            messages: updatedMessages,
          );

          emit(ChatState.loaded(viewModel: _viewModel));
        }
      } else {
        emit(ChatState.errorState(result.failure!.message));
      }
    } catch (e) {
      emit(ChatState.errorState(e.toString()));
    }
  }

  Future<void> _sendMessage(SendMessageRequest message, Emitter<ChatState> emit) async {
    try {
      final Result<SentMessageEntity, DomainException> result =
          await sendMessageUseCase.call(message);

      if (result.isSuccessful) {
        if (_viewModel.messages != null) {
          final updatedMessages = [
            MessageEntity(
              messageId: result.data!.messageId,
              chatId: result.data!.chatId,
              text: message.text,
              author: ChatMemberEntity(
                userId: getCurrentRole().sub,
                firstName: 'You',
                lastName: '',
              ),
              id: result.data!.messageId,
              createdAt: DateTime.now(),
              isViewed: false,
              attachments: message.attachments!,
              isWebsocketMessage: false,
            ),
            ...?_viewModel.messages
          ];

          _viewModel = _viewModel.copyWith(messages: updatedMessages);
        }

        if (_viewModel.chats != null) {
          final updatedChats = _viewModel.chats!.map((chat) {
            if (chat.chatId == message.chatId) {
              return chat.copyWith(
                unreadCount: 0,
              );
            }
            return chat;
          }).toList();

          _viewModel = _viewModel.copyWith(chats: updatedChats);
        }

        emit(ChatState.loaded(viewModel: _viewModel));
      } else {
        emit(ChatState.errorState(result.failure!.message));
      }
    } catch (e) {
      emit(ChatState.errorState(e.toString()));
    }
  }

  Future<void> _handleNewMessageEvent(MessageEntity message, Emitter<ChatState> emit) async {
    final currentMessages = List<MessageEntity>.from(_viewModel.messages ?? []);

    if (!currentMessages.any((m) => m.messageId == message.id || m.id == message.id)) {
      final newMessage = message.copyWith(isWebsocketMessage: true);
      currentMessages.insert(0, newMessage);

      _viewModel = _viewModel.copyWith(messages: currentMessages);
      emit(ChatState.loaded(viewModel: _viewModel));
    }
  }

  Future<void> _handleError(String message, Emitter<ChatState> emit) async {
    emit(ChatState.errorState(message));
  }

  void _updatePaginationState(List<MessageEntity> messages, {bool? loadingBefore}) {
    if (loadingBefore != null) {
      if (loadingBefore) {
        _hasMoreBefore = messages.length >= _pageSize;
      } else {
        _hasMoreAfter = messages.length >= _pageSize;
      }
    } else {
      _hasMoreBefore = messages.length >= _pageSize;
      _hasMoreAfter = messages.length >= _pageSize;
    }
  }
}
