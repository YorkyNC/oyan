import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_daily_excerpts.freezed.dart';
part 'get_daily_excerpts.g.dart';

@freezed
class GetDailyExcerpts with _$GetDailyExcerpts {
  const factory GetDailyExcerpts({
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'dailyexcerpts') List<DailyExcerpt>? dailyExcerpts,
  }) = _GetDailyExcerpts;

  factory GetDailyExcerpts.fromJson(Map<String, dynamic> json) => _$GetDailyExcerptsFromJson(json);
}

@freezed
class DailyExcerpt with _$DailyExcerpt {
  const factory DailyExcerpt({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'text') String? text,
    @JsonKey(name: 'book') int? book,
    @JsonKey(name: 'generated_image_url') String? generatedImageUrl,
    @JsonKey(name: 'date') DateTime? date,
  }) = _DailyExcerpt;

  factory DailyExcerpt.fromJson(Map<String, dynamic> json) => _$DailyExcerptFromJson(json);
}
