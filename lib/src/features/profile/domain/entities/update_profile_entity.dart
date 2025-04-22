import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_profile_entity.freezed.dart';
part 'update_profile_entity.g.dart';

@freezed
class UpdateProfileEntity with _$UpdateProfileEntity {
  const factory UpdateProfileEntity({
    String? message,
  }) = _ProfileData;
  factory UpdateProfileEntity.fromJson(Map<String, dynamic> json) => _$UpdateProfileEntityFromJson(json);
}
