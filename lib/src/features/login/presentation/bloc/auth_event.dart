part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.login({
    required String username,
    required String password,
  }) = _Login;

  const factory AuthEvent.getUser() = _GetUser;

  const factory AuthEvent.refreshToken() = _RefreshToken;

  const factory AuthEvent.getCsrfToken() = _GetCsrfToken;

  const factory AuthEvent.forgotPassword({
    required String usernameOrEmail,
  }) = _ForgotPassword;

  const factory AuthEvent.updatePassword({
    required String newPassword,
  }) = _UpdatePassword;

  const factory AuthEvent.verify({required String code, required String userId}) = _Verify;

  const factory AuthEvent.register({
    required String username,
    required String email,
    required String password1,
    required String password2,
  }) = _Register;
}
