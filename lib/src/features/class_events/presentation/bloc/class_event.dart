sealed class ClassEvent {
  const ClassEvent();
}

class ClassFetched extends ClassEvent {}

class ClassFilterChanged extends ClassEvent {
  final String filterCriteria;

  const ClassFilterChanged({required this.filterCriteria});
}

class ClassSorted extends ClassEvent {
  final int columnIndex;
  final bool ascending;

  const ClassSorted({
    required this.columnIndex,
    required this.ascending,
  });
}
