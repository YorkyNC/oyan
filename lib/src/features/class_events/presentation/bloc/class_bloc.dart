import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:oyan/src/features/class_events/domain/entity/class_entity.dart';
import 'package:oyan/src/features/class_events/presentation/bloc/class_event.dart';
import 'package:oyan/src/features/class_events/presentation/bloc/class_state.dart';

@injectable
class ClassBloc extends Bloc<ClassEvent, ClassState> {
  ClassBloc() : super(ClassState()) {
    _setupHandlers();
    add(ClassFetched());
  }

  void _setupHandlers() {
    on<ClassFetched>(_fetchData);
    on<ClassSorted>(_sortData);
  }

  Future<void> _fetchData(ClassFetched event, Emitter<ClassState> emit) async {
    emit(state.copyWith(classes: null));
    await Future.delayed(const Duration(seconds: 3));
    final classes = [
      ClassEntity(
        className: '7A Alpamys',
        studentsCount: '10 учеников',
        firstMetric: '42',
        secondMetric: '4',
        thirdMetric: '78',
      ),
      ClassEntity(
        className: '8B Zhibek',
        studentsCount: '21 учеников',
        firstMetric: '15',
        secondMetric: '3',
        thirdMetric: '20',
      ),
      ClassEntity(
        className: '9C Timur',
        studentsCount: '18 учеников',
        firstMetric: '10',
        secondMetric: '5',
        thirdMetric: '30',
      ),
      ClassEntity(
        className: '7D Aisha',
        studentsCount: '16 учеников',
        firstMetric: '8',
        secondMetric: '2',
        thirdMetric: '25',
      ),
      ClassEntity(
        className: '10A Bolat',
        studentsCount: '24 учеников',
        firstMetric: '12',
        secondMetric: '6',
        thirdMetric: '18',
      ),
    ];
    if (state.sortColumnIndex >= 0) {
      _applySorting(classes, state.sortColumnIndex, state.sortAscending);
    }

    emit(state.copyWith(classes: classes));
  }

  void _sortData(ClassSorted event, Emitter<ClassState> emit) {
    if (state.classes == null) return;
    if (state.sortColumnIndex == event.columnIndex && state.sortAscending == event.ascending) return;

    final classes = List<ClassEntity>.from(state.classes!);
    _applySorting(classes, event.columnIndex, event.ascending);

    emit(state.copyWith(classes: classes, sortColumnIndex: event.columnIndex, sortAscending: event.ascending));
  }

  void _applySorting(List<ClassEntity> classes, int columnIndex, bool ascending) {
    classes.sort((a, b) {
      int result;
      switch (columnIndex) {
        case 0: // Class Name column
          result = a.className.compareTo(b.className);
          break;
        case 1: // Conflicts column
          result = _compareMetrics(a.firstMetric, b.firstMetric);
          break;
        case 2: // Smoking column
          result = _compareMetrics(a.secondMetric, b.secondMetric);
          break;
        case 3: // Cheating column
          result = _compareMetrics(a.thirdMetric, b.thirdMetric);
          break;
        default:
          return 0;
      }
      return ascending ? result : -result;
    });
  }

  int _compareMetrics(String valueA, String valueB) {
    try {
      final numA = int.parse(valueA);
      final numB = int.parse(valueB);
      return numA.compareTo(numB);
    } catch (_) {
      // Fall back to string comparison
      return valueA.compareTo(valueB);
    }
  }
}
