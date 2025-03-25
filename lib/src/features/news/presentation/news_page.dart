// import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';
// import 'package:oyan/core/extensions/build_context_extension.dart';
// import 'package:oyan/src/core/router/router.dart';
// import 'package:oyan/src/core/services/auth/connection_notifier.dart';
// import 'package:oyan/src/core/services/auth/role_notifier.dart';
// import 'package:oyan/src/core/theme/typography.dart';
// import 'package:oyan/src/core/utils/constants/app_icons.dart';
// import 'package:oyan/src/features/bottom_sheet/presentation/notification_sheet_widget.dart';
// import 'package:oyan/src/features/news/presentation/first_news_widget.dart';
// import 'package:oyan/src/features/news/presentation/news_tab_widget.dart';
// import 'package:oyan/src/features/search_bar/presentation/searchBar_widget.dart';
// import 'package:provider/provider.dart';

// import '../../../core/theme/colors.dart';
// import 'second_news_widget.dart';

// class NewsPage extends StatefulWidget {
//   const NewsPage({
//     super.key,
//   });

//   @override
//   State<NewsPage> createState() => _NewsPageState();
// }

// class _NewsPageState extends State<NewsPage> {
//   final GlobalKey<FirstNewsWidgetState> _firstPageNewsKey = GlobalKey<FirstNewsWidgetState>();
//   final GlobalKey<SecondNewsWidgetState> _secondPageNewsKey = GlobalKey<SecondNewsWidgetState>();

//   void _refreshNews() {
//     _firstPageNewsKey.currentState?.refreshNews();
//     _secondPageNewsKey.currentState?.refreshNews();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Consumer<RoleNotifier>(
//       builder: (context, roleNotifier, _) {
//         // Trigger rebuild when role changes
//         final firstPageNewsKey = GlobalKey<FirstNewsWidgetState>();
//         final secondPageNewsKey = GlobalKey<SecondNewsWidgetState>();

//         return ConnectionAwareWidget(
//           child: Scaffold(
//             appBar: PreferredSize(
//               preferredSize: const Size.fromHeight(kToolbarHeight),
//               child: Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 16),
//                 child: AppBar(
//                   backgroundColor: Colors.white,
//                   automaticallyImplyLeading: false,
//                   title: Text(
//                     context.loc.news,
//                     style: const FigmaTextStyles().typography2Bold.copyWith(
//                           color: context.colors.black,
//                         ),
//                   ),
//                   centerTitle: true,
//                   elevation: 0,
//                   actions: [
//                     InkWell(
//                       splashColor: Colors.transparent,
//                       highlightColor: Colors.transparent,
//                       child: const Icon(
//                         AppIcons.bell_1,
//                         color: Colors.black,
//                         size: 24,
//                       ),
//                       onTap: () {
//                         showModalBottomSheet(
//                           useRootNavigator: true,
//                           backgroundColor: Colors.white,
//                           showDragHandle: true,
//                           context: context,
//                           builder: (context) => NotificationSheetWidget(
//                             title: context.loc.notifications,
//                           ),
//                         );
//                       },
//                     ),
//                     const SizedBox(width: 12),
//                     context.watch<RoleNotifier>().currentRole != 'parent'
//                         ? Container(
//                             decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(8),
//                                 color: context.colors.buttonPrimaryDefaultBackgroundColor),
//                             child: InkWell(
//                               splashColor: Colors.transparent,
//                               highlightColor: Colors.transparent,
//                               onTap: () {
//                                 context.push(
//                                   RoutePaths.createNews,
//                                   extra: _refreshNews,
//                                 );
//                               },
//                               child: const Padding(
//                                 padding: EdgeInsets.all(8.0),
//                                 child: Icon(
//                                   AppIcons.add,
//                                   color: context.colors.white,
//                                   size: 24,
//                                 ),
//                               ),
//                             ),
//                           )
//                         : const SizedBox.shrink(),
//                   ],
//                 ),
//               ),
//             ),
//             backgroundColor: Colors.white,
//             body: Padding(
//               padding: const EdgeInsets.all(16),
//               child: Column(
//                 children: [
//                   const SearchbarWidget(),
//                   const SizedBox(height: 8),
//                   Expanded(
//                     child: NewsTabWidget(
//                       key: ValueKey(
//                           'news_tab_${roleNotifier.currentRole}_${roleNotifier.currentRoleId}'),
//                       firstNewsKey: firstPageNewsKey,
//                       secondNewsKey: secondPageNewsKey,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         );
//       },
//     );
//   }
// }
