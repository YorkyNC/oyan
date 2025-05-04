import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/base/base_models/base_request.dart';

part 'test_add_request.freezed.dart';
part 'test_add_request.g.dart';

@freezed
class TestAddRequest extends BaseRequest with _$TestAddRequest {
  const TestAddRequest._();
  const factory TestAddRequest({
    @JsonKey(name: 'tournament_id') int? tournamentId,
    required int score,
    String? time,
  }) = _TestAddRequest;

  factory TestAddRequest.fromJson(Map<String, dynamic> json) => _$TestAddRequestFromJson(json);
}
