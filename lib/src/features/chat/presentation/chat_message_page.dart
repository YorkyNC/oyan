// import 'dart:async';
// import 'dart:developer';

// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
// import 'package:flutter_chat_ui/flutter_chat_ui.dart' as chat_ui;
// import 'package:go_router/go_router.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:intl/intl.dart';
// import 'package:scroll_to_index/scroll_to_index.dart';

// import '../../../core/router/router.dart';
// import '../../../core/services/centrifuge/chat_client.dart';
// import '../../../core/services/centrifuge/chat_service.dart';
// import '../../../core/services/injectable/injectable_service.dart';
// import '../data/models/chat_entity.dart' as chatEntity;
// import '../domain/requests/get_message_request.dart';
// import '../domain/usecases/get_message_use_case.dart';
// import 'bloc/chat_bloc.dart';
// import 'components/chat_helper_methods.dart';
// import 'components/widget/bottom_widget.dart';
// import 'components/widget/chat_selection_actions.dart';
// import 'components/widget/message_bubble.dart';

// class ChatMessagePage extends StatefulWidget {
//   final String chatId;
//   final String chatTitle;

//   const ChatMessagePage({
//     super.key,
//     required this.chatId,
//     required this.chatTitle,
//   });

//   @override
//   _ChatMessagePageState createState() => _ChatMessagePageState();
// }

// class _ChatMessagePageState extends State<ChatMessagePage> with WidgetsBindingObserver {
//   bool _isAppInForeground = true;
//   AutoScrollController _scrollController = AutoScrollController();
//   final ChatClient _chatClient = getIt<ChatClient>();
//   final ChatBloc _chatBloc = getIt<ChatBloc>();
//   final TextEditingController _controller = TextEditingController();

//   bool _isInitialLoad = true;
//   types.Message? _repliedMessage;

//   List<types.Message> _messages = [];
//   final List<types.Message> _pinnedMessages = [];
//   List<String> selectedMessageIds = [];

//   final List<XFile> _selectedImages = [];
//   final List<XFile> _selectedFiles = [];
//   final List<String> _attachmentIds = [];
//   StreamSubscription<chatEntity.MessageSentEntity>? _messageSubscription;
//   final _user = types.User(id: getCurrentRole().sub, firstName: 'gun');

//   bool get _isSelectionMode => selectedMessageIds.isNotEmpty;

//   @override
//   void initState() {
//     _initializeChat();
//     WidgetsBinding.instance.addObserver(this);
//     _isAppInForeground = true;
//     _scrollController = AutoScrollController(
//       viewportBoundaryGetter: () => Rect.fromLTRB(0, 0, 0, MediaQuery.of(context).padding.bottom),
//       axis: Axis.vertical,
//     );
//     super.initState();
//   }

//   Future<void> _initializeChat() async {
//     try {
//       _messageSubscription = _chatClient.messages.listen(
//         (messageSent) {
//           if (mounted && messageSent.message?.chatId == widget.chatId) {
//             _handleIncomingMessage(messageSent);

//             final isOwnMessage = messageSent.message?.authorId == getCurrentRole().sub;
//             if (!isOwnMessage && !_isAppInForeground) {
//               ChatService.showNotification(
//                 messageSent.message?.author?.firstName ?? 'User',
//                 messageSent.message?.text ?? '',
//               );
//             }
//           }
//         },
//         onError: (error) {
//           debugPrint('WebSocket error: $error');
//         },
//       );

//       _chatBloc.add(
//         ChatEvent.getMessages(
//           GetMessagesRequest(
//             schoolId: roleNotifier.getCurrentSchoolId()!,
//             chatId: widget.chatId,
//           ),
//         ),
//       );
//     } catch (e) {
//       debugPrint('Failed to initialize chat: $e');
//     }
//   }

//   @override
//   void dispose() {
//     debugPrint('Disposing chat page');
//     _messageSubscription?.cancel();
//     _controller.dispose();
//     _scrollController.dispose();
//     WidgetsBinding.instance.removeObserver(this);
//     super.dispose();
//   }

//   void removeDuplicateMessages() {
//     final seenIds = <String>{};
//     _messages = _messages.where((message) {
//       final isFirstOccurrence = !seenIds.contains(message.id);
//       if (isFirstOccurrence) {
//         seenIds.add(message.id);
//       }
//       return isFirstOccurrence;
//     }).toList();
//   }

//   // Update the message creation logic in _handleIncomingMessage
//   Future<void> _handleIncomingMessage(chatEntity.MessageSentEntity messageSent) async {
//     log('Message received at: ${DateTime.now().millisecondsSinceEpoch}');
//     if (!mounted) return;

//     if (messageSent.type != 'MessageSent') return;

//     if (messageSent.type == 'MessageSent' && messageSent.message != null) {
//       final message = messageSent.message!;
//       final messageId = message.id ?? message.messageId ?? '';
//       final isOwnMessage = message.authorId == getCurrentRole().sub;

//       final messageTimestamp = convertToLocalTime(message.createdAt!).millisecondsSinceEpoch;

//       // Check if message already exists
//       if (_messages.any((m) => m.id == messageId)) {
//         return; // Skip if already exists
//       }

//       GetMessageUseCase getMessageUseCase = getIt<GetMessageUseCase>();
//       GetAttachmentUseCase getAttachmentUseCase = getIt<GetAttachmentUseCase>();

//       String authorFirstName = '';
//       String authorLastName = '';

//       await getMessageUseCase
//           .execute(
//         GetMessageRequest(
//           messageId: message.id!,
//           schoolId: schoolId,
//         ),
//       )
//           .then(
//         (result) {
//           return result.fold(
//             (error) => ScaffoldMessenger.of(context).showSnackBar(
//               CustomSnackBar.show(title: error.message, seconds: 2),
//             ),
//             (response) async {
//               setState(() {
//                 authorFirstName = response.author!.firstName;
//                 authorLastName = response.author!.lastName;
//               });

//               // Create base metadata
//               Map<String, dynamic> metadata = {
//                 'isViewed': isOwnMessage ? true : false,
//                 'roles':
//                     response.author?.roles != null ? processRoles(response.author!.roles!) : [],
//                 if (message.attachments.isNotEmpty) 'attachmentIds': message.attachments,
//               };

//               // Add replied message ID if exists
//               if (message.repliedMessageId != null) {
//                 metadata['repliedMessageId'] = message.repliedMessageId;
//               }

//               final author = isOwnMessage
//                   ? _user
//                   : types.User(
//                       id: message.authorId!,
//                       firstName: authorFirstName,
//                       lastName: authorLastName,
//                       metadata: {
//                         'roles': response.author?.roles != null
//                             ? processRoles(response.author!.roles!)
//                             : [],
//                       },
//                     );

//               types.Message newMessage;

//               if (message.attachments.isNotEmpty) {
//                 final attachmentResult = await getAttachmentUseCase.execute(
//                   GetAttachmentRequest(
//                     attachmentId: message.attachments[0].id!,
//                   ),
//                 );

//                 attachmentResult.fold(
//                   (error) => ScaffoldMessenger.of(context).showSnackBar(
//                     CustomSnackBar.show(title: error.message, seconds: 2),
//                   ),
//                   (attachment) {
//                     if (attachment.type?.toLowerCase().contains('media') ?? false) {
//                       newMessage = types.ImageMessage(
//                         author: author,
//                         id: messageId,
//                         name: message.text ?? 'Image',
//                         size: attachment.fileSizeInBytes ?? 0,
//                         uri: attachment.url!,
//                         createdAt: messageTimestamp,
//                         metadata: {
//                           ...metadata,
//                           'url': attachment.url!,
//                           'text': message.text, // Store original text in metadata
//                         },
//                       );
//                     } else {
//                       newMessage = types.FileMessage(
//                         author: author,
//                         id: messageId,
//                         name: message.text ?? 'File',
//                         size: attachment.fileSizeInBytes ?? 0,
//                         uri: attachment.url!,
//                         createdAt: messageTimestamp,
//                         metadata: {
//                           ...metadata,
//                           'url': attachment.url!,
//                         },
//                       );
//                     }

//                     if (!_messages.any((m) => m.id == messageId)) {
//                       setState(() {
//                         _messages = [newMessage, ..._messages];
//                         removeDuplicateMessages();
//                       });
//                     }
//                   },
//                 );
//               } else {
//                 newMessage = types.TextMessage(
//                   author: author,
//                   id: messageId,
//                   text: message.text ?? '',
//                   createdAt: messageTimestamp,
//                   metadata: metadata,
//                 );

//                 if (!_messages.any((m) => m.id == messageId)) {
//                   setState(() {
//                     _messages = [newMessage, ..._messages];
//                     removeDuplicateMessages();
//                   });
//                 }
//               }
//             },
//           );
//         },
//       );
//     }
//   }

//   //convert List<String> to List<AttachmentEntity>
//   List<AttachmentEntity> _convertAttachments(List<String> attachmentIds) {
//     return List<AttachmentEntity>.from(
//         attachmentIds.map((id) => AttachmentEntity(id: id, type: 'media')));
//   }

//   Future<void> _handleSendPressed(types.PartialText message) async {
//     // if (message.text.trim().isEmpty) return;

//     try {
//       final request = SendMessageRequest(
//         text: message.text,
//         chatId: widget.chatId,
//         repliedMessageId: _repliedMessage?.id,
//         isViewed: true,
//         attachments: _convertAttachments(_attachmentIds),
//       );

//       _chatBloc.add(ChatEvent.sendMessage(request));

//       _controller.clear();
//       _attachmentIds.clear();
//       _repliedMessage = null;
//       _selectedImages.clear();
//     } catch (e) {
//       debugPrint('Error sending message: $e');
//       ScaffoldMessenger.of(context).showSnackBar(
//         CustomSnackBar.show(title: context.loc.error, seconds: 2),
//       );
//     }
//   }

//   void _cancelReply() {
//     setState(() {
//       _repliedMessage = null;
//     });
//   }

//   void _toggleMessageSelection(String messageId) {
//     debugPrint('Toggling selection for message: $messageId'); // Add debug print
//     setState(() {
//       if (selectedMessageIds.contains(messageId)) {
//         selectedMessageIds.remove(messageId);
//       } else {
//         selectedMessageIds.add(messageId);
//       }
//     });
//   }

//   void _handleReply(types.Message message) {
//     setState(() {
//       _repliedMessage = message;
//       selectedMessageIds.clear();
//     });
//   }

//   void _handleCopy() {
//     final selectedMessage =
//         _messages.firstWhere((message) => selectedMessageIds.contains(message.id));

//     if (selectedMessage is types.TextMessage) {
//       Clipboard.setData(ClipboardData(text: selectedMessage.text));
//       ScaffoldMessenger.of(context).showSnackBar(
//         CustomSnackBar.show(title: context.loc.messageCopiedToClipboard, seconds: 1),
//       );
//     } else if (selectedMessage is types.ImageMessage) {
//       Clipboard.setData(ClipboardData(text: selectedMessage.uri));
//       ScaffoldMessenger.of(context).showSnackBar(
//         CustomSnackBar.show(title: context.loc.messageCopiedToClipboard, seconds: 1),
//       );
//     }
//     ScaffoldMessenger.of(context).showSnackBar(
//       CustomSnackBar.show(title: context.loc.messageCopiedToClipboard, seconds: 1),
//     );
//     setState(() {
//       selectedMessageIds.clear();
//     });
//   }

//   void _handleForward() {
//     ScaffoldMessenger.of(context).showSnackBar(
//       CustomSnackBar.show(title: context.loc.forwardTapped, seconds: 1),
//     );
//     setState(() {
//       selectedMessageIds.clear();
//     });
//   }

//   void _handlePin(types.Message message) {
//     setState(() {
//       if (!_pinnedMessages.contains(message)) {
//         _pinnedMessages.add(message);
//       }
//       selectedMessageIds.clear();
//     });
//   }

//   void _handleUnpin(types.Message message) {
//     showCupertinoDialog(
//       context: context,
//       builder: (BuildContext context) {
//         return CupertinoAlertDialog(
//           content: Text(context.loc.areYouSureYouWantToUnpinThisMessage),
//           actions: <CupertinoDialogAction>[
//             CupertinoDialogAction(
//               onPressed: () {
//                 context.pop();
//               },
//               child: Text(context.loc.cancel),
//             ),
//             CupertinoDialogAction(
//               onPressed: () {
//                 setState(() {
//                   _pinnedMessages.remove(message);
//                 });
//                 context.pop();
//               },
//               isDestructiveAction: true,
//               child: Text(context.loc.unpin),
//             ),
//           ],
//         );
//       },
//     );
//   }

//   void _scrollToMessage(types.Message message) {
//     int index = _messages.indexWhere((m) => m.id == message.id);
//     if (index != -1) {
//       _scrollController.scrollToIndex(
//         index,
//         duration: const Duration(milliseconds: 100),
//       );
//     }
//   }

//   PreferredSizeWidget _buildAppBar() {
//     return AppBar(
//       backgroundColor: context.colors.white,
//       elevation: 0,
//       leading: IconButton(
//         icon: const Icon(AppIcons.chevron_left, color: CupertinoColors.black, size: 24),
//         onPressed: () => context.pop(),
//       ),
//       actions: _isSelectionMode
//           ? MessageSelectionHandler(
//               selectedMessageIds: selectedMessageIds,
//               messages: _messages,
//               onReplyPressed: _handleReply,
//               onCopyPressed: _handleCopy,
//               onForwardPressed: _handleForward,
//               onPinPressed: _handlePin,
//             ).buildSelectionActions()
//           : buildDefaultActions(context),
//       title: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             _isSelectionMode ? '${selectedMessageIds.length}' : widget.chatTitle,
//             style: const TextStyle(
//               fontSize: 16,
//               fontWeight: FontWeight.w700,
//               color: CupertinoColors.black,
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   List<Widget> buildSelectionActions() {
//     return [
//       if (selectedMessageIds.length == 1)
//         IconButton(
//           icon: const Icon(AppIcons.turn_left, color: CupertinoColors.black, size: 24),
//           onPressed: () {
//             final selectedMessage = _messages.firstWhere(
//               (message) => selectedMessageIds.contains(message.id),
//             );
//             _handleReply(selectedMessage);
//           },
//         ),
//       IconButton(
//         icon: const Icon(AppIcons.copy_1, color: CupertinoColors.black),
//         onPressed: _handleCopy,
//       ),
//       IconButton(
//         icon: const Icon(AppIcons.turn, color: CupertinoColors.black),
//         onPressed: _handleForward,
//       ),
//       IconButton(
//         icon: const Icon(AppIcons.pin_1, color: CupertinoColors.black),
//         onPressed: () {
//           final selectedMessage = _messages.firstWhere(
//             (message) => selectedMessageIds.contains(message.id),
//           );
//           _handlePin(selectedMessage);
//         },
//       ),
//     ];
//   }

//   // final selectionHandler = MessageSelectionHandler(
//   //   selectedMessageIds: selectedMessageIds,
//   //   messages: _messages,
//   //   onReplyPressed: _handleReply,
//   //   onCopyPressed: _handleCopy,
//   //   onForwardPressed: _handleForward,
//   //   onPinPressed: _handlePin,
//   // );

//   bool _isLoadingBefore = false;

//   bool _isLoadingAfter = false;

//   bool _handleScrollNotification(ScrollNotification scrollInfo) {
//     if (scrollInfo is ScrollUpdateNotification) {
//       if (scrollInfo.metrics.pixels >= scrollInfo.metrics.maxScrollExtent - 200 &&
//           !_isLoadingBefore) {
//         _loadOlderMessages();
//       }

//       if (scrollInfo.metrics.pixels <= scrollInfo.metrics.minScrollExtent + 200 &&
//           !_isLoadingAfter) {
//         _loadNewerMessages();
//       }
//     }
//     return false;
//   }

//   void _loadOlderMessages() {
//     if (_isLoadingBefore || _messages.isEmpty) return;

//     setState(() => _isLoadingBefore = true);

//     final oldestMessage = _messages.last;
//     _chatBloc.add(ChatEvent.loadMoreBefore(
//       widget.chatId,
//       roleNotifier.getCurrentSchoolId()!,
//       messageId: oldestMessage.id,
//     ));
//   }

//   void _loadNewerMessages() {
//     if (_isLoadingAfter || _messages.isEmpty) return;

//     setState(() => _isLoadingAfter = true);

//     final newestMessage = _messages.first;
//     _chatBloc.add(ChatEvent.loadMoreAfter(
//       widget.chatId,
//       roleNotifier.getCurrentSchoolId()!,
//       messageId: newestMessage.id,
//     ));
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: context.colors.white,
//       appBar: _buildAppBar(),
//       body: BaseBlocWidget<ChatBloc, ChatEvent, ChatState>(
//         bloc: _chatBloc,
//         listener: (context, state) {
//           state.maybeWhen(
//             loaded: (viewModel) {
//               if (!mounted) return;
//               WidgetsBinding.instance.addPostFrameCallback((_) {
//                 setState(() {
//                   _isLoadingBefore = false;
//                   _isLoadingAfter = false;

//                   if (_isInitialLoad) {
//                     _isInitialLoad = false;
//                     if (_scrollController.hasClients) {
//                       _scrollController.jumpTo(_scrollController.position.maxScrollExtent);
//                     }
//                   }
//                 });
//               });
//             },
//             errorState: (message) {
//               if (!mounted) return;
//               setState(() {
//                 _isLoadingBefore = false;
//                 _isLoadingAfter = false;
//               });
//               debugPrint('ChatViewModel error: $message');
//               ScaffoldMessenger.of(context).showSnackBar(
//                 SnackBar(content: Text(message)),
//               );
//             },
//             orElse: () {},
//           );
//         },
//         builder: (context, state, bloc) {
//           return state.maybeWhen(
//             loading: () => const Center(child: CircularProgressIndicator()),
//             loadingMore: (viewModel) => buildChatUI(viewModel.messages ?? []),
//             loaded: (viewModel) => buildChatUI(viewModel.messages ?? []),
//             errorState: (message) => Center(child: Text(message)),
//             orElse: () => const SizedBox.shrink(),
//           );
//         },
//       ),
//     );
//   }

//   Widget buildChatUI(List<chatEntity.MessageEntity> messages) {
//     Map<String, types.Message> uniqueMessages = {};

//     for (final message in messages) {
//       final messageId = message.messageId ?? message.id!;
//       final isOwnMessage = message.author?.userId == getCurrentRole().sub ||
//           message.authorId == getCurrentRole().sub;

//       final timestamp = message.createdAt!;

//       if (message.isWebsocketMessage == false) {
//         continue;
//       }

//       final messageTimestamp = convertToLocalTime(timestamp).millisecondsSinceEpoch;
//       final author = types.User(
//         id: message.author?.userId ?? message.authorId ?? '',
//         firstName: message.author?.firstName ?? '',
//         lastName: message.author?.lastName,
//         metadata: {
//           'roles': message.author?.roles != null ? processRoles(message.author!.roles!) : [],
//         },
//       );

//       Map<String, dynamic> metadata = {
//         'isViewed': isOwnMessage ? true : message.isViewed,
//         'roles': message.author?.roles != null ? processRoles(message.author!.roles!) : [],
//       };

//       if (message.repliedMessageId != null) {
//         metadata['repliedMessageId'] = message.repliedMessageId;
//       }

//       if (message.attachments.isNotEmpty) {
//         final attachment = message.attachments[0];
//         if (attachment.type?.toLowerCase().contains('media') ?? false) {
//           uniqueMessages[messageId] = types.ImageMessage(
//             author: author,
//             id: messageId,
//             name: message.text ?? 'Image',
//             size: attachment.fileSizeInBytes ?? 0,
//             uri: attachment.url!,
//             createdAt: messageTimestamp,
//             metadata: {
//               'url': attachment.url!,
//               'text': message.text,
//               'roles': message.author?.roles != null ? processRoles(message.author!.roles!) : [],
//               ...metadata,
//             },
//           );
//         } else {
//           uniqueMessages[messageId] = types.FileMessage(
//             author: author,
//             id: messageId,
//             name: message.text ?? 'File',
//             size: attachment.fileSizeInBytes ?? 0,
//             uri: attachment.url!,
//             createdAt: messageTimestamp,
//             metadata: {
//               'url': attachment.url!,
//               'roles': message.author?.roles != null ? processRoles(message.author!.roles!) : [],
//               ...metadata,
//             },
//           );
//         }
//       } else {
//         uniqueMessages[messageId] = types.TextMessage(
//           author: author,
//           id: messageId,
//           text: message.text ?? '',
//           createdAt: messageTimestamp,
//           metadata: metadata,
//         );
//       }
//     }

//     for (final message in _messages) {
//       if (!uniqueMessages.containsKey(message.id)) {
//         uniqueMessages[message.id] = message;
//       }
//     }

//     final sortedMessages = uniqueMessages.values.toList()
//       ..sort((a, b) => (b.createdAt ?? 0).compareTo(a.createdAt ?? 0));

//     if (!_areMessageListsEqual(_messages, sortedMessages)) {
//       _messages = sortedMessages;
//     }

//     void handleAttachmentChange(
//       List<XFile>? images,
//       List<XFile>? files,
//       List<String>? attachmentIds,
//     ) {
//       setState(() {
//         _selectedImages.clear();
//         _selectedImages.addAll(images!);
//         _selectedFiles.clear();
//         _selectedFiles.addAll(files!);
//         _attachmentIds.clear();
//         _attachmentIds.addAll(attachmentIds!);
//       });
//     }

//     return Material(
//       color: Colors.white,
//       child: Column(
//         children: [
//           if (_pinnedMessages.isNotEmpty)
//             PinnedMessagesSection(
//               pinnedMessages: _pinnedMessages,
//               onUnpin: _handleUnpin,
//               onMessageTap: (p0) {
//                 _scrollToMessage(p0);
//               },
//               pinnedMessageLabel: context.loc.pinnedMessage,
//             ),
//           if (_isLoadingAfter)
//             const Padding(
//               padding: EdgeInsets.all(8.0),
//               child: LinearProgressIndicator(),
//             ),
//           Expanded(
//             child: NotificationListener<ScrollNotification>(
//               onNotification: _handleScrollNotification,
//               child: chat_ui.Chat(
//                 onMessageLongPress: (context, message) {
//                   _toggleMessageSelection(message.id);
//                 },
//                 timeFormat: DateFormat('HH:mm'),
//                 messages: _messages,
//                 onSendPressed: _handleSendPressed,
//                 user: _user,
//                 onMessageVisibilityChanged: (message, visible) {
//                   if (visible &&
//                       message.metadata?['isViewed'] == false &&
//                       message.author.id != _user.id) {
//                     _chatBloc.add(ChatEvent.viewMessage(
//                       ViewMessageRequest(messageId: message.id),
//                     ));
//                   }
//                 },
//                 bubbleBuilder: (
//                   Widget child, {
//                   required types.Message message,
//                   required bool nextMessageInGroup,
//                 }) =>
//                     _buildMessageBubble(
//                   child,
//                   message: message,
//                   nextMessageInGroup: nextMessageInGroup,
//                 ),
//                 theme: defaultChatTheme,
//                 scrollController: _scrollController,
//                 customBottomWidget: BottomWidget(
//                   repliedMessage: _repliedMessage,
//                   onCancelReply: () => setState(() => _repliedMessage = null),
//                   selectedImages: _selectedImages,
//                   controller: _controller,
//                   onMessageSubmitted: (value) {
//                     if (value.trim().isNotEmpty || _attachmentIds.isNotEmpty) {
//                       _handleSendPressed(
//                         types.PartialText(
//                           text: value.trim(),
//                           metadata: {
//                             if (_repliedMessage != null) 'repliedMessageId': _repliedMessage!.id,
//                             if (_attachmentIds.isNotEmpty) 'attachmentIds': _attachmentIds,
//                           },
//                         ),
//                       );
//                     }
//                   },
//                   onAttachmentIdsChanged: handleAttachmentChange,
//                   selectedFiles: _selectedFiles,
//                   attachmentIds: _attachmentIds,
//                 ),
//               ),
//             ),
//           ),
//           if (_isLoadingBefore)
//             const Padding(
//               padding: EdgeInsets.all(8.0),
//               child: LinearProgressIndicator(),
//             ),
//         ],
//       ),
//     );
//   }

//   Widget _buildMessageBubble(
//     Widget child, {
//     required types.Message message,
//     required bool nextMessageInGroup,
//   }) {
//     return MessageBubble(
//       message: message,
//       isCurrentUser: message.author.id == getCurrentRole().sub,
//       nextMessageInGroup: nextMessageInGroup,
//       isSelected: selectedMessageIds.contains(message.id),
//       onLongPress: () => _toggleMessageSelection(message.id),
//     );
//   }

//   bool _areMessageListsEqual(List<types.Message> list1, List<types.Message> list2) {
//     if (list1.length != list2.length) return false;
//     for (var i = 0; i < list1.length; i++) {
//       if (list1[i].id != list2[i].id) return false;

//       if (list1[i] is types.TextMessage && list2[i] is types.TextMessage) {
//         if ((list1[i] as types.TextMessage).text != (list2[i] as types.TextMessage).text) {
//           return false;
//         }
//       } else if (list1[i] is types.ImageMessage && list2[i] is types.ImageMessage) {
//         if ((list1[i] as types.ImageMessage).uri != (list2[i] as types.ImageMessage).uri) {
//           return false;
//         }
//       } else if (list1[i] is types.FileMessage && list2[i] is types.FileMessage) {
//         if ((list1[i] as types.FileMessage).uri != (list2[i] as types.FileMessage).uri) {
//           return false;
//         }
//       }
//     }
//     return true;
//   }
// }

// extension on AppLifecycleState {
//   bool get isInForeground => this == AppLifecycleState.resumed;
// }
