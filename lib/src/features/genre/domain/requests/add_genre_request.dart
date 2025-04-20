import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/base/base_models/base_request.dart';

part 'add_genre_request.freezed.dart';
part 'add_genre_request.g.dart';

@freezed
class AddGenreRequest extends BaseRequest with _$AddGenreRequest {
  const factory AddGenreRequest({
    required List<int> genres,
  }) = _AddGenreRequest;

  factory AddGenreRequest.fromJson(Map<String, dynamic> json) => _$AddGenreRequestFromJson(json);
}
