import 'package:freezed_annotation/freezed_annotation.dart';

part 'csrf_token_response.freezed.dart';
part 'csrf_token_response.g.dart';

@freezed
class CsrfTokenResponse with _$CsrfTokenResponse {
  const factory CsrfTokenResponse({
    required String csrfToken,
  }) = _CsrfTokenResponse;

  factory CsrfTokenResponse.fromJson(Map<String, dynamic> json) => _$CsrfTokenResponseFromJson(json);
}
