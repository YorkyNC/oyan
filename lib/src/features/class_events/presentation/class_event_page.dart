import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oyan/src/app/imports.dart';
import 'package:oyan/src/core/extensions/build_context_extension.dart';
import 'package:oyan/src/features/class_events/presentation/bloc/class_bloc.dart';
import 'package:oyan/src/features/class_events/presentation/components/camera_app_bar.dart';
import 'package:oyan/src/features/class_events/presentation/components/class_table.dart';
import 'package:oyan/src/features/class_events/presentation/components/custom_search_bar.dart';

class ClassEventPage extends StatefulWidget {
  const ClassEventPage({super.key});

  @override
  State<ClassEventPage> createState() => _ClassEventPageState();
}

class _ClassEventPageState extends State<ClassEventPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ClassBloc(),
      child: Scaffold(
        backgroundColor: context.colors.gray100,
        appBar: const CameraAppBar(),
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              color: context.colors.white,
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [SizedBox(height: 12), CustomSearchBar(hintText: 'Найти класс или ученика')],
              ),
            ),
            const SizedBox(height: 12),
            const ClassTable(),
          ],
        ),
      ),
    );
  }
}
