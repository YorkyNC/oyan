import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/base/base_models/base_request.dart';

part 'update_profile_requset.freezed.dart';
part 'update_profile_requset.g.dart';

@freezed
class UpdateProfileRequest extends BaseRequest with _$UpdateProfileRequest {
  const factory UpdateProfileRequest({
    required String username,
    required String bio,
    required String name,
    required int avatar,
  }) = _UpdateProfileRequest;

  factory UpdateProfileRequest.fromJson(Map<String, dynamic> json) => _$UpdateProfileRequestFromJson(json);
}
