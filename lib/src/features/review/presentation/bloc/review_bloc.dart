import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:oyan/src/core/components/events/domain/models/enums/event_type.dart';
import 'package:oyan/src/core/components/events/domain/models/event_entity.dart';
import 'package:oyan/src/core/components/filter/domain/models/date_filter.dart';
import 'package:oyan/src/features/review/domain/entities/analytics_entity.dart';
import 'package:oyan/src/features/review/presentation/bloc/review_event.dart';
import 'package:oyan/src/features/review/presentation/bloc/review_state.dart';

@injectable
class ReviewBloc extends Bloc<ReviewEvent, ReviewState> {
  ReviewBloc() : super(ReviewState(analyticsDateFilter: DateFilter.day(startDate: DateTime.now()))) {
    _setupHandlers();
    add(ReviewFetched());
  }

  void _setupHandlers() {
    on<ReviewFetched>(_fetchData);
    on<ReviewAnalyticsFilterChanged>(_analyticsFilterChanged);
  }

  Future<void> _fetchData(ReviewFetched event, Emitter<ReviewState> emit) async {
    emit(state.copyWith(analytics: null));
    await Future.delayed(const Duration(seconds: 5));
    emit(
      state.copyWith(
        conflicts: [
          EventEntity(
            id: "id",
            createdAt: DateTime.now(),
            expiresAt: DateTime.now().add(const Duration(hours: 1)),
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
            expiresAt: DateTime.now().add(const Duration(hours: 10)),
            location: "Столовая",
            eventType: EventType.conflict,
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
            expiresAt: DateTime.now().add(const Duration(hours: 10)),
            location: "Столовая",
            eventType: EventType.conflict,
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
            expiresAt: DateTime.now().subtract(const Duration(hours: 3)),
            location: "Столовая",
            eventType: EventType.conflict,
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
            expiresAt: DateTime.now().subtract(const Duration(hours: 3)),
            location: "Столовая",
            eventType: EventType.conflict,
          ),
        ],
        analytics: AnalyticsEntity(conflicts: 20, smoking: 0, cheating: 50, hotspot: "Кафетерия", troubleClass: "5Б"),
      ),
    );
  }

  Future<void> _analyticsFilterChanged(ReviewAnalyticsFilterChanged event, Emitter<ReviewState> emit) async {
    if (event.dateFilter.runtimeType == state.analyticsDateFilter.runtimeType &&
        event.dateFilter is! DateFilterCustom) {
      return;
    }
    emit(state.copyWith(analyticsDateFilter: event.dateFilter));
    add(ReviewFetched());
  }
}
