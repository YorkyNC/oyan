import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_commets_response.freezed.dart';
part 'get_commets_response.g.dart';

@freezed
class GetCommentsResponse with _$GetCommentsResponse {
  const factory GetCommentsResponse({
    String? status,
    int? count,
    String? next,
    String? previous,
    List<Comment>? results,
  }) = _GetCommentsResponse;

  factory GetCommentsResponse.fromJson(Map<String, dynamic> json) => _$GetCommentsResponseFromJson(json);
}

@freezed
class Comment with _$Comment {
  const factory Comment({
    int? id,
    int? user,
    String? username,
    String? avatar,
    String? content,
    String? rate,
    DateTime? createdAt,
  }) = _Comment;

  factory Comment.fromJson(Map<String, dynamic> json) => _$CommentFromJson(json);
}
