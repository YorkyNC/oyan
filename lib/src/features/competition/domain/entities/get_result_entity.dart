import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_result_entity.freezed.dart';
part 'get_result_entity.g.dart';

@freezed
class GetResult with _$GetResult {
  const factory GetResult({
    List<Result>? results,
  }) = _GetResult;

  factory GetResult.fromJson(Map<String, dynamic> json) => _$GetResultFromJson(json);
}

@freezed
class Result with _$Result {
  const factory Result({
    String? user,
    int? score,
    String? time,
  }) = _Result;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}
