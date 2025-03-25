// import 'package:flutter/cupertino.dart';
// import 'package:oyan/core/extensions/build_context_extension.dart';
// import 'package:oyan/src/app/imports.dart';
// import 'package:oyan/src/core/theme/colors.dart';
// import 'package:oyan/src/core/theme/typography.dart';
// import 'package:oyan/src/features/chat/presentation/bloc/chat_bloc.dart';
// import 'package:provider/provider.dart' as p;

// import '../../../core/base/base_bloc/bloc/base_bloc_widget.dart';
// import '../../../core/router/router.dart';
// import '../../../core/services/auth/role_notifier.dart';
// import '../../../core/services/injectable/injectable_service.dart';
// import '../../search_bar/presentation/searchBar_widget.dart';
// import '../domain/requests/get_chats_request.dart';
// import 'chat_card.dart';

// class ChatPage extends StatefulWidget {
//   const ChatPage({super.key});

//   @override
//   _ChatScreenState createState() => _ChatScreenState();
// }

// class _ChatScreenState extends State<ChatPage> {
//   @override
//   void initState() {
//     super.initState();
//   }

//   @override
//   void dispose() {
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return p.Consumer<RoleNotifier>(
//       builder: (context, roleNotifier, _) {
//         return Scaffold(
//           backgroundColor: CupertinoColors.systemBackground,
//           appBar: AppBar(
//             title: Text(
//               context.loc.chats,
//               style: const FigmaTextStyles().typography3Bold.copyWith(
//                     color: context.colors.black,
//                   ),
//             ),
//             backgroundColor: CupertinoColors.systemBackground,
//             centerTitle: true,
//             elevation: 0,
//           ),
//           body: SafeArea(
//             child: Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 16),
//               child: Column(
//                 children: [
//                   const SearchbarWidget(),
//                   BaseBlocWidget<ChatBloc, ChatEvent, ChatState>(
//                     bloc: getIt<ChatBloc>(),
//                     starterEvent: ChatEvent.getChats(
//                       GetChatsRequest(
//                         schoolId: roleNotifier.getCurrentSchoolId()!,
//                         role: roleNotifier.currentRole,
//                       ),
//                     ),
//                     builder: (context, state, bloc) {
//                       return state.maybeWhen(
//                         loaded: (viewModel) => _buildChatList(viewModel, bloc, roleNotifier),
//                         errorState: (message) => Center(child: Text(message)),
//                         orElse: () => const Center(child: CircularProgressIndicator()),
//                       );
//                     },
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         );
//       },
//     );
//   }

//   Widget _buildChatList(
//     ChatViewModel viewModel,
//     ChatBloc bloc,
//     RoleNotifier roleNotifier,
//   ) {
//     return Expanded(
//       child: RefreshIndicator(
//         onRefresh: () async {
//           bloc.add(
//             ChatEvent.getChats(
//               GetChatsRequest(
//                 schoolId: schoolId,
//                 role: roleNotifier.currentRole,
//               ),
//             ),
//           );
//         },
//         child: viewModel.chats!.isEmpty
//             ? Center(child: Text(context.loc.nothingHereYet))
//             : ListView.builder(
//                 itemCount: viewModel.chats!.length,
//                 itemBuilder: (context, index) {
//                   final chat = viewModel.chats![index];
//                   return ChatCard(
//                     chat: chat,
//                     onTap: () {
//                       context.push(RoutePaths.chatsMessage, extra: {
//                         'chatId': chat.chatId,
//                         if (chat.type == 'personal')
//                           'chatTitle':
//                               '${chat.members!.firstWhere((element) => element.userId != getCurrentRole().sub).firstName} ${chat.members!.firstWhere((element) => element.userId != getCurrentRole().sub).lastName}',
//                         if (chat.type == 'parent') 'chatTitle': chat.title,
//                       });
//                     },
//                   );
//                 },
//               ),
//       ),
//     );
//   }
// }
