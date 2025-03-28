import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_response.freezed.dart';
part 'login_response.g.dart';

@freezed
class LoginResponse with _$LoginResponse {
  const factory LoginResponse({
    required String status,
    String? username,
    String? email,
    String? name,
    int? avatar,
    @JsonKey(name: 'date_of_birth') String? dateOfBirth,
    String? bio,
    @JsonKey(name: 'preferred_genres') bool? preferredGenres,
    @JsonKey(name: 'created_at') String? createdAt,
    String? message,
  }) = _LoginResponse;

  factory LoginResponse.fromJson(Map<String, dynamic> json) => _$LoginResponseFromJson(json);
}
