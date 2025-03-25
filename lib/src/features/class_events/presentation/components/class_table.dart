import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:oyan/src/app/imports.dart';
import 'package:oyan/src/core/extensions/build_context_extension.dart';
import 'package:oyan/src/features/class_events/domain/entity/class_entity.dart' show ClassEntity;
import 'package:oyan/src/features/class_events/presentation/bloc/class_bloc.dart';
import 'package:oyan/src/features/class_events/presentation/bloc/class_event.dart';
import 'package:oyan/src/features/class_events/presentation/bloc/class_state.dart';
import 'package:oyan/src/features/class_events/presentation/components/class_table_shimmer.dart';

class ClassTable extends StatefulWidget {
  const ClassTable({Key? key}) : super(key: key);

  @override
  State<ClassTable> createState() => _ClassTableState();
}

class _ClassTableState extends State<ClassTable> {
  final ScrollController _horizontalScrollController = ScrollController();
  final ScrollController _verticalScrollController = ScrollController();

  @override
  void dispose() {
    _horizontalScrollController.dispose();
    _verticalScrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ClassBloc, ClassState>(
      builder: (context, state) {
        final classes = state.classes;
        if (classes == null) {
          return const ClassTableShimmer();
        } else {
          return Expanded(
            child: Scrollbar(
              controller: _horizontalScrollController,
              thumbVisibility: true,
              trackVisibility: true,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: const ClampingScrollPhysics(),
                controller: _horizontalScrollController,
                child: Scrollbar(
                  controller: _verticalScrollController,
                  thumbVisibility: true,
                  child: SingleChildScrollView(
                    physics: const ClampingScrollPhysics(),
                    controller: _verticalScrollController,
                    child: DataTable(
                      columnSpacing: 0,
                      decoration: BoxDecoration(color: context.colors.white, borderRadius: BorderRadius.circular(8)),
                      dividerThickness: 0.5,
                      horizontalMargin: 16,
                      sortAscending: state.sortAscending,
                      sortColumnIndex: state.sortColumnIndex >= 0 ? state.sortColumnIndex : null,
                      columns: _buildColumns(context, state),
                      border: _buildTableBorder(context),
                      rows: _buildAlternatingRows(context, classes),
                    ),
                  ),
                ),
              ),
            ),
          );
        }
      },
    );
  }

  List<DataRow> _buildAlternatingRows(BuildContext context, List<ClassEntity> classes) {
    final List<DataRow> rows = [];
    for (int i = 0; i < classes.length; i++) {
      final ClassEntity classEntity = classes[i];
      final bool isEvenRow = i % 2 == 1;

      rows.add(
        DataRow(
          color:
              isEvenRow
                  ? WidgetStateProperty.all(context.colors.gray50)
                  : WidgetStateProperty.all(context.colors.white),
          cells: [
            DataCell(
              Expanded(
                child: Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          classEntity.className,
                          style: context.typography.textsmSemibold.copyWith(color: context.colors.black),
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          classEntity.studentsCount,
                          style: context.typography.textxsRegular.copyWith(color: context.colors.gray500),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                    const SizedBox(width: 20),
                  ],
                ),
              ),
            ),
            DataCell(
              Container(
                alignment: Alignment.center,
                child: Text(
                  classEntity.firstMetric,
                  style: context.typography.textsmRegular.copyWith(color: context.colors.black),
                ),
              ),
            ),
            DataCell(
              Container(
                alignment: Alignment.center,
                child: Text(
                  classEntity.secondMetric,
                  style: context.typography.textsmRegular.copyWith(color: context.colors.black),
                ),
              ),
            ),
            DataCell(
              Container(
                alignment: Alignment.center,
                child: Text(
                  classEntity.thirdMetric,
                  style: context.typography.textsmRegular.copyWith(color: context.colors.black),
                ),
              ),
            ),
          ],
        ),
      );
    }

    return rows;
  }

  List<DataColumn> _buildColumns(BuildContext context, ClassState state) {
    return [
      DataColumn(
        onSort: _onSort,
        label: Expanded(
          child: Text('Класс №', style: context.typography.textxsRegular.copyWith(color: context.colors.gray500)),
        ),
      ),
      _buildIconColumn(
        context: context,
        icon: context.assetImages.conflictsFilled,
        columnIndex: 1,
        isSorted: state.sortColumnIndex == 1,
        isAscending: state.sortAscending,
      ),
      _buildIconColumn(
        context: context,
        icon: context.assetImages.smokingFilled,
        columnIndex: 2,
        isSorted: state.sortColumnIndex == 2,
        isAscending: state.sortAscending,
      ),
      _buildIconColumn(
        context: context,
        icon: context.assetImages.cheatingFilled,
        columnIndex: 3,
        isSorted: state.sortColumnIndex == 3,
        isAscending: state.sortAscending,
      ),
    ];
  }

  DataColumn _buildIconColumn({
    required BuildContext context,
    required String icon,
    required int columnIndex,
    required bool isSorted,
    required bool isAscending,
  }) {
    return DataColumn(
      headingRowAlignment: MainAxisAlignment.center,
      onSort: _onSort,
      label: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(icon),
          Icon(
            isSorted
                ? isAscending
                    ? context.icons.chevron_up
                    : context.icons.chevron_down
                : context.icons.chevron_down,
            color: context.colors.gray500,
          ),
        ],
      ),
    );
  }

  void _onSort(int columnIndex, bool ascending) {
    context.read<ClassBloc>().add(ClassSorted(columnIndex: columnIndex, ascending: ascending));
  }

  TableBorder _buildTableBorder(BuildContext context) {
    return TableBorder(
      top: _borderSide(context),
      bottom: _borderSide(context),
      left: _borderSide(context),
      right: _borderSide(context),
      horizontalInside: _borderSide(context),
      verticalInside: _borderSide(context),
    );
  }

  BorderSide _borderSide(BuildContext context) {
    return BorderSide(color: context.colors.gray100, width: 1);
  }
}
