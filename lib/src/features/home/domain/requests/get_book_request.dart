import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/base/base_models/base_request.dart';

part 'get_book_request.freezed.dart';
part 'get_book_request.g.dart';

@freezed
class GetBookRequest extends BaseRequest with _$GetBookRequest {
  const GetBookRequest._();

  const factory GetBookRequest({
    required BookType type,
    int? page,
  }) = _GetBookRequest;

  factory GetBookRequest.fromJson(Map<String, dynamic> json) => _$GetBookRequestFromJson(json);

  @override
  Map<String, dynamic> toJson() {
    return {
      'type': type.value,
      if (page != null) 'page': page.toString(),
    };
  }
}

enum BookType {
  @JsonValue('new')
  newBooks,

  @JsonValue('popular')
  popular,

  @JsonValue('recommended')
  recommended
}

extension BookTypeExtension on BookType {
  String get value {
    switch (this) {
      case BookType.newBooks:
        return 'new';
      case BookType.popular:
        return 'popular';
      case BookType.recommended:
        return 'recommended';
    }
  }
}
