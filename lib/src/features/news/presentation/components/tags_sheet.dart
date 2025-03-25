// import 'dart:math';

// import 'package:oyan/core/extensions/build_context_extension.dart';
// import 'package:oyan/src/app/imports.dart';
// import 'package:oyan/src/core/base/base_bloc/bloc/base_bloc_widget.dart';
// import 'package:oyan/src/core/router/router.dart';
// import 'package:oyan/src/core/services/injectable/injectable_service.dart';
// import 'package:oyan/src/core/theme/colors.dart';
// import 'package:oyan/src/core/theme/typography.dart';
// import 'package:oyan/src/core/utils/constants/app_icons.dart';

// class TagsSheet extends StatefulWidget {
//   final Set<String>? initialSelectedTags;
//   final Function(Set<String>) onTagsSelected;
//   const TagsSheet({super.key, this.initialSelectedTags, required this.onTagsSelected});

//   @override
//   State<TagsSheet> createState() => _TagsSheetState();
// }

// class _TagsSheetState extends State<TagsSheet> {
//   late Set<String> selectedTags = {};
//   @override
//   void initState() {
//     super.initState();
//     selectedTags = widget.initialSelectedTags?.toSet() ?? {};
//   }

//   void toggleTag(String tagId) {
//     setState(() {
//       if (selectedTags.contains(tagId)) {
//         selectedTags.remove(tagId);
//       } else {
//         selectedTags.add(tagId);
//       }
//       widget.onTagsSelected(selectedTags);
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.symmetric(horizontal: 16),
//       width: double.infinity,
//       height: MediaQuery.of(context).size.height * 0.5,
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Padding(
//             padding: const EdgeInsets.symmetric(vertical: 16),
//             child: Text(
//               context.loc.tags,
//               style: const FigmaTextStyles().typography4Medium.copyWith(
//                     color: context.colors.black,
//                   ),
//             ),
//           ),
//           const SearchbarWidget(),
//           const SizedBox(height: 6),
//           Expanded(
//             child: BaseBlocWidget<TagBloc, TagEvent, TagState>(
//               bloc: getIt<TagBloc>(),
//               starterEvent: TagEvent.getTags(
//                 GetTagRequest(
//                   schoolId: schoolId,
//                 ),
//               ),
//               builder: (context, state, bloc) {
//                 return state.maybeWhen(
//                   orElse: () => const Center(child: CircularProgressIndicator()),
//                   error: (error) => Center(child: Text(error)),
//                   loaded: (viewModel) {
//                     return ListView.builder(
//                       shrinkWrap: true,
//                       physics: const NeverScrollableScrollPhysics(),
//                       itemCount: viewModel.tags?.tags.length ?? 0,
//                       itemBuilder: (context, index) {
//                         final tag = viewModel.tags!.tags[index];
//                         final isSelected = selectedTags.contains(tag.id);
//                         return Container(
//                           margin: const EdgeInsets.symmetric(vertical: 2),
//                           padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(8),
//                             color: isSelected ? AppColors.green50 : Colors.white,
//                           ),
//                           child: InkWell(
//                             splashColor: Colors.transparent,
//                             highlightColor: Colors.transparent,
//                             onTap: () {
//                               toggleTag(tag.id);
//                             },
//                             child: Row(
//                               crossAxisAlignment: CrossAxisAlignment.center,
//                               children: [
//                                 Icon(
//                                   isSelected ? AppIcons.checkbox : AppIcons.checkbox_1,
//                                   color: isSelected ? AppColors.green500 : context.colors.gray500,
//                                 ),
//                                 const SizedBox(width: 8),
//                                 Text(
//                                   tag.name,
//                                   style: const FigmaTextStyles().typography2Regular.copyWith(
//                                         color: context.colors.black,
//                                       ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         );
//                       },
//                     );
//                   },
//                 );
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class TagColor {
//   static final List<({Color background, Color text})> colorPairs = [
//     (background: context.colors.purple50, text: context.colors.purple950),
//     (background: context.colors.blue50, text: context.colors.blue950),
//     (background: context.colors.green50, text: context.colors.green950),
//     (background: context.colors.orange50, text: context.colors.orange950),
//     (background: context.colors.red50, text: context.colors.red950),
//   ];
//   static final _random = Random();

//   static ({Color background, Color text}) getRandomColors() {
//     return colorPairs[_random.nextInt(colorPairs.length)];
//   }
// }
