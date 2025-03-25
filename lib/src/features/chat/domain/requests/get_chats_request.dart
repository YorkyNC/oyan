import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/base/base_models/base_request.dart';

part 'get_chats_request.freezed.dart';
part 'get_chats_request.g.dart';

@freezed
class GetChatsRequest extends BaseRequest with _$GetChatsRequest {
  const factory GetChatsRequest({
    required String schoolId,
    required String role,
    final String? childId,
    final int? limit,
    final int? offset,
  }) = _GetChatsRequest;

  factory GetChatsRequest.fromJson(Map<String, dynamic> json) => _$GetChatsRequestFromJson(json);
}
