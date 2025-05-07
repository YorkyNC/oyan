import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:oyan/src/core/services/auth/entities/user_entity.dart';
import 'package:oyan/src/core/services/auth/models/forgot_password_response.dart';
import 'package:oyan/src/core/services/auth/models/refresh_token_response.dart';
import 'package:oyan/src/core/services/auth/models/update_password_request.dart';
import 'package:oyan/src/core/services/auth/models/update_password_response.dart';
import 'package:oyan/src/core/services/storage/storage_service_impl.dart';
import 'package:oyan/src/features/login/data/models/csrf_token_response.dart';
import 'package:oyan/src/features/login/data/models/signup_request.dart';
import 'package:oyan/src/features/login/data/models/signup_response.dart';
import 'package:oyan/src/features/login/domain/usecases/csrf_token_use_case.dart';
import 'package:oyan/src/features/login/domain/usecases/register_use_case.dart';

import '../../../../core/base/base_bloc/bloc/base_bloc.dart';
import '../../../../core/base/base_usecase/result.dart';
import '../../../../core/exceptions/domain_exception.dart';
import '../../../../core/services/auth/models/models.dart';
import '../../../../core/utils/loggers/logger.dart';
import '../../domain/usecases/forgot_password_use_case.dart';
import '../../domain/usecases/get_user_use_case.dart';
import '../../domain/usecases/login_use_case.dart';
import '../../domain/usecases/refresh_token_use_case.dart';
import '../../domain/usecases/update_password_use_case.dart';
import '../../domain/usecases/verify_user_case.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends BaseBloc<AuthEvent, AuthState> {
  AuthBloc(
    this._loginUseCase,
    this._getUserUseCase,
    this._verifyUseCase,
    this._forgotPasswordUseCase,
    this._updatePasswordUseCase,
    this._refreshTokenUseCase,
    this._csrfTokenUseCase,
    this._registerUseCase,
  ) : super(const _Initial());

  final LoginUseCase _loginUseCase;
  final GetUserUseCase _getUserUseCase;
  final VerifyUseCase _verifyUseCase;
  final ForgotPasswordUseCase _forgotPasswordUseCase;
  final UpdatePasswordUseCase _updatePasswordUseCase;
  final RefreshTokenUseCase _refreshTokenUseCase;
  final CsrfTokenUseCase _csrfTokenUseCase;
  final RegisterUseCase _registerUseCase;
  final AuthStateViewModel _viewModel = const AuthStateViewModel();

  final StorageServiceImpl st = StorageServiceImpl();

  @override
  Future<void> onEventHandler(AuthEvent event, Emitter emit) async {
    await event.when(
      forgotPassword: (usernameOrEmail) => _forgotPassword(event as _ForgotPassword, emit as Emitter<AuthState>),
      getUser: () => _getUser(event as _GetUser, emit as Emitter<AuthState>),
      updatePassword: (newPassword) => _updatePassword(event as _UpdatePassword, emit as Emitter<AuthState>),
      login: (username, password) => _login(event as _Login, emit as Emitter<AuthState>),
      verify: (_, __) => _verify(event as _Verify, emit as Emitter<AuthState>),
      refreshToken: () => _refreshToken(event as _RefreshToken, emit as Emitter<AuthState>),
      getCsrfToken: () => _getCsrfToken(event as _GetCsrfToken, emit as Emitter<AuthState>),
      register: (username, email, password1, password2) => _register(event as _Register, emit as Emitter<AuthState>),
    );
  }

  Future<void> _register(_Register event, Emitter<AuthState> emit) async {
    emit(const _Loading());
    final SignupRequest request = SignupRequest(
      username: event.username,
      email: event.email,
      password1: event.password1,
      password2: event.password2,
    );
    final result = await _registerUseCase.call(request);
    if (result.isSuccessful) {
      return emit(_Loaded(viewModel: _viewModel.copyWith(signupResponse: result.data)));
    }
    return emit(const _Error("Failed to register"));
  }

  Future<void> _login(_Login event, Emitter<AuthState> emit) async {
    // Check if we have a valid CSRF token
    final csrfToken = _viewModel.csrfToken;
    if (csrfToken.isEmpty) {
      // If no CSRF token, get it first
      final csrfResult = await _csrfTokenUseCase.call();
      if (!csrfResult.isSuccessful) {
        return emit(const _Error("Failed to get CSRF token"));
      }
    }

    emit(const _Loading());
    final SignInRequest request = SignInRequest(login: event.username, password: event.password);
    final result = await _loginUseCase.call(request);
    if (result.isSuccessful) {
      final updatedViewModel = _viewModel.copyWith(signInResponse: result.data);
      return emit(AuthState.loaded(viewModel: updatedViewModel));
    }
    return emit(const AuthState.error('Введенные данные неверны, попробуйте снова'));
  }

  Future<void> _getCsrfToken(_GetCsrfToken event, Emitter<AuthState> emit) async {
    emit(const AuthState.loading());
    final Result<CsrfTokenResponse, DomainException> result = await _csrfTokenUseCase.call();
    if (result.isSuccessful) {
      final updatedViewModel = _viewModel.copyWith(csrfToken: result.data?.csrfToken ?? '');
      return emit(_Loaded(viewModel: updatedViewModel));
    }
    return emit(const _Error("Failed to get CSRF token"));
  }

  Future<void> _refreshToken(_RefreshToken event, Emitter<AuthState> emit) async {
    emit(const _Initial());
    final Result<RefreshTokenResponse, DomainException> result = await _refreshTokenUseCase.call();

    if (result.isSuccessful) {
      return emit(_Loaded(viewModel: _viewModel));
    }
    return emit(const _Error("Refresh failed"));
  }

  Future<void> _getUser(_GetUser event, Emitter<AuthState> emit) async {
    emit(const AuthState.loading());

    try {
      final Result<UserEntity, DomainException> result = await _getUserUseCase.call();

      if (result.isSuccessful && result.data != null) {
        emit(AuthState.loaded(viewModel: _mapUserEntityToViewModel(result.data!)));
      }
    } catch (e) {
      return emit(AuthState.error(e is DomainException ? e.message : 'An unexpected error occurred'));
    }
  }

  AuthStateViewModel _mapUserEntityToViewModel(UserEntity user) {
    return AuthStateViewModel(
      user: UserEntity(id: user.id, email: user.email, firstName: user.firstName, lastName: user.lastName),
    );
  }

  Future<void> _updateTokens(RefreshTokenResponse response) async {
    await st.setToken(response.accessToken);
    await st.setRefreshToken(response.refreshToken);
  }

  Future<void> _updatePassword(_UpdatePassword event, Emitter<AuthState> emit) async {
    emit(const _Initial());
    final UpdatePasswordRequest request = UpdatePasswordRequest(password: event.newPassword);

    final Result<UpdatePasswordResponse, DomainException> result = await _updatePasswordUseCase.call(request);

    if (result.isSuccessful) {
      return emit(_Loaded(viewModel: _viewModel));
    }
    return emit(const _Error("Login failed"));
  }

  Future<void> _forgotPassword(_ForgotPassword event, Emitter<AuthState> emit) async {
    emit(const _Initial());
    final ForgotPasswordRequest request = ForgotPasswordRequest(usernameOrEmail: event.usernameOrEmail);
    final Result<ForgotPasswordResponse, DomainException> result = await _forgotPasswordUseCase.call(request);

    if (result.data == null) {
      Log.e('Password reset sent to email');
    }

    return emit(AuthState.loaded(viewModel: _viewModel));
  }

  Future<void> _verify(_Verify event, Emitter<AuthState> emit) async {
    final VerifyRequest request = VerifyRequest(userId: event.userId, code: event.code);

    final Result<VerifyResponse, DomainException> result = await _verifyUseCase.call(request);

    final data = result.data;

    if (data == null) {
      return emit(const _ErrorVerify("Вы ввели не правильный код"));
    }

    if (result.isSuccessful) {
      return emit(_Verified(viewModel: _viewModel.copyWith(token: data.data.accessToken)));
    }
    return emit(const _ErrorVerify("Вы ввели не правильный код"));
  }
}
