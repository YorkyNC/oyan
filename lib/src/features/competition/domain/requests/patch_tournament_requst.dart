import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:oyan/src/features/competition/domain/entities/get_competition_entity.dart';

import '../../../../core/base/base_models/base_request.dart';

part 'patch_tournament_requst.freezed.dart';
part 'patch_tournament_requst.g.dart';

@freezed
class PatchTournamentRequest extends BaseRequest with _$PatchTournamentRequest {
  const PatchTournamentRequest._();
  const factory PatchTournamentRequest({
    @JsonKey(name: 'tournament_id') required int tournamentId,
    @JsonKey(name: 'status') required CompetitionStatus status,
  }) = _PatchTournamentRequest;

  factory PatchTournamentRequest.fromJson(Map<String, dynamic> json) => _$PatchTournamentRequestFromJson(json);
}
