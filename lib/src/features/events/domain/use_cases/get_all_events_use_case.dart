import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:oyan/src/core/components/events/domain/models/enums/event_type.dart';
import 'package:oyan/src/core/components/events/domain/models/event_entity.dart';
import 'package:oyan/src/features/events/domain/requests/get_all_events_request.dart';

import '../../../../core/base/base_usecase/use_case.dart';
import '../../../../core/exceptions/domain_exception.dart';

@lazySingleton
class GetAllEventsUseCase extends UseCase<List<EventEntity>, GetAllEventsRequest> {
  GetAllEventsUseCase();

  final _mockEvents = [
    EventEntity(
      id: "id",
      createdAt: DateTime.now().subtract(const Duration(hours: 1, minutes: 0)),
      expiresAt: DateTime.now().add(const Duration(hours: 1)),
      location: "Столовая",
      eventType: EventType.conflict,
    ),
    EventEntity(
      id: "id",
      createdAt: DateTime.now().subtract(const Duration(hours: 3, minutes: 50)),
      expiresAt: DateTime.now().add(const Duration(hours: 3)),
      location: "Столовая",
      eventType: EventType.conflict,
    ),
    EventEntity(
      id: "id",
      createdAt: DateTime.now(),
      expiresAt: DateTime.now(),
      location: "Столовая",
      eventType: EventType.smoking,
    ),
    EventEntity(
      id: "id",
      createdAt: DateTime.now().subtract(const Duration(hours: 1, minutes: 5)),
      expiresAt: DateTime.now().add(const Duration(hours: 10)),
      location: "Столовая",
      eventType: EventType.conflict,
    ),
    EventEntity(
      id: "id",
      createdAt: DateTime.now(),
      expiresAt: DateTime.now(),
      location: "Столовая",
      eventType: EventType.smoking,
    ),
    EventEntity(
      id: "id",
      createdAt: DateTime.now().subtract(const Duration(hours: 6, minutes: 10)),
      expiresAt: DateTime.now().add(const Duration(hours: 16)),
      location: "Столовая",
      eventType: EventType.conflict,
    ),
    EventEntity(
      id: "id",
      createdAt: DateTime.now(),
      expiresAt: DateTime.now().subtract(const Duration(hours: 3)),
      location: "Столовая",
      eventType: EventType.conflict,
    ),
    EventEntity(
      id: "id",
      createdAt: DateTime.now(),
      expiresAt: DateTime.now().add(const Duration(hours: 3)),
      location: "Столовая",
      eventType: EventType.conflict,
    ),
    EventEntity(
      id: "id",
      createdAt: DateTime.now(),
      expiresAt: DateTime.now(),
      location: "Столовая",
      eventType: EventType.smoking,
    ),
    EventEntity(
      id: "id",
      createdAt: DateTime.now(),
      expiresAt: DateTime.now().add(const Duration(hours: 10)),
      location: "Столовая",
      eventType: EventType.conflict,
    ),
    EventEntity(
      id: "id",
      createdAt: DateTime.now(),
      expiresAt: DateTime.now(),
      location: "Столовая",
      eventType: EventType.cheating,
    ),
    EventEntity(
      id: "id",
      createdAt: DateTime.now(),
      expiresAt: DateTime.now().add(const Duration(hours: 16)),
      location: "Столовая",
      eventType: EventType.conflict,
    ),
    EventEntity(
      id: "id",
      createdAt: DateTime.now(),
      expiresAt: DateTime.now(),
      location: "Столовая",
      eventType: EventType.smoking,
    ),
    EventEntity(
      id: "id",
      createdAt: DateTime.now(),
      expiresAt: DateTime.now(),
      location: "Столовая",
      eventType: EventType.cheating,
    ),
    EventEntity(
      id: "id",
      createdAt: DateTime.now(),
      expiresAt: DateTime.now().subtract(const Duration(hours: 3)),
      location: "Столовая",
      eventType: EventType.conflict,
    ),
    EventEntity(
      id: "id",
      createdAt: DateTime.now(),
      expiresAt: DateTime.now(),
      location: "Столовая",
      eventType: EventType.cheating,
    ),
    EventEntity(
      id: "id",
      createdAt: DateTime.now(),
      expiresAt: DateTime.now().add(const Duration(hours: 16)),
      location: "Столовая",
      eventType: EventType.conflict,
    ),
    EventEntity(
      id: "id",
      createdAt: DateTime.now(),
      expiresAt: DateTime.now(),
      location: "Столовая",
      eventType: EventType.cheating,
    ),
    EventEntity(
      id: "id",
      createdAt: DateTime.now(),
      expiresAt: DateTime.now(),
      location: "Столовая",
      eventType: EventType.smoking,
    ),
    EventEntity(
      id: "id",
      createdAt: DateTime.now(),
      expiresAt: DateTime.now().subtract(const Duration(hours: 3)),
      location: "Столовая",
      eventType: EventType.conflict,
    ),
    EventEntity(
      id: "id",
      createdAt: DateTime.now(),
      expiresAt: DateTime.now(),
      location: "Столовая",
      eventType: EventType.smoking,
    ),
  ];

  @override
  Future<Either<DomainException, List<EventEntity>>> execute(GetAllEventsRequest requestModel) async {
    await Future.delayed(const Duration(seconds: 2));
    return Right(_mockEvents);
  }
}
