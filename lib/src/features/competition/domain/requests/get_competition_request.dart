import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:oyan/src/features/competition/domain/entities/get_competition_entity.dart';

import '../../../../core/base/base_models/base_request.dart';

part 'get_competition_request.freezed.dart';
part 'get_competition_request.g.dart';

@freezed
class GetCompetitionRequest extends BaseRequest with _$GetCompetitionRequest {
  const GetCompetitionRequest._();

  const factory GetCompetitionRequest({
    required CompetitionStatus status,
  }) = _GetCompetitionRequest;

  factory GetCompetitionRequest.fromJson(Map<String, dynamic> json) => _$GetCompetitionRequestFromJson(json);
}
