import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_comments_response.freezed.dart';
part 'add_comments_response.g.dart';

@freezed
class AddCommentResponse with _$AddCommentResponse {
  const factory AddCommentResponse({
    String? status,
    @JsonKey(name: 'new_rating') double? newRating,
  }) = _AddCommentResponse;

  factory AddCommentResponse.fromJson(Map<String, dynamic> json) => _$AddCommentResponseFromJson(json);
}
