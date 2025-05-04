import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_profile_entity.freezed.dart';
part 'get_profile_entity.g.dart';

@freezed
class GetProfileEntity with _$GetProfileEntity {
  const factory GetProfileEntity({
    String? status,
    ProfileData? data,
  }) = _GetProfileEntity;

  factory GetProfileEntity.fromJson(Map<String, dynamic> json) => _$GetProfileEntityFromJson(json);
}

@freezed
class ProfileData with _$ProfileData {
  const factory ProfileData({
    required String username,
    required String name,
    required String email,
    required int avatar,
    required String dateOfBirth,
    required String bio,
    required List<int> preferredGenres,
    required String createdAt,
    required double balance,
  }) = _ProfileData;
  factory ProfileData.fromJson(Map<String, dynamic> json) => _$ProfileDataFromJson(json);
}
