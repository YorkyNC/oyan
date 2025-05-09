part of 'profile_bloc.dart';

@freezed
class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.started() = _Started;

  const factory ProfileEvent.getProfile(GetProfileRequest request) = _GetProfile;
  const factory ProfileEvent.updateProfile(UpdateProfileRequest request) = _UpdateProfile;
}
