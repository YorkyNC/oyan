import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_entity.freezed.dart';
part 'profile_entity.g.dart';

@freezed
class ProfileData with _$ProfileData {
  const factory ProfileData({
    String? username,
    String? name,
    String? email,
    int? avatar,
    String? dateOfBirth,
    String? bio,
    List<int>? preferredGenres,
    String? createdAt,
    String? balance,
  }) = _ProfileData;
  factory ProfileData.fromJson(Map<String, dynamic> json) => _$ProfileDataFromJson(json);
}
