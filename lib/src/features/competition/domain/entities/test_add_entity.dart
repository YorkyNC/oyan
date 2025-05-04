import 'package:freezed_annotation/freezed_annotation.dart';

part 'test_add_entity.freezed.dart';
part 'test_add_entity.g.dart';

@freezed
class TestAddEntity with _$TestAddEntity {
  const factory TestAddEntity({
    String? message,
  }) = _TestAddEntity;

  factory TestAddEntity.fromJson(Map<String, dynamic> json) => _$TestAddEntityFromJson(json);
}
