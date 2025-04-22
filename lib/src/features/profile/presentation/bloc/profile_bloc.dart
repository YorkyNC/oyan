import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:oyan/src/features/profile/domain/entities/profile_entity.dart';
import 'package:oyan/src/features/profile/domain/requests/get_profile_request.dart';
import 'package:oyan/src/features/profile/domain/usecases/get_profile_use_case.dart';

import '../../../../core/base/base_bloc/bloc/base_bloc.dart';

part 'profile_bloc.freezed.dart';
part 'profile_event.dart';
part 'profile_state.dart';

class ProfileBloc extends BaseBloc<ProfileEvent, ProfileState> {
  ProfileBloc(this.getProfileUseCase) : super(const ProfileState.loading());

  final GetProfileUseCase getProfileUseCase;

  ProfileViewModel _viewModel = const ProfileViewModel();

  @override
  Future<void> onEventHandler(ProfileEvent event, Emitter emit) async {
    await event.when(
      started: () => _started(event as _Started),
      getProfile: (request) => _getProfile(event as _GetProfile, emit as Emitter<ProfileState>),
    );
  }

  Future<void> _started(_Started event) async {}
  Future<void> _getProfile(_GetProfile event, Emitter emit) async {
    emit(const ProfileState.loading());

    final result = await getProfileUseCase.call(GetProfileRequest(username: event.request.username));
    if (result.failure != null) {
      return emit(ProfileState.error(result.failure!.message));
    }

    _viewModel = _viewModel.copyWith(profile: result.data);

    return emit(ProfileState.loaded(viewModel: _viewModel));
  }
}
