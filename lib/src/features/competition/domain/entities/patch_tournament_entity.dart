import 'package:freezed_annotation/freezed_annotation.dart';

part 'patch_tournament_entity.freezed.dart';
part 'patch_tournament_entity.g.dart';

@freezed
class PatchTournamentEntity with _$PatchTournamentEntity {
  const factory PatchTournamentEntity({
    String? message,
  }) = _PatchTournamentEntity;

  factory PatchTournamentEntity.fromJson(Map<String, dynamic> json) => _$PatchTournamentEntityFromJson(json);
}
