import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:oyan/src/features/class_events/domain/entity/class_entity.dart';

part 'class_state.freezed.dart';

@freezed
class ClassState with _$ClassState {
  factory ClassState({
    List<ClassEntity>? classes,
    @Default(-1) int sortColumnIndex,
    @Default(true) bool sortAscending,
  }) = _ClassState;
}
