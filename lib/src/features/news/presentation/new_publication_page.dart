// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:oyan/core/extensions/build_context_extension.dart';
// import 'package:oyan/src/app/imports.dart';
// import 'package:oyan/src/core/base/base_bloc/bloc/base_bloc_widget.dart';
// import 'package:oyan/src/core/router/router.dart';
// import 'package:oyan/src/core/services/injectable/injectable_service.dart';
// import 'package:oyan/src/core/theme/colors.dart';
// import 'package:oyan/src/core/theme/typography.dart';
// import 'package:oyan/src/core/utils/constants/app_icons.dart';
// import 'package:oyan/src/features/attachment/domain/entities/attachment_entity.dart';
// import 'package:oyan/src/features/attachment/presentation/bloc/attachment_bloc.dart';
// import 'package:oyan/src/features/login/presentation/custom_snack_bar.dart';
// import 'package:oyan/src/features/news/domain/entities/post_class_entity.dart';
// import 'package:oyan/src/features/news/domain/entities/post_course_entity.dart';
// import 'package:oyan/src/features/news/domain/requests/add_post_request.dart';
// import 'package:oyan/src/features/news/presentation/bloc/news_bloc.dart';
// import 'package:oyan/src/features/news/presentation/components/add_posts_button_widget.dart';
// import 'package:oyan/src/features/news/presentation/components/custom_text_input.dart';
// import 'package:oyan/src/features/news/presentation/components/media_upload.dart';
// import 'package:oyan/src/features/news/presentation/components/show_to_whom_sheet.dart';
// import 'package:oyan/src/features/news/presentation/components/tags_sheet.dart';

// import '../../../core/services/auth/role_notifier.dart';

// class NewPublicationPage extends StatefulWidget {
//   const NewPublicationPage({
//     super.key,
//     required this.refreshPosts,
//   });

//   final VoidCallback refreshPosts;

//   @override
//   _NewPublicationContentState createState() => _NewPublicationContentState();
// }

// class _NewPublicationContentState extends State<NewPublicationPage> {
//   final TextEditingController _titleController = TextEditingController();
//   final TextEditingController _descriptionController = TextEditingController();
//   List<String> _attachmentIds = [];
//   List<ClassSelectionResult>? _selectedClasses;
//   final Map<String, String> _classNames = {};
//   Set<String>? _selectedTags;

//   void _onTagsSelected(Set<String> tags) {
//     setState(() {
//       _selectedTags = tags;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     final roleNotifier = context.watch<RoleNotifier>();

//     return BaseBlocWidget<NewsBloc, NewsEvent, NewsState>(
//       bloc: getIt<NewsBloc>(),
//       builder: (context, state, bloc) {
//         return BlocListener<NewsBloc, NewsState>(
//           listener: (context, state) {
//             state.maybeWhen(
//               error: (error) {
//                 ScaffoldMessenger.of(context).showSnackBar(
//                   CustomSnackBar.show(
//                     title: error,
//                     seconds: 3,
//                   ),
//                 );
//               },
//               loaded: (viewModel) {
//                 ScaffoldMessenger.of(context).showSnackBar(
//                   CustomSnackBar.show(
//                     title: 'sad',
//                     seconds: 3,
//                   ),
//                 );
//                 widget.refreshPosts();
//                 context.pop();
//               },
//               orElse: () {},
//             );
//           },
//           child: Scaffold(
//             backgroundColor: context.colors.white,
//             appBar: AppBar(
//               backgroundColor: context.colors.white,
//               leading: InkWell(
//                 splashColor: Colors.transparent,
//                 highlightColor: Colors.transparent,
//                 onTap: () => context.pop(),
//                 child: const Icon(
//                   AppIcons.chevron_left,
//                   color: context.colors.black,
//                   size: 24,
//                 ),
//               ),
//               title: Text(
//                 context.loc.newPublication,
//                 style: const FigmaTextStyles().typography3Bold.copyWith(
//                       color: context.colors.black,
//                     ),
//               ),
//             ),
//             resizeToAvoidBottomInset: true,
//             body: SingleChildScrollView(
//               child: Padding(
//                 padding: const EdgeInsets.all(16.0),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     BlocProvider(
//                       create: (context) => getIt<AttachmentBloc>(),
//                       child: MediaUpload(
//                         onAttachmentIdsChanged: (ids) {
//                           setState(() {
//                             _attachmentIds = ids;
//                           });
//                         },
//                       ),
//                     ),
//                     const SizedBox(height: 8),
//                     CustomTextInput(
//                       label: context.loc.title,
//                       controller: _titleController,
//                     ),
//                     const SizedBox(height: 8),
//                     CustomTextInput(
//                       label: context.loc.description,
//                       controller: _descriptionController,
//                     ),
//                     const SizedBox(height: 16),
//                     InkWell(
//                       splashColor: Colors.transparent,
//                       highlightColor: Colors.transparent,
//                       onTap: () async {
//                         showModalBottomSheet(
//                           isScrollControlled: true,
//                           showDragHandle: true,
//                           backgroundColor: context.colors.white,
//                           useRootNavigator: true,
//                           context: context,
//                           builder: (context) => TagsSheet(
//                             initialSelectedTags: _selectedTags,
//                             onTagsSelected: _onTagsSelected,
//                           ),
//                         );
//                       },
//                       child: AddPostsButtonWidget(title: context.loc.tags),
//                     ),
//                     const SizedBox(height: 8),
//                     InkWell(
//                       splashColor: Colors.transparent,
//                       highlightColor: Colors.transparent,
//                       onTap: () async {
//                         await showModalBottomSheet(
//                           isScrollControlled: true,
//                           useRootNavigator: true,
//                           showDragHandle: true,
//                           backgroundColor: Colors.white,
//                           context: context,
//                           builder: (context) => ShowToWhomSheet(
//                             initialSelection: _selectedClasses,
//                             onSelectionChanged: _onClassSelectionChanged,
//                           ),
//                         );
//                       },
//                       child: AddPostsButtonWidget(
//                         title: _getSelectedClassesText(),
//                       ),
//                     ),
//                     const SizedBox(height: 16),
//                     Padding(
//                       padding: const EdgeInsets.symmetric(
//                         horizontal: 4,
//                         vertical: 8,
//                       ),
//                       child: InkWell(
//                         onTap: () => _submitPost(roleNotifier),
//                         child: Container(
//                           width: MediaQuery.of(context).size.width,
//                           decoration: BoxDecoration(
//                             border: Border.all(
//                               color: const Color(0xFFE2E8F0),
//                               width: 1,
//                               style: BorderStyle.solid,
//                             ),
//                             color: context.colors.blue500,
//                             borderRadius: BorderRadius.circular(8),
//                           ),
//                           child: Center(
//                             child: Padding(
//                               padding: const EdgeInsets.all(8.0),
//                               child: Text(
//                                 context.loc.share,
//                                 style: const FigmaTextStyles().typography3Bold.copyWith(
//                                       color: context.colors.white,
//                                     ),
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         );
//       },
//     );
//   }

//   Future<void> _fetchClassName(String classId) async {
//     if (_classNames.containsKey(classId)) return;

//     final classBloc = getIt<ClassBloc>();
//     classBloc.add(ClassEvent.getClass(
//       GetClassRequest(
//         classId: classId,
//         schoolId: schoolId,
//       ),
//     ));

//     await for (var state in classBloc.stream) {
//       state.maybeWhen(
//         loaded: (classViewModel) {
//           if (classViewModel.classEntity != null) {
//             setState(() {
//               _classNames[classId] =
//                   '${classViewModel.classEntity!.grade}${classViewModel.classEntity!.name}';
//             });
//           }
//         },
//         orElse: () {},
//       );
//     }
//   }

//   String _getSelectedClassesText() {
//     if (_selectedClasses == null || _selectedClasses!.isEmpty) {
//       return context.loc.showToWhom;
//     }

//     for (var selection in _selectedClasses!) {
//       if (!_classNames.containsKey(selection.classId)) {
//         _fetchClassName(selection.classId);
//       }
//     }

//     List<String> names = _selectedClasses!
//         .map((s) => _classNames[s.classId])
//         .where((name) => name != null)
//         .cast<String>()
//         .toList();

//     if (names.isEmpty) {
//       return context.loc.showToWhom;
//     }

//     return names.join(", ");
//   }

//   void _onClassSelectionChanged(List<ClassSelectionResult> selection) {
//     setState(() {
//       _selectedClasses = selection;
//       for (var s in selection) {
//         if (!_classNames.containsKey(s.classId)) {
//           _fetchClassName(s.classId);
//         }
//       }
//     });
//   }

//   void _submitPost(RoleNotifier roleNotifier) {
//     final title = _titleController.text;
//     final description = _descriptionController.text;

//     if (title.isEmpty || description.isEmpty) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         CustomSnackBar.show(
//           title: context.loc.allFieldsAreRequired,
//           seconds: 3,
//         ),
//       );
//       return;
//     }

//     List<PostClassEntity> classes = [];

//     if (roleNotifier.currentRole == 'classroomTeacher') {
//       if (roleNotifier.currentClassId == null) {
//         ScaffoldMessenger.of(context).showSnackBar(
//           CustomSnackBar.show(
//             title: context.loc.pleaseSelectClass,
//             seconds: 3,
//           ),
//         );
//         return;
//       }
//       classes = [
//         PostClassEntity(
//           classId: roleNotifier.currentClassId!,
//           courses: [],
//         ),
//       ];
//     } else {
//       if (_selectedClasses == null || _selectedClasses!.isEmpty) {
//         ScaffoldMessenger.of(context).showSnackBar(
//           CustomSnackBar.show(
//             title: context.loc.pleaseSelectClass,
//             seconds: 3,
//           ),
//         );
//         return;
//       }
//       classes = _selectedClasses!.map((selection) {
//         return PostClassEntity(
//           classId: selection.classId,
//           courses: selection.courseIds
//               .map(
//                 (courseId) => PostCourseEntity(
//                   courseId: courseId,
//                 ),
//               )
//               .toList(),
//         );
//       }).toList();
//     }

//     final addPostRequest = AddPostRequest(
//       title: title,
//       content: description,
//       tags: _selectedTags!.toList(),
//       isImportant: false,
//       attachments: _attachmentIds.isNotEmpty
//           ? _attachmentIds.map((id) => AttachmentEntity(id: id, type: 'media')).toList()
//           : [],
//       role: roleNotifier.currentRole,
//       classes: classes,
//       schoolId: roleNotifier.getCurrentSchoolId()!,
//     );

//     getIt<NewsBloc>().add(NewsEvent.addPost(addPostRequest));
//     widget.refreshPosts();
//     context.pop();
//   }
// }
