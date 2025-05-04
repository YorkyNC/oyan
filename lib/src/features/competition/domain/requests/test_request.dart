import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/base/base_models/base_request.dart';

part 'test_request.freezed.dart';
part 'test_request.g.dart';

@freezed
class TestRequest extends BaseRequest with _$TestRequest {
  const TestRequest._();
  const factory TestRequest({
    @JsonKey(name: 'tournament_id') required int tournamentId,
  }) = _TestRequest;

  factory TestRequest.fromJson(Map<String, dynamic> json) => _$TestRequestFromJson(json);
}
