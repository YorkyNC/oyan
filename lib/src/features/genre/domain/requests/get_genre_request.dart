import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/base/base_models/base_request.dart';

part 'get_genre_request.freezed.dart';
part 'get_genre_request.g.dart';

@freezed
class GetGenreRequest extends BaseRequest with _$GetGenreRequest {
  const factory GetGenreRequest() = _GetGenreRequest;

  factory GetGenreRequest.fromJson(Map<String, dynamic> json) => _$GetGenreRequestFromJson(json);
}
