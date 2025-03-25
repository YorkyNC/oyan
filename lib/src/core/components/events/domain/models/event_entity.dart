import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:oyan/src/core/components/events/domain/models/enums/event_type.dart';

part 'event_entity.freezed.dart';

@freezed
class EventEntity with _$EventEntity {
  factory EventEntity({
    required String id,
    required DateTime createdAt,
    required DateTime expiresAt,
    required String location,
    required EventType eventType,
  }) = _EventEntity;
}
