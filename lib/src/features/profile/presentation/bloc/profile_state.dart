part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState.loading() = _Loading;
  const factory ProfileState.loaded({
    required ProfileViewModel viewModel,
  }) = _Loaded;
  const factory ProfileState.error(String error) = _Error;
}

@freezed
class ProfileViewModel with _$ProfileViewModel {
  const factory ProfileViewModel({
    @Default(null) ProfileData? profile,
    @Default(null) UpdateProfileEntity? updateProfile,
  }) = _ProfileViewModel;
}
