import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/base/base_models/base_entity.dart';

part 'feed_entity.freezed.dart';
part 'feed_entity.g.dart';

@freezed
class FeedEntity extends BaseEntity with _$FeedEntity {
  const factory FeedEntity({
    required String feedType,
    required String referenceId,
    required String id,
  }) = _FeedEntity;

  factory FeedEntity.fromJson(Map<String, dynamic> json) =>
      _$FeedEntityFromJson(json);
}
