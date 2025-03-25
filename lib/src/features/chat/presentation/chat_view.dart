// import 'dart:async';

// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:oyan/src/core/services/injectable/injectable_service.dart';
// import 'package:oyan/src/features/chat/domain/requests/get_messages_request.dart';
// import 'package:oyan/src/features/chat/presentation/bloc/chat_bloc.dart';

// import '../../../core/router/router.dart';
// import '../../../core/services/centrifuge/chat_client.dart';
// import '../data/models/chat_entity.dart';

// class ChatView extends StatefulWidget {
//   final String chatId;
//   final String chatTitle;

//   const ChatView({
//     super.key,
//     required this.chatId,
//     required this.chatTitle,
//   });

//   @override
//   _ChatViewState createState() => _ChatViewState();
// }

// class _ChatViewState extends State<ChatView> {
//   final ScrollController _scrollController = ScrollController();
//   final TextEditingController _textController = TextEditingController();
//   bool _isLoading = true;
//   final ChatBloc _chatBloc = getIt<ChatBloc>();
//   StreamSubscription? _messageSubscription;

//   @override
//   void initState() {
//     super.initState();
//     _initializeChat();
//     _setupScrollController();
//   }

//   void _setupScrollController() {
//     _scrollController.addListener(() {
//       // Near top - load newer messages
//       if (_scrollController.position.pixels <= _scrollController.position.minScrollExtent + 100) {
//         _chatBloc.add(ChatEvent.loadMoreAfter(
//           widget.chatId,
//           roleNotifier.getCurrentSchoolId()!,
//         ));
//       }

//       // Near bottom - load older messages
//       if (_scrollController.position.pixels >= _scrollController.position.maxScrollExtent - 100) {
//         _chatBloc.add(ChatEvent.loadMoreBefore(
//           widget.chatId,
//           roleNotifier.getCurrentSchoolId()!,
//         ));
//       }
//     });
//   }

//   final Map<String, MessageEntity> _pendingMessages = {};

//   Future<void> _handleSendMessage() async {
//     final text = _textController.text.trim();
//     if (text.isEmpty) return;

//     // Create a temporary message
//     final temporaryMessage = MessageEntity(
//       text: text,
//       authorId: getCurrentRole().sub,
//       chatId: widget.chatId,
//       createdAt: DateTime.now(),
//       isWebsocketMessage: false,
//       id: DateTime.now().millisecondsSinceEpoch.toString(),
//     );

//     // Store in pending messages
//     _pendingMessages[temporaryMessage.id!] = temporaryMessage;

//     _textController.clear();

//     try {
//       await getIt<ChatClient>().sendMessage(
//         NewMessageEntity(
//           content: text,
//           chatId: widget.chatId,
//         ),
//       );
//     } catch (e) {
//       debugPrint('Failed to send message: $e');
//       if (mounted) {
//         // Remove from pending on error
//         _pendingMessages.remove(temporaryMessage.id);
//         ScaffoldMessenger.of(context).showSnackBar(
//           const SnackBar(content: Text('Failed to send message')),
//         );
//       }
//     }
//   }

//   void _handleIncomingMessage(MessageSentEntity messageSent) {
//     if (!mounted) return;

//     final messageId = messageSent.message.id ??
//         messageSent.message.messageId ??
//         DateTime.now().millisecondsSinceEpoch.toString();

//     final isOwnMessage = messageSent.message.authorId == getCurrentRole().sub.replaceAll('-', '');

//     if (isOwnMessage) {
//       // Find pending message that matches this one
//       final pendingEntry = _pendingMessages.entries.where((entry) {
//         final pending = messageSent.message.text!.toLowerCase();
//         final original = entry.value.text!.toLowerCase();
//         return pending == original;
//       }).toList();

//       for (final entry in pendingEntry) {
//         // Create updated version (might have censored text etc.)
//         final updatedMessage = entry.value.copyWith(
//           text: messageSent.message.text,
//           id: messageId,
//           isViewed: messageSent.message.isViewed,
//           repliedMessageId: messageSent.message.repliedMessageId,
//         );

//         // Add to bloc to update message list
//         _chatBloc.add(ChatEvent.newMessageArrived(updatedMessage));

//         // Remove from pending
//         _pendingMessages.remove(entry.key);
//       }
//     } else {
//       // For messages from others, simply add them through bloc
//       final newMessage = messageSent.message.copyWith(
//         isWebsocketMessage: true,
//       );
//       _chatBloc.add(ChatEvent.newMessageArrived(newMessage));
//     }
//   }

//   Future<void> _initializeChat() async {
//     try {
//       final chatClient = getIt<ChatClient>();
//       await chatClient.subscribe('personal:#${widget.chatId}');

//       _messageSubscription = chatClient.messages.listen(
//         (messageSent) {
//           if (mounted && messageSent.message.chatId == widget.chatId.replaceAll('-', '')) {
//             _handleIncomingMessage(messageSent);
//           }
//         },
//         onError: (error) {
//           debugPrint('Chat error: $error');
//           setState(() => _isLoading = false);
//         },
//       );

//       _chatBloc.add(ChatEvent.getMessages(
//         GetMessagesRequest(
//           chatId: widget.chatId,
//           schoolId: roleNotifier.getCurrentSchoolId()!,
//         ),
//       ));
//     } catch (e) {
//       debugPrint('Failed to initialize chat: $e');
//       setState(() => _isLoading = false);
//     }
//   }

//   @override
//   void dispose() {
//     _messageSubscription?.cancel();
//     _scrollController.dispose();
//     _textController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.chatTitle),
//         elevation: 1,
//       ),
//       body: BlocConsumer<ChatBloc, ChatState>(
//         bloc: _chatBloc,
//         listener: (context, state) {
//           state.maybeWhen(
//             loaded: (viewModel) {
//               if (_isLoading) {
//                 setState(() => _isLoading = false);
//               }
//             },
//             errorState: (message) {
//               ScaffoldMessenger.of(context).showSnackBar(
//                 SnackBar(content: Text(message)),
//               );
//             },
//             orElse: () {},
//           );
//         },
//         builder: (context, state) {
//           return state.maybeWhen(
//             loading: () => const Center(child: CircularProgressIndicator()),
//             loadingMore: (viewModel) => _buildChatContent(viewModel, isLoadingMore: true),
//             loaded: (viewModel) => _buildChatContent(viewModel),
//             errorState: (_) => _buildChatContent(const ChatViewModel()),
//             orElse: () => const Center(child: CircularProgressIndicator()),
//           );
//         },
//       ),
//     );
//   }

//   Widget _buildChatContent(ChatViewModel viewModel, {bool isLoadingMore = false}) {
//     return Column(
//       children: [
//         if (isLoadingMore) const LinearProgressIndicator(),
//         Expanded(
//           child: ListView.builder(
//             controller: _scrollController,
//             padding: const EdgeInsets.all(8),
//             itemCount: viewModel.messages?.length ?? 0,
//             // Note: Not using reverse here since we're handling order in the bloc
//             itemBuilder: (context, index) {
//               final message = viewModel.messages![index];
//               final isCurrentUser = message.authorId == getCurrentRole().sub;
//               return _MessageBubble(
//                 message: message,
//                 isCurrentUser: isCurrentUser,
//               );
//             },
//           ),
//         ),
//         _buildInputField(),
//       ],
//     );
//   }

//   void _scrollToBottom() {
//     if (_scrollController.hasClients) {
//       _scrollController.animateTo(
//         0,
//         duration: const Duration(milliseconds: 300),
//         curve: Curves.easeOut,
//       );
//     }
//   }

//   // Future<void> _handleSendMessage() async {
//   //   final text = _textController.text.trim();
//   //   if (text.isEmpty) return;

//   //   _textController.clear();
//   //   _scrollToBottom();

//   //   try {
//   //     await getIt<ChatClient>().sendMessage(
//   //       NewMessageEntity(
//   //         content: text,
//   //         chatId: widget.chatId,
//   //       ),
//   //     );
//   //   } catch (e) {
//   //     debugPrint('Failed to send message: $e');
//   //     // Show error and remove message from list
//   //     if (mounted) {
//   //       ScaffoldMessenger.of(context).showSnackBar(
//   //         const SnackBar(content: Text('Failed to send message')),
//   //       );
//   //     }
//   //   }
//   // }

//   Widget _buildInputField() {
//     return Container(
//       padding: EdgeInsets.only(
//         left: 16,
//         right: 16,
//         top: 8,
//         bottom: MediaQuery.of(context).padding.bottom + 8,
//       ),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         boxShadow: [
//           BoxShadow(
//             color: Colors.black.withOpacity(0.05),
//             offset: const Offset(0, -1),
//             blurRadius: 5,
//           ),
//         ],
//       ),
//       child: Row(
//         children: [
//           Expanded(
//             child: Container(
//               decoration: BoxDecoration(
//                 color: Colors.grey[100],
//                 borderRadius: BorderRadius.circular(24),
//               ),
//               child: TextField(
//                 controller: _textController,
//                 decoration: const InputDecoration(
//                   hintText: 'Type a message',
//                   contentPadding: EdgeInsets.symmetric(
//                     horizontal: 16,
//                     vertical: 10,
//                   ),
//                   border: InputBorder.none,
//                 ),
//                 maxLines: null,
//                 textCapitalization: TextCapitalization.sentences,
//                 onSubmitted: (_) => _handleSendMessage(),
//               ),
//             ),
//           ),
//           const SizedBox(width: 8),
//           IconButton(
//             icon: const Icon(Icons.send),
//             color: Theme.of(context).primaryColor,
//             onPressed: _handleSendMessage,
//           ),
//         ],
//       ),
//     );
//   }
// }

// class _MessageBubble extends StatelessWidget {
//   final MessageEntity message;
//   final bool isCurrentUser;

//   const _MessageBubble({
//     required this.message,
//     required this.isCurrentUser,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 4),
//       child: Align(
//         alignment: isCurrentUser ? Alignment.centerRight : Alignment.centerLeft,
//         child: Container(
//           constraints: BoxConstraints(
//             maxWidth: MediaQuery.of(context).size.width * 0.75,
//           ),
//           padding: const EdgeInsets.symmetric(
//             horizontal: 16,
//             vertical: 10,
//           ),
//           decoration: BoxDecoration(
//             color: isCurrentUser ? Theme.of(context).primaryColor : Colors.grey[200],
//             borderRadius: BorderRadius.circular(16).copyWith(
//               bottomRight: isCurrentUser ? const Radius.circular(4) : null,
//               bottomLeft: !isCurrentUser ? const Radius.circular(4) : null,
//             ),
//           ),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               if (!isCurrentUser && message.author?.firstName != null)
//                 Padding(
//                   padding: const EdgeInsets.only(bottom: 4),
//                   child: Text(
//                     message.author!.firstName,
//                     style: TextStyle(
//                       fontSize: 12,
//                       fontWeight: FontWeight.bold,
//                       color: isCurrentUser ? Colors.white70 : Colors.grey[600],
//                     ),
//                   ),
//                 ),
//               Text(
//                 message.text ?? '',
//                 style: TextStyle(
//                   color: isCurrentUser ? Colors.white : Colors.black,
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
