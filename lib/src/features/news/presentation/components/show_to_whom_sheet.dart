// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:jwt_decode/jwt_decode.dart';
// import 'package:oyan/core/extensions/build_context_extension.dart';
// import 'package:oyan/src/core/base/base_bloc/bloc/base_bloc_widget.dart';
// import 'package:oyan/src/core/services/auth/role_notifier.dart';
// import 'package:oyan/src/core/services/injectable/injectable_service.dart';
// import 'package:oyan/src/core/services/storage/storage_service_impl.dart';
// import 'package:oyan/src/core/theme/colors.dart';
// import 'package:oyan/src/core/theme/typography.dart';
// import 'package:oyan/src/core/utils/constants/app_icons.dart';
// import 'package:shimmer/shimmer.dart';

// import '../../../settings/domain/entities/user_token_entity.dart';

// class ClassSelectionResult {
//   final String classId;
//   final List<String> courseIds;

//   ClassSelectionResult({required this.classId, required this.courseIds});
// }

// class ShowToWhomSheet extends StatefulWidget {
//   final List<ClassSelectionResult>? initialSelection;
//   final Function(List<ClassSelectionResult>) onSelectionChanged;
//   static final Map<String, ClassState> _globalClassStatesCache = {};
//   static final Map<String, CourseState> _globalCourseStatesCache = {};

//   const ShowToWhomSheet({
//     super.key,
//     this.initialSelection,
//     required this.onSelectionChanged,
//   });

//   @override
//   State<ShowToWhomSheet> createState() => _ShowToWhomSheetState();
// }

// class _ShowToWhomSheetState extends State<ShowToWhomSheet> {
//   final Map<String, bool> _expandedClasses = {};
//   final Map<String, Set<String>> _selectedCoursesByClass = {};
//   final Map<String, bool> _selectedClasses = {};
//   late final RoleNotifier _roleNotifier;

//   @override
//   void initState() {
//     super.initState();
//     _roleNotifier = context.read<RoleNotifier>();
//     _restoreInitialSelection();
//   }

//   void _restoreInitialSelection() {
//     if (widget.initialSelection != null) {
//       for (var selection in widget.initialSelection!) {
//         _selectedClasses[selection.classId] = true;
//         _selectedCoursesByClass[selection.classId] = Set.from(selection.courseIds);
//       }
//     }
//   }

//   void _notifySelectionChanged() {
//     final results = _getSelectedData();
//     widget.onSelectionChanged(results);
//   }

//   @override
//   Widget build(BuildContext context) {
//     final roleNotifier = context.watch<RoleNotifier>();

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
//               context.loc.showToWhom,
//               style: const FigmaTextStyles().typography4Medium.copyWith(
//                     color: context.colors.black,
//                   ),
//             ),
//           ),
//           const SearchbarWidget(),
//           const SizedBox(height: 6),
//           Expanded(
//             child: SingleChildScrollView(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   _buildTeacherSections(
//                     teacherRoles: roleNotifier.getRoleInfos('teacher'),
//                     classroomTeacherRoles: roleNotifier.getRoleInfos('classroomTeacher'),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildTeacherSections({
//     required List<RoleInfo> teacherRoles,
//     required List<RoleInfo> classroomTeacherRoles,
//   }) {
//     final coursesByClass = <String, List<String>>{};
//     final classroomTeacherClasses = <String>[];

//     final token = StorageServiceImpl().getToken();
//     if (token != null) {
//       final user = UserTokenEntity.fromJson(Jwt.parseJwt(token));

//       for (final school in user.permissions.schools) {
//         for (final classInfo in school.classes) {
//           if (classInfo.roles.any((role) => role.title == 'classroomTeacher')) {
//             classroomTeacherClasses.add(classInfo.id);
//           }

//           // Collect teacher courses
//           final teacherCourses = classInfo.roles
//               .where((role) => role.title == 'teacher' && role.courseId != null)
//               .map((role) => role.courseId!)
//               .toList();

//           if (teacherCourses.isNotEmpty) {
//             coursesByClass[classInfo.id] = teacherCourses;
//           }
//         }
//       }
//     }
//     if (coursesByClass.isEmpty && classroomTeacherClasses.isEmpty) {
//       return const SizedBox.shrink();
//     }

//     if (_roleNotifier.currentRole == 'classroomTeacher') {
//       return Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: classroomTeacherClasses
//             .map((classId) => _buildCachedClassSection(
//                   classId,
//                   [],
//                   _roleNotifier.getCurrentSchoolId()!,
//                 ))
//             .toList(),
//       );
//     }

//     if (_roleNotifier.currentRole == 'teacher') {
//       return Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: coursesByClass.entries
//             .map((entry) => _buildCachedClassSection(
//                   entry.key,
//                   entry.value,
//                   _roleNotifier.getCurrentSchoolId()!,
//                 ))
//             .toList(),
//       );
//     }
//     return const SizedBox.shrink();
//   }

//   List<ClassSelectionResult> _getSelectedData() {
//     List<ClassSelectionResult> results = [];

//     _selectedClasses.forEach((classId, isSelected) {
//       if (isSelected && _selectedCoursesByClass.containsKey(classId)) {
//         results.add(
//           ClassSelectionResult(
//             classId: classId,
//             courseIds: _selectedCoursesByClass[classId]!.toList(),
//           ),
//         );
//       }
//     });

//     return results;
//   }

//   Widget _buildCachedClassSection(String classId, List<String> courseIds, String schoolId) {
//     if (ShowToWhomSheet._globalClassStatesCache.containsKey(classId)) {
//       return ShowToWhomSheet._globalClassStatesCache[classId]!.maybeWhen(
//         loaded: (classViewModel) {
//           return _buildClassSection(
//             classViewModel.classEntity!,
//             courseIds,
//             schoolId,
//           );
//         },
//         orElse: () => const ClassSkeleton(),
//       );
//     }
//     return BaseBlocWidget<ClassBloc, ClassEvent, ClassState>(
//       bloc: getIt<ClassBloc>(),
//       starterEvent: ClassEvent.getClass(
//         GetClassRequest(
//           classId: classId,
//           schoolId: schoolId,
//         ),
//       ),
//       builder: (context, state, bloc) {
//         ShowToWhomSheet._globalClassStatesCache[classId] = state;
//         return state.maybeWhen(
//           loading: () => const ClassSkeleton(),
//           error: (error) => const SizedBox.shrink(),
//           loaded: (classViewModel) {
//             return _buildClassSection(
//               classViewModel.classEntity!,
//               courseIds,
//               schoolId,
//             );
//           },
//           orElse: () => const SizedBox.shrink(),
//         );
//       },
//     );
//   }

//   Widget _buildCoursesSection(String classId, List<String> courseIds, String schoolId) {
//     return Padding(
//       padding: const EdgeInsets.only(left: 32),
//       child: Column(
//         children: courseIds.map((courseId) {
//           return _buildCachedCourseSection(classId, courseId, schoolId);
//         }).toList(),
//       ),
//     );
//   }

//   Widget _buildCachedCourseSection(String classId, String courseId, String schoolId) {
//     if (ShowToWhomSheet._globalCourseStatesCache.containsKey(courseId)) {
//       return ShowToWhomSheet._globalCourseStatesCache[courseId]!.maybeWhen(
//         loaded: (courseViewModel) {
//           final course = courseViewModel.course!;
//           final isSelected = _isCourseSelected(classId, course.id!);
//           return _buildCourseItem(classId, course.id!, course.name!, isSelected);
//         },
//         orElse: () => const CourseSkeleton(),
//       );
//     }

//     return BaseBlocWidget<CourseBloc, CourseEvent, CourseState>(
//       bloc: getIt<CourseBloc>(),
//       starterEvent: CourseEvent.getCourse(
//         GetCourseRequest(
//           courseId: courseId,
//           schoolId: schoolId,
//         ),
//       ),
//       builder: (context, state, bloc) {
//         ShowToWhomSheet._globalCourseStatesCache[courseId] = state;
//         return state.maybeWhen(
//           loading: () => const CourseSkeleton(),
//           error: (error) => const SizedBox.shrink(),
//           loaded: (courseViewModel) {
//             final course = courseViewModel.course!;
//             final isSelected = _isCourseSelected(classId, course.id!);
//             return _buildCourseItem(classId, course.id!, course.name!, isSelected);
//           },
//           orElse: () => const SizedBox.shrink(),
//         );
//       },
//     );
//   }

//   Widget _buildCourseItem(String classId, String courseId, String courseName, bool isSelected) {
//     return InkWell(
//       splashColor: Colors.transparent,
//       highlightColor: Colors.transparent,
//       onTap: () => _toggleCourse(classId, courseId),
//       child: Container(
//         margin: const EdgeInsets.symmetric(vertical: 2),
//         padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(8),
//           color: isSelected ? AppColors.green50 : Colors.white,
//         ),
//         child: Row(
//           children: [
//             Icon(
//               isSelected ? AppIcons.checkbox : AppIcons.checkbox_1,
//               color: isSelected ? AppColors.green500 : context.colors.gray500,
//             ),
//             const SizedBox(width: 8),
//             Text(
//               courseName,
//               style: const FigmaTextStyles().typography2Regular.copyWith(
//                     color: context.colors.black,
//                   ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildClassSection(ClassEntity classEntity, List<String> courseIds, String schoolId) {
//     bool isExpanded = _expandedClasses[classEntity.id] ?? false;
//     bool isSelected = _selectedClasses[classEntity.id] ?? false;

//     return Column(
//       children: [
//         InkWell(
//           splashColor: Colors.transparent,
//           highlightColor: Colors.transparent,
//           onTap: () {
//             setState(() {
//               _expandedClasses[classEntity.id] = !isExpanded;
//             });
//           },
//           child: Container(
//             margin: const EdgeInsets.symmetric(vertical: 2),
//             padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(8),
//               color: isSelected ? AppColors.green50 : Colors.white,
//             ),
//             child: Row(
//               children: [
//                 InkWell(
//                   splashColor: Colors.transparent,
//                   highlightColor: Colors.transparent,
//                   onTap: () => _toggleClass(classEntity.id, courseIds),
//                   child: Icon(
//                     isSelected ? AppIcons.checkbox : AppIcons.checkbox_1,
//                     color: isSelected ? AppColors.green500 : context.colors.gray500,
//                   ),
//                 ),
//                 const SizedBox(width: 15),
//                 Text(
//                   '${classEntity.grade}${classEntity.name}',
//                   style: const FigmaTextStyles().typography2Regular.copyWith(
//                         color: context.colors.black,
//                       ),
//                 ),
//                 const Spacer(),
//                 Icon(
//                   isExpanded ? AppIcons.chevron_up : AppIcons.chevron_down,
//                   color: context.colors.gray500,
//                 ),
//               ],
//             ),
//           ),
//         ),
//         if (isExpanded) _buildCoursesSection(classEntity.id, courseIds, schoolId),
//       ],
//     );
//   }

//   void _toggleClass(String classId, List<String> courseIds) {
//     setState(() {
//       bool isSelected = _selectedClasses[classId] ?? false;
//       _selectedClasses[classId] = !isSelected;
//       _selectedCoursesByClass[classId] = <String>{};

//       if (!isSelected) {
//         _selectedCoursesByClass[classId]?.addAll(courseIds);
//       }

//       _notifySelectionChanged();
//     });
//   }

//   void _toggleCourse(String classId, String courseId) {
//     setState(() {
//       _selectedCoursesByClass[classId] ??= <String>{};

//       if (_selectedCoursesByClass[classId]!.contains(courseId)) {
//         _selectedCoursesByClass[classId]!.remove(courseId);
//         if (_selectedCoursesByClass[classId]!.isEmpty) {
//           _selectedClasses[classId] = false;
//         }
//       } else {
//         _selectedCoursesByClass[classId]!.add(courseId);
//         _selectedClasses[classId] = true;
//       }

//       _notifySelectionChanged();
//     });
//   }

//   bool _isCourseSelected(String classId, String courseId) {
//     return _selectedCoursesByClass[classId]?.contains(courseId) ?? false;
//   }
// }

// class ClassSkeleton extends StatelessWidget {
//   const ClassSkeleton({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Shimmer(
//       gradient: LinearGradient(
//         colors: [Colors.white, colors.gray.shade300],
//       ),
//       child: Container(
//         margin: const EdgeInsets.symmetric(vertical: 2),
//         padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(8),
//           color: Colors.white,
//         ),
//         height: 40,
//       ),
//     );
//   }
// }

// class CourseSkeleton extends StatelessWidget {
//   const CourseSkeleton({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(left: 32),
//       child: Shimmer(
//         gradient: LinearGradient(
//           colors: [Colors.white, colors.gray.shade300],
//         ),
//         child: Container(
//           margin: const EdgeInsets.symmetric(vertical: 2),
//           padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(8),
//             color: Colors.white,
//           ),
//           height: 40,
//         ),
//       ),
//     );
//   }
// }
