import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:oyan/src/features/competition/domain/entities/get_competition_entity.dart';

part 'competition_entity.freezed.dart';
part 'competition_entity.g.dart';

@freezed
class Competition with _$Competition {
  const factory Competition({
    int? id,
    int? book,
    @JsonKey(name: 'from_date') DateTime? fromDate,
    @JsonKey(name: 'to_date') DateTime? toDate,
    @JsonKey(name: 'page_from') int? pageFrom,
    @JsonKey(name: 'page_to') int? pageTo,
    String? prize,
    int? players,
    int? questions,
    String? description,
    @JsonKey(name: 'tournament_name') String? tournamentName,
    CompetitionStatus? status,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    @JsonKey(name: 'poster_url') String? posterUrl,
  }) = _Competition;

  factory Competition.fromJson(Map<String, dynamic> json) => _$CompetitionFromJson(json);
}
