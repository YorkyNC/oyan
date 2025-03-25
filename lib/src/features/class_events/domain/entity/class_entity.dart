class ClassEntity {
  final String className;
  final String studentsCount;
  final String firstMetric;
  final String secondMetric;
  final String thirdMetric;

  final int notificationCount;

  ClassEntity({
    required this.className,
    required this.studentsCount,
    required this.firstMetric,
    required this.secondMetric,
    required this.thirdMetric,
    this.notificationCount = 0,
  });
}
