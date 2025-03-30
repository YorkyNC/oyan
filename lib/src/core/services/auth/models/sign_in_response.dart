import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/base/base_models/base_entity.dart';

part 'sign_in_response.freezed.dart';
part 'sign_in_response.g.dart';

@freezed
class SignInResponse extends BaseEntity with _$SignInResponse {
  const factory SignInResponse({
    String? status,
    String? username,
    String? email,
    String? name,
    int? avatar,
    @JsonKey(name: 'date_of_birth') String? dateOfBirth,
    String? bio,
    @JsonKey(name: 'preferred_genres') List<dynamic>? preferredGenres,
    @JsonKey(name: 'created_at') String? createdAt,
  }) = _SignInResponse;

  factory SignInResponse.fromJson(Map<String, dynamic> json) => _$SignInResponseFromJson(json);
}
