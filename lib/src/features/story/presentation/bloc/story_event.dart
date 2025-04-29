part of 'story_bloc.dart';

@freezed
class StoryEvent with _$StoryEvent {
  const factory StoryEvent.started() = _Started;

  const factory StoryEvent.getDailyExcerpts(GetDailyExcerptsRequest request) = _GetDailyExcerpts;
  const factory StoryEvent.getDailyHits(GetDailyHitsRequest request) = _GetDailyHits;
}
