import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:oyan/src/features/competition/domain/entities/competition_entity.dart';

part 'get_competition_entity.freezed.dart';
part 'get_competition_entity.g.dart';

@freezed
class GetCompetitionEntity with _$GetCompetitionEntity {
  const factory GetCompetitionEntity({
    int? count,
    String? next,
    String? previous,
    List<Competition>? results,
  }) = _GetCompetitionEntity;

  factory GetCompetitionEntity.fromJson(Map<String, dynamic> json) => _$GetCompetitionEntityFromJson(json);
}

enum CompetitionStatus {
  @JsonValue('done')
  done,

  @JsonValue('start')
  start,

  @JsonValue('participate')
  participate,
}
