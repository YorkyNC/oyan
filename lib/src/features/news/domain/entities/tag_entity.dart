import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/base/base_models/base_entity.dart';

part 'tag_entity.freezed.dart';
part 'tag_entity.g.dart';

@freezed
class TagEntity extends BaseEntity with _$TagEntity {
  const factory TagEntity({
    required String name,
    required String id,
  }) = _TagEntity;

  factory TagEntity.fromJson(Map<String, dynamic> json) =>
      _$TagEntityFromJson(json);
}
