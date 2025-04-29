import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/base/base_models/base_request.dart';

part 'get_result_request.freezed.dart';
part 'get_result_request.g.dart';

@freezed
class GetResultRequest extends BaseRequest with _$GetResultRequest {
  const GetResultRequest._();
  const factory GetResultRequest({
    @JsonKey(name: 'tournament_id') required int tournamentId,
  }) = _GetResultRequest;

  factory GetResultRequest.fromJson(Map<String, dynamic> json) => _$GetResultRequestFromJson(json);
}
