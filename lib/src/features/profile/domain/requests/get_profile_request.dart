import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/base/base_models/base_request.dart';

part 'get_profile_request.freezed.dart';
part 'get_profile_request.g.dart';

@freezed
class GetProfileRequest extends BaseRequest with _$GetProfileRequest {
  const factory GetProfileRequest({
    required String username,
  }) = _GetProfileRequest;

  factory GetProfileRequest.fromJson(Map<String, dynamic> json) => _$GetProfileRequestFromJson(json);
}
