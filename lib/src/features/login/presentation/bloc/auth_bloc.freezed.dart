// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username, String password) login,
    required TResult Function() getUser,
    required TResult Function() refreshToken,
    required TResult Function() getCsrfToken,
    required TResult Function(String usernameOrEmail) forgotPassword,
    required TResult Function(String newPassword) updatePassword,
    required TResult Function(String code, String userId) verify,
    required TResult Function(
            String username, String email, String password1, String password2)
        register,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username, String password)? login,
    TResult? Function()? getUser,
    TResult? Function()? refreshToken,
    TResult? Function()? getCsrfToken,
    TResult? Function(String usernameOrEmail)? forgotPassword,
    TResult? Function(String newPassword)? updatePassword,
    TResult? Function(String code, String userId)? verify,
    TResult? Function(
            String username, String email, String password1, String password2)?
        register,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username, String password)? login,
    TResult Function()? getUser,
    TResult Function()? refreshToken,
    TResult Function()? getCsrfToken,
    TResult Function(String usernameOrEmail)? forgotPassword,
    TResult Function(String newPassword)? updatePassword,
    TResult Function(String code, String userId)? verify,
    TResult Function(
            String username, String email, String password1, String password2)?
        register,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_GetUser value) getUser,
    required TResult Function(_RefreshToken value) refreshToken,
    required TResult Function(_GetCsrfToken value) getCsrfToken,
    required TResult Function(_ForgotPassword value) forgotPassword,
    required TResult Function(_UpdatePassword value) updatePassword,
    required TResult Function(_Verify value) verify,
    required TResult Function(_Register value) register,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
    TResult? Function(_GetUser value)? getUser,
    TResult? Function(_RefreshToken value)? refreshToken,
    TResult? Function(_GetCsrfToken value)? getCsrfToken,
    TResult? Function(_ForgotPassword value)? forgotPassword,
    TResult? Function(_UpdatePassword value)? updatePassword,
    TResult? Function(_Verify value)? verify,
    TResult? Function(_Register value)? register,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_GetUser value)? getUser,
    TResult Function(_RefreshToken value)? refreshToken,
    TResult Function(_GetCsrfToken value)? getCsrfToken,
    TResult Function(_ForgotPassword value)? forgotPassword,
    TResult Function(_UpdatePassword value)? updatePassword,
    TResult Function(_Verify value)? verify,
    TResult Function(_Register value)? register,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoginImplCopyWith<$Res> {
  factory _$$LoginImplCopyWith(
          _$LoginImpl value, $Res Function(_$LoginImpl) then) =
      __$$LoginImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String username, String password});
}

/// @nodoc
class __$$LoginImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LoginImpl>
    implements _$$LoginImplCopyWith<$Res> {
  __$$LoginImplCopyWithImpl(
      _$LoginImpl _value, $Res Function(_$LoginImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? password = null,
  }) {
    return _then(_$LoginImpl(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginImpl implements _Login {
  const _$LoginImpl({required this.username, required this.password});

  @override
  final String username;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.login(username: $username, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginImpl &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, username, password);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginImplCopyWith<_$LoginImpl> get copyWith =>
      __$$LoginImplCopyWithImpl<_$LoginImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username, String password) login,
    required TResult Function() getUser,
    required TResult Function() refreshToken,
    required TResult Function() getCsrfToken,
    required TResult Function(String usernameOrEmail) forgotPassword,
    required TResult Function(String newPassword) updatePassword,
    required TResult Function(String code, String userId) verify,
    required TResult Function(
            String username, String email, String password1, String password2)
        register,
  }) {
    return login(username, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username, String password)? login,
    TResult? Function()? getUser,
    TResult? Function()? refreshToken,
    TResult? Function()? getCsrfToken,
    TResult? Function(String usernameOrEmail)? forgotPassword,
    TResult? Function(String newPassword)? updatePassword,
    TResult? Function(String code, String userId)? verify,
    TResult? Function(
            String username, String email, String password1, String password2)?
        register,
  }) {
    return login?.call(username, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username, String password)? login,
    TResult Function()? getUser,
    TResult Function()? refreshToken,
    TResult Function()? getCsrfToken,
    TResult Function(String usernameOrEmail)? forgotPassword,
    TResult Function(String newPassword)? updatePassword,
    TResult Function(String code, String userId)? verify,
    TResult Function(
            String username, String email, String password1, String password2)?
        register,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(username, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_GetUser value) getUser,
    required TResult Function(_RefreshToken value) refreshToken,
    required TResult Function(_GetCsrfToken value) getCsrfToken,
    required TResult Function(_ForgotPassword value) forgotPassword,
    required TResult Function(_UpdatePassword value) updatePassword,
    required TResult Function(_Verify value) verify,
    required TResult Function(_Register value) register,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
    TResult? Function(_GetUser value)? getUser,
    TResult? Function(_RefreshToken value)? refreshToken,
    TResult? Function(_GetCsrfToken value)? getCsrfToken,
    TResult? Function(_ForgotPassword value)? forgotPassword,
    TResult? Function(_UpdatePassword value)? updatePassword,
    TResult? Function(_Verify value)? verify,
    TResult? Function(_Register value)? register,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_GetUser value)? getUser,
    TResult Function(_RefreshToken value)? refreshToken,
    TResult Function(_GetCsrfToken value)? getCsrfToken,
    TResult Function(_ForgotPassword value)? forgotPassword,
    TResult Function(_UpdatePassword value)? updatePassword,
    TResult Function(_Verify value)? verify,
    TResult Function(_Register value)? register,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class _Login implements AuthEvent {
  const factory _Login(
      {required final String username,
      required final String password}) = _$LoginImpl;

  String get username;
  String get password;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginImplCopyWith<_$LoginImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetUserImplCopyWith<$Res> {
  factory _$$GetUserImplCopyWith(
          _$GetUserImpl value, $Res Function(_$GetUserImpl) then) =
      __$$GetUserImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetUserImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$GetUserImpl>
    implements _$$GetUserImplCopyWith<$Res> {
  __$$GetUserImplCopyWithImpl(
      _$GetUserImpl _value, $Res Function(_$GetUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetUserImpl implements _GetUser {
  const _$GetUserImpl();

  @override
  String toString() {
    return 'AuthEvent.getUser()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetUserImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username, String password) login,
    required TResult Function() getUser,
    required TResult Function() refreshToken,
    required TResult Function() getCsrfToken,
    required TResult Function(String usernameOrEmail) forgotPassword,
    required TResult Function(String newPassword) updatePassword,
    required TResult Function(String code, String userId) verify,
    required TResult Function(
            String username, String email, String password1, String password2)
        register,
  }) {
    return getUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username, String password)? login,
    TResult? Function()? getUser,
    TResult? Function()? refreshToken,
    TResult? Function()? getCsrfToken,
    TResult? Function(String usernameOrEmail)? forgotPassword,
    TResult? Function(String newPassword)? updatePassword,
    TResult? Function(String code, String userId)? verify,
    TResult? Function(
            String username, String email, String password1, String password2)?
        register,
  }) {
    return getUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username, String password)? login,
    TResult Function()? getUser,
    TResult Function()? refreshToken,
    TResult Function()? getCsrfToken,
    TResult Function(String usernameOrEmail)? forgotPassword,
    TResult Function(String newPassword)? updatePassword,
    TResult Function(String code, String userId)? verify,
    TResult Function(
            String username, String email, String password1, String password2)?
        register,
    required TResult orElse(),
  }) {
    if (getUser != null) {
      return getUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_GetUser value) getUser,
    required TResult Function(_RefreshToken value) refreshToken,
    required TResult Function(_GetCsrfToken value) getCsrfToken,
    required TResult Function(_ForgotPassword value) forgotPassword,
    required TResult Function(_UpdatePassword value) updatePassword,
    required TResult Function(_Verify value) verify,
    required TResult Function(_Register value) register,
  }) {
    return getUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
    TResult? Function(_GetUser value)? getUser,
    TResult? Function(_RefreshToken value)? refreshToken,
    TResult? Function(_GetCsrfToken value)? getCsrfToken,
    TResult? Function(_ForgotPassword value)? forgotPassword,
    TResult? Function(_UpdatePassword value)? updatePassword,
    TResult? Function(_Verify value)? verify,
    TResult? Function(_Register value)? register,
  }) {
    return getUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_GetUser value)? getUser,
    TResult Function(_RefreshToken value)? refreshToken,
    TResult Function(_GetCsrfToken value)? getCsrfToken,
    TResult Function(_ForgotPassword value)? forgotPassword,
    TResult Function(_UpdatePassword value)? updatePassword,
    TResult Function(_Verify value)? verify,
    TResult Function(_Register value)? register,
    required TResult orElse(),
  }) {
    if (getUser != null) {
      return getUser(this);
    }
    return orElse();
  }
}

abstract class _GetUser implements AuthEvent {
  const factory _GetUser() = _$GetUserImpl;
}

/// @nodoc
abstract class _$$RefreshTokenImplCopyWith<$Res> {
  factory _$$RefreshTokenImplCopyWith(
          _$RefreshTokenImpl value, $Res Function(_$RefreshTokenImpl) then) =
      __$$RefreshTokenImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RefreshTokenImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$RefreshTokenImpl>
    implements _$$RefreshTokenImplCopyWith<$Res> {
  __$$RefreshTokenImplCopyWithImpl(
      _$RefreshTokenImpl _value, $Res Function(_$RefreshTokenImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RefreshTokenImpl implements _RefreshToken {
  const _$RefreshTokenImpl();

  @override
  String toString() {
    return 'AuthEvent.refreshToken()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RefreshTokenImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username, String password) login,
    required TResult Function() getUser,
    required TResult Function() refreshToken,
    required TResult Function() getCsrfToken,
    required TResult Function(String usernameOrEmail) forgotPassword,
    required TResult Function(String newPassword) updatePassword,
    required TResult Function(String code, String userId) verify,
    required TResult Function(
            String username, String email, String password1, String password2)
        register,
  }) {
    return refreshToken();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username, String password)? login,
    TResult? Function()? getUser,
    TResult? Function()? refreshToken,
    TResult? Function()? getCsrfToken,
    TResult? Function(String usernameOrEmail)? forgotPassword,
    TResult? Function(String newPassword)? updatePassword,
    TResult? Function(String code, String userId)? verify,
    TResult? Function(
            String username, String email, String password1, String password2)?
        register,
  }) {
    return refreshToken?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username, String password)? login,
    TResult Function()? getUser,
    TResult Function()? refreshToken,
    TResult Function()? getCsrfToken,
    TResult Function(String usernameOrEmail)? forgotPassword,
    TResult Function(String newPassword)? updatePassword,
    TResult Function(String code, String userId)? verify,
    TResult Function(
            String username, String email, String password1, String password2)?
        register,
    required TResult orElse(),
  }) {
    if (refreshToken != null) {
      return refreshToken();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_GetUser value) getUser,
    required TResult Function(_RefreshToken value) refreshToken,
    required TResult Function(_GetCsrfToken value) getCsrfToken,
    required TResult Function(_ForgotPassword value) forgotPassword,
    required TResult Function(_UpdatePassword value) updatePassword,
    required TResult Function(_Verify value) verify,
    required TResult Function(_Register value) register,
  }) {
    return refreshToken(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
    TResult? Function(_GetUser value)? getUser,
    TResult? Function(_RefreshToken value)? refreshToken,
    TResult? Function(_GetCsrfToken value)? getCsrfToken,
    TResult? Function(_ForgotPassword value)? forgotPassword,
    TResult? Function(_UpdatePassword value)? updatePassword,
    TResult? Function(_Verify value)? verify,
    TResult? Function(_Register value)? register,
  }) {
    return refreshToken?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_GetUser value)? getUser,
    TResult Function(_RefreshToken value)? refreshToken,
    TResult Function(_GetCsrfToken value)? getCsrfToken,
    TResult Function(_ForgotPassword value)? forgotPassword,
    TResult Function(_UpdatePassword value)? updatePassword,
    TResult Function(_Verify value)? verify,
    TResult Function(_Register value)? register,
    required TResult orElse(),
  }) {
    if (refreshToken != null) {
      return refreshToken(this);
    }
    return orElse();
  }
}

abstract class _RefreshToken implements AuthEvent {
  const factory _RefreshToken() = _$RefreshTokenImpl;
}

/// @nodoc
abstract class _$$GetCsrfTokenImplCopyWith<$Res> {
  factory _$$GetCsrfTokenImplCopyWith(
          _$GetCsrfTokenImpl value, $Res Function(_$GetCsrfTokenImpl) then) =
      __$$GetCsrfTokenImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetCsrfTokenImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$GetCsrfTokenImpl>
    implements _$$GetCsrfTokenImplCopyWith<$Res> {
  __$$GetCsrfTokenImplCopyWithImpl(
      _$GetCsrfTokenImpl _value, $Res Function(_$GetCsrfTokenImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetCsrfTokenImpl implements _GetCsrfToken {
  const _$GetCsrfTokenImpl();

  @override
  String toString() {
    return 'AuthEvent.getCsrfToken()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetCsrfTokenImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username, String password) login,
    required TResult Function() getUser,
    required TResult Function() refreshToken,
    required TResult Function() getCsrfToken,
    required TResult Function(String usernameOrEmail) forgotPassword,
    required TResult Function(String newPassword) updatePassword,
    required TResult Function(String code, String userId) verify,
    required TResult Function(
            String username, String email, String password1, String password2)
        register,
  }) {
    return getCsrfToken();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username, String password)? login,
    TResult? Function()? getUser,
    TResult? Function()? refreshToken,
    TResult? Function()? getCsrfToken,
    TResult? Function(String usernameOrEmail)? forgotPassword,
    TResult? Function(String newPassword)? updatePassword,
    TResult? Function(String code, String userId)? verify,
    TResult? Function(
            String username, String email, String password1, String password2)?
        register,
  }) {
    return getCsrfToken?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username, String password)? login,
    TResult Function()? getUser,
    TResult Function()? refreshToken,
    TResult Function()? getCsrfToken,
    TResult Function(String usernameOrEmail)? forgotPassword,
    TResult Function(String newPassword)? updatePassword,
    TResult Function(String code, String userId)? verify,
    TResult Function(
            String username, String email, String password1, String password2)?
        register,
    required TResult orElse(),
  }) {
    if (getCsrfToken != null) {
      return getCsrfToken();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_GetUser value) getUser,
    required TResult Function(_RefreshToken value) refreshToken,
    required TResult Function(_GetCsrfToken value) getCsrfToken,
    required TResult Function(_ForgotPassword value) forgotPassword,
    required TResult Function(_UpdatePassword value) updatePassword,
    required TResult Function(_Verify value) verify,
    required TResult Function(_Register value) register,
  }) {
    return getCsrfToken(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
    TResult? Function(_GetUser value)? getUser,
    TResult? Function(_RefreshToken value)? refreshToken,
    TResult? Function(_GetCsrfToken value)? getCsrfToken,
    TResult? Function(_ForgotPassword value)? forgotPassword,
    TResult? Function(_UpdatePassword value)? updatePassword,
    TResult? Function(_Verify value)? verify,
    TResult? Function(_Register value)? register,
  }) {
    return getCsrfToken?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_GetUser value)? getUser,
    TResult Function(_RefreshToken value)? refreshToken,
    TResult Function(_GetCsrfToken value)? getCsrfToken,
    TResult Function(_ForgotPassword value)? forgotPassword,
    TResult Function(_UpdatePassword value)? updatePassword,
    TResult Function(_Verify value)? verify,
    TResult Function(_Register value)? register,
    required TResult orElse(),
  }) {
    if (getCsrfToken != null) {
      return getCsrfToken(this);
    }
    return orElse();
  }
}

abstract class _GetCsrfToken implements AuthEvent {
  const factory _GetCsrfToken() = _$GetCsrfTokenImpl;
}

/// @nodoc
abstract class _$$ForgotPasswordImplCopyWith<$Res> {
  factory _$$ForgotPasswordImplCopyWith(_$ForgotPasswordImpl value,
          $Res Function(_$ForgotPasswordImpl) then) =
      __$$ForgotPasswordImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String usernameOrEmail});
}

/// @nodoc
class __$$ForgotPasswordImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$ForgotPasswordImpl>
    implements _$$ForgotPasswordImplCopyWith<$Res> {
  __$$ForgotPasswordImplCopyWithImpl(
      _$ForgotPasswordImpl _value, $Res Function(_$ForgotPasswordImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? usernameOrEmail = null,
  }) {
    return _then(_$ForgotPasswordImpl(
      usernameOrEmail: null == usernameOrEmail
          ? _value.usernameOrEmail
          : usernameOrEmail // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ForgotPasswordImpl implements _ForgotPassword {
  const _$ForgotPasswordImpl({required this.usernameOrEmail});

  @override
  final String usernameOrEmail;

  @override
  String toString() {
    return 'AuthEvent.forgotPassword(usernameOrEmail: $usernameOrEmail)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForgotPasswordImpl &&
            (identical(other.usernameOrEmail, usernameOrEmail) ||
                other.usernameOrEmail == usernameOrEmail));
  }

  @override
  int get hashCode => Object.hash(runtimeType, usernameOrEmail);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ForgotPasswordImplCopyWith<_$ForgotPasswordImpl> get copyWith =>
      __$$ForgotPasswordImplCopyWithImpl<_$ForgotPasswordImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username, String password) login,
    required TResult Function() getUser,
    required TResult Function() refreshToken,
    required TResult Function() getCsrfToken,
    required TResult Function(String usernameOrEmail) forgotPassword,
    required TResult Function(String newPassword) updatePassword,
    required TResult Function(String code, String userId) verify,
    required TResult Function(
            String username, String email, String password1, String password2)
        register,
  }) {
    return forgotPassword(usernameOrEmail);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username, String password)? login,
    TResult? Function()? getUser,
    TResult? Function()? refreshToken,
    TResult? Function()? getCsrfToken,
    TResult? Function(String usernameOrEmail)? forgotPassword,
    TResult? Function(String newPassword)? updatePassword,
    TResult? Function(String code, String userId)? verify,
    TResult? Function(
            String username, String email, String password1, String password2)?
        register,
  }) {
    return forgotPassword?.call(usernameOrEmail);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username, String password)? login,
    TResult Function()? getUser,
    TResult Function()? refreshToken,
    TResult Function()? getCsrfToken,
    TResult Function(String usernameOrEmail)? forgotPassword,
    TResult Function(String newPassword)? updatePassword,
    TResult Function(String code, String userId)? verify,
    TResult Function(
            String username, String email, String password1, String password2)?
        register,
    required TResult orElse(),
  }) {
    if (forgotPassword != null) {
      return forgotPassword(usernameOrEmail);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_GetUser value) getUser,
    required TResult Function(_RefreshToken value) refreshToken,
    required TResult Function(_GetCsrfToken value) getCsrfToken,
    required TResult Function(_ForgotPassword value) forgotPassword,
    required TResult Function(_UpdatePassword value) updatePassword,
    required TResult Function(_Verify value) verify,
    required TResult Function(_Register value) register,
  }) {
    return forgotPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
    TResult? Function(_GetUser value)? getUser,
    TResult? Function(_RefreshToken value)? refreshToken,
    TResult? Function(_GetCsrfToken value)? getCsrfToken,
    TResult? Function(_ForgotPassword value)? forgotPassword,
    TResult? Function(_UpdatePassword value)? updatePassword,
    TResult? Function(_Verify value)? verify,
    TResult? Function(_Register value)? register,
  }) {
    return forgotPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_GetUser value)? getUser,
    TResult Function(_RefreshToken value)? refreshToken,
    TResult Function(_GetCsrfToken value)? getCsrfToken,
    TResult Function(_ForgotPassword value)? forgotPassword,
    TResult Function(_UpdatePassword value)? updatePassword,
    TResult Function(_Verify value)? verify,
    TResult Function(_Register value)? register,
    required TResult orElse(),
  }) {
    if (forgotPassword != null) {
      return forgotPassword(this);
    }
    return orElse();
  }
}

abstract class _ForgotPassword implements AuthEvent {
  const factory _ForgotPassword({required final String usernameOrEmail}) =
      _$ForgotPasswordImpl;

  String get usernameOrEmail;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ForgotPasswordImplCopyWith<_$ForgotPasswordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdatePasswordImplCopyWith<$Res> {
  factory _$$UpdatePasswordImplCopyWith(_$UpdatePasswordImpl value,
          $Res Function(_$UpdatePasswordImpl) then) =
      __$$UpdatePasswordImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String newPassword});
}

/// @nodoc
class __$$UpdatePasswordImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$UpdatePasswordImpl>
    implements _$$UpdatePasswordImplCopyWith<$Res> {
  __$$UpdatePasswordImplCopyWithImpl(
      _$UpdatePasswordImpl _value, $Res Function(_$UpdatePasswordImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newPassword = null,
  }) {
    return _then(_$UpdatePasswordImpl(
      newPassword: null == newPassword
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdatePasswordImpl implements _UpdatePassword {
  const _$UpdatePasswordImpl({required this.newPassword});

  @override
  final String newPassword;

  @override
  String toString() {
    return 'AuthEvent.updatePassword(newPassword: $newPassword)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdatePasswordImpl &&
            (identical(other.newPassword, newPassword) ||
                other.newPassword == newPassword));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newPassword);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdatePasswordImplCopyWith<_$UpdatePasswordImpl> get copyWith =>
      __$$UpdatePasswordImplCopyWithImpl<_$UpdatePasswordImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username, String password) login,
    required TResult Function() getUser,
    required TResult Function() refreshToken,
    required TResult Function() getCsrfToken,
    required TResult Function(String usernameOrEmail) forgotPassword,
    required TResult Function(String newPassword) updatePassword,
    required TResult Function(String code, String userId) verify,
    required TResult Function(
            String username, String email, String password1, String password2)
        register,
  }) {
    return updatePassword(newPassword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username, String password)? login,
    TResult? Function()? getUser,
    TResult? Function()? refreshToken,
    TResult? Function()? getCsrfToken,
    TResult? Function(String usernameOrEmail)? forgotPassword,
    TResult? Function(String newPassword)? updatePassword,
    TResult? Function(String code, String userId)? verify,
    TResult? Function(
            String username, String email, String password1, String password2)?
        register,
  }) {
    return updatePassword?.call(newPassword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username, String password)? login,
    TResult Function()? getUser,
    TResult Function()? refreshToken,
    TResult Function()? getCsrfToken,
    TResult Function(String usernameOrEmail)? forgotPassword,
    TResult Function(String newPassword)? updatePassword,
    TResult Function(String code, String userId)? verify,
    TResult Function(
            String username, String email, String password1, String password2)?
        register,
    required TResult orElse(),
  }) {
    if (updatePassword != null) {
      return updatePassword(newPassword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_GetUser value) getUser,
    required TResult Function(_RefreshToken value) refreshToken,
    required TResult Function(_GetCsrfToken value) getCsrfToken,
    required TResult Function(_ForgotPassword value) forgotPassword,
    required TResult Function(_UpdatePassword value) updatePassword,
    required TResult Function(_Verify value) verify,
    required TResult Function(_Register value) register,
  }) {
    return updatePassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
    TResult? Function(_GetUser value)? getUser,
    TResult? Function(_RefreshToken value)? refreshToken,
    TResult? Function(_GetCsrfToken value)? getCsrfToken,
    TResult? Function(_ForgotPassword value)? forgotPassword,
    TResult? Function(_UpdatePassword value)? updatePassword,
    TResult? Function(_Verify value)? verify,
    TResult? Function(_Register value)? register,
  }) {
    return updatePassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_GetUser value)? getUser,
    TResult Function(_RefreshToken value)? refreshToken,
    TResult Function(_GetCsrfToken value)? getCsrfToken,
    TResult Function(_ForgotPassword value)? forgotPassword,
    TResult Function(_UpdatePassword value)? updatePassword,
    TResult Function(_Verify value)? verify,
    TResult Function(_Register value)? register,
    required TResult orElse(),
  }) {
    if (updatePassword != null) {
      return updatePassword(this);
    }
    return orElse();
  }
}

abstract class _UpdatePassword implements AuthEvent {
  const factory _UpdatePassword({required final String newPassword}) =
      _$UpdatePasswordImpl;

  String get newPassword;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdatePasswordImplCopyWith<_$UpdatePasswordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VerifyImplCopyWith<$Res> {
  factory _$$VerifyImplCopyWith(
          _$VerifyImpl value, $Res Function(_$VerifyImpl) then) =
      __$$VerifyImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String code, String userId});
}

/// @nodoc
class __$$VerifyImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$VerifyImpl>
    implements _$$VerifyImplCopyWith<$Res> {
  __$$VerifyImplCopyWithImpl(
      _$VerifyImpl _value, $Res Function(_$VerifyImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? userId = null,
  }) {
    return _then(_$VerifyImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$VerifyImpl implements _Verify {
  const _$VerifyImpl({required this.code, required this.userId});

  @override
  final String code;
  @override
  final String userId;

  @override
  String toString() {
    return 'AuthEvent.verify(code: $code, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code, userId);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifyImplCopyWith<_$VerifyImpl> get copyWith =>
      __$$VerifyImplCopyWithImpl<_$VerifyImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username, String password) login,
    required TResult Function() getUser,
    required TResult Function() refreshToken,
    required TResult Function() getCsrfToken,
    required TResult Function(String usernameOrEmail) forgotPassword,
    required TResult Function(String newPassword) updatePassword,
    required TResult Function(String code, String userId) verify,
    required TResult Function(
            String username, String email, String password1, String password2)
        register,
  }) {
    return verify(code, userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username, String password)? login,
    TResult? Function()? getUser,
    TResult? Function()? refreshToken,
    TResult? Function()? getCsrfToken,
    TResult? Function(String usernameOrEmail)? forgotPassword,
    TResult? Function(String newPassword)? updatePassword,
    TResult? Function(String code, String userId)? verify,
    TResult? Function(
            String username, String email, String password1, String password2)?
        register,
  }) {
    return verify?.call(code, userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username, String password)? login,
    TResult Function()? getUser,
    TResult Function()? refreshToken,
    TResult Function()? getCsrfToken,
    TResult Function(String usernameOrEmail)? forgotPassword,
    TResult Function(String newPassword)? updatePassword,
    TResult Function(String code, String userId)? verify,
    TResult Function(
            String username, String email, String password1, String password2)?
        register,
    required TResult orElse(),
  }) {
    if (verify != null) {
      return verify(code, userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_GetUser value) getUser,
    required TResult Function(_RefreshToken value) refreshToken,
    required TResult Function(_GetCsrfToken value) getCsrfToken,
    required TResult Function(_ForgotPassword value) forgotPassword,
    required TResult Function(_UpdatePassword value) updatePassword,
    required TResult Function(_Verify value) verify,
    required TResult Function(_Register value) register,
  }) {
    return verify(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
    TResult? Function(_GetUser value)? getUser,
    TResult? Function(_RefreshToken value)? refreshToken,
    TResult? Function(_GetCsrfToken value)? getCsrfToken,
    TResult? Function(_ForgotPassword value)? forgotPassword,
    TResult? Function(_UpdatePassword value)? updatePassword,
    TResult? Function(_Verify value)? verify,
    TResult? Function(_Register value)? register,
  }) {
    return verify?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_GetUser value)? getUser,
    TResult Function(_RefreshToken value)? refreshToken,
    TResult Function(_GetCsrfToken value)? getCsrfToken,
    TResult Function(_ForgotPassword value)? forgotPassword,
    TResult Function(_UpdatePassword value)? updatePassword,
    TResult Function(_Verify value)? verify,
    TResult Function(_Register value)? register,
    required TResult orElse(),
  }) {
    if (verify != null) {
      return verify(this);
    }
    return orElse();
  }
}

abstract class _Verify implements AuthEvent {
  const factory _Verify(
      {required final String code,
      required final String userId}) = _$VerifyImpl;

  String get code;
  String get userId;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VerifyImplCopyWith<_$VerifyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RegisterImplCopyWith<$Res> {
  factory _$$RegisterImplCopyWith(
          _$RegisterImpl value, $Res Function(_$RegisterImpl) then) =
      __$$RegisterImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String username, String email, String password1, String password2});
}

/// @nodoc
class __$$RegisterImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$RegisterImpl>
    implements _$$RegisterImplCopyWith<$Res> {
  __$$RegisterImplCopyWithImpl(
      _$RegisterImpl _value, $Res Function(_$RegisterImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? email = null,
    Object? password1 = null,
    Object? password2 = null,
  }) {
    return _then(_$RegisterImpl(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password1: null == password1
          ? _value.password1
          : password1 // ignore: cast_nullable_to_non_nullable
              as String,
      password2: null == password2
          ? _value.password2
          : password2 // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RegisterImpl implements _Register {
  const _$RegisterImpl(
      {required this.username,
      required this.email,
      required this.password1,
      required this.password2});

  @override
  final String username;
  @override
  final String email;
  @override
  final String password1;
  @override
  final String password2;

  @override
  String toString() {
    return 'AuthEvent.register(username: $username, email: $email, password1: $password1, password2: $password2)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterImpl &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password1, password1) ||
                other.password1 == password1) &&
            (identical(other.password2, password2) ||
                other.password2 == password2));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, username, email, password1, password2);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterImplCopyWith<_$RegisterImpl> get copyWith =>
      __$$RegisterImplCopyWithImpl<_$RegisterImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username, String password) login,
    required TResult Function() getUser,
    required TResult Function() refreshToken,
    required TResult Function() getCsrfToken,
    required TResult Function(String usernameOrEmail) forgotPassword,
    required TResult Function(String newPassword) updatePassword,
    required TResult Function(String code, String userId) verify,
    required TResult Function(
            String username, String email, String password1, String password2)
        register,
  }) {
    return register(username, email, password1, password2);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username, String password)? login,
    TResult? Function()? getUser,
    TResult? Function()? refreshToken,
    TResult? Function()? getCsrfToken,
    TResult? Function(String usernameOrEmail)? forgotPassword,
    TResult? Function(String newPassword)? updatePassword,
    TResult? Function(String code, String userId)? verify,
    TResult? Function(
            String username, String email, String password1, String password2)?
        register,
  }) {
    return register?.call(username, email, password1, password2);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username, String password)? login,
    TResult Function()? getUser,
    TResult Function()? refreshToken,
    TResult Function()? getCsrfToken,
    TResult Function(String usernameOrEmail)? forgotPassword,
    TResult Function(String newPassword)? updatePassword,
    TResult Function(String code, String userId)? verify,
    TResult Function(
            String username, String email, String password1, String password2)?
        register,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(username, email, password1, password2);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_GetUser value) getUser,
    required TResult Function(_RefreshToken value) refreshToken,
    required TResult Function(_GetCsrfToken value) getCsrfToken,
    required TResult Function(_ForgotPassword value) forgotPassword,
    required TResult Function(_UpdatePassword value) updatePassword,
    required TResult Function(_Verify value) verify,
    required TResult Function(_Register value) register,
  }) {
    return register(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
    TResult? Function(_GetUser value)? getUser,
    TResult? Function(_RefreshToken value)? refreshToken,
    TResult? Function(_GetCsrfToken value)? getCsrfToken,
    TResult? Function(_ForgotPassword value)? forgotPassword,
    TResult? Function(_UpdatePassword value)? updatePassword,
    TResult? Function(_Verify value)? verify,
    TResult? Function(_Register value)? register,
  }) {
    return register?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_GetUser value)? getUser,
    TResult Function(_RefreshToken value)? refreshToken,
    TResult Function(_GetCsrfToken value)? getCsrfToken,
    TResult Function(_ForgotPassword value)? forgotPassword,
    TResult Function(_UpdatePassword value)? updatePassword,
    TResult Function(_Verify value)? verify,
    TResult Function(_Register value)? register,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(this);
    }
    return orElse();
  }
}

abstract class _Register implements AuthEvent {
  const factory _Register(
      {required final String username,
      required final String email,
      required final String password1,
      required final String password2}) = _$RegisterImpl;

  String get username;
  String get email;
  String get password1;
  String get password2;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegisterImplCopyWith<_$RegisterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AuthStateViewModel viewModel) loaded,
    required TResult Function(AuthStateViewModel viewModel) verified,
    required TResult Function(String error) error,
    required TResult Function(String error) errorVerify,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AuthStateViewModel viewModel)? loaded,
    TResult? Function(AuthStateViewModel viewModel)? verified,
    TResult? Function(String error)? error,
    TResult? Function(String error)? errorVerify,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AuthStateViewModel viewModel)? loaded,
    TResult Function(AuthStateViewModel viewModel)? verified,
    TResult Function(String error)? error,
    TResult Function(String error)? errorVerify,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Verified value) verified,
    required TResult Function(_Error value) error,
    required TResult Function(_ErrorVerify value) errorVerify,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Verified value)? verified,
    TResult? Function(_Error value)? error,
    TResult? Function(_ErrorVerify value)? errorVerify,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Verified value)? verified,
    TResult Function(_Error value)? error,
    TResult Function(_ErrorVerify value)? errorVerify,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'AuthState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AuthStateViewModel viewModel) loaded,
    required TResult Function(AuthStateViewModel viewModel) verified,
    required TResult Function(String error) error,
    required TResult Function(String error) errorVerify,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AuthStateViewModel viewModel)? loaded,
    TResult? Function(AuthStateViewModel viewModel)? verified,
    TResult? Function(String error)? error,
    TResult? Function(String error)? errorVerify,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AuthStateViewModel viewModel)? loaded,
    TResult Function(AuthStateViewModel viewModel)? verified,
    TResult Function(String error)? error,
    TResult Function(String error)? errorVerify,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Verified value) verified,
    required TResult Function(_Error value) error,
    required TResult Function(_ErrorVerify value) errorVerify,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Verified value)? verified,
    TResult? Function(_Error value)? error,
    TResult? Function(_ErrorVerify value)? errorVerify,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Verified value)? verified,
    TResult Function(_Error value)? error,
    TResult Function(_ErrorVerify value)? errorVerify,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AuthState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'AuthState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AuthStateViewModel viewModel) loaded,
    required TResult Function(AuthStateViewModel viewModel) verified,
    required TResult Function(String error) error,
    required TResult Function(String error) errorVerify,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AuthStateViewModel viewModel)? loaded,
    TResult? Function(AuthStateViewModel viewModel)? verified,
    TResult? Function(String error)? error,
    TResult? Function(String error)? errorVerify,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AuthStateViewModel viewModel)? loaded,
    TResult Function(AuthStateViewModel viewModel)? verified,
    TResult Function(String error)? error,
    TResult Function(String error)? errorVerify,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Verified value) verified,
    required TResult Function(_Error value) error,
    required TResult Function(_ErrorVerify value) errorVerify,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Verified value)? verified,
    TResult? Function(_Error value)? error,
    TResult? Function(_ErrorVerify value)? errorVerify,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Verified value)? verified,
    TResult Function(_Error value)? error,
    TResult Function(_ErrorVerify value)? errorVerify,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements AuthState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AuthStateViewModel viewModel});

  $AuthStateViewModelCopyWith<$Res> get viewModel;
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? viewModel = null,
  }) {
    return _then(_$LoadedImpl(
      viewModel: null == viewModel
          ? _value.viewModel
          : viewModel // ignore: cast_nullable_to_non_nullable
              as AuthStateViewModel,
    ));
  }

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AuthStateViewModelCopyWith<$Res> get viewModel {
    return $AuthStateViewModelCopyWith<$Res>(_value.viewModel, (value) {
      return _then(_value.copyWith(viewModel: value));
    });
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl({required this.viewModel});

  @override
  final AuthStateViewModel viewModel;

  @override
  String toString() {
    return 'AuthState.loaded(viewModel: $viewModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            (identical(other.viewModel, viewModel) ||
                other.viewModel == viewModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, viewModel);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AuthStateViewModel viewModel) loaded,
    required TResult Function(AuthStateViewModel viewModel) verified,
    required TResult Function(String error) error,
    required TResult Function(String error) errorVerify,
  }) {
    return loaded(viewModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AuthStateViewModel viewModel)? loaded,
    TResult? Function(AuthStateViewModel viewModel)? verified,
    TResult? Function(String error)? error,
    TResult? Function(String error)? errorVerify,
  }) {
    return loaded?.call(viewModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AuthStateViewModel viewModel)? loaded,
    TResult Function(AuthStateViewModel viewModel)? verified,
    TResult Function(String error)? error,
    TResult Function(String error)? errorVerify,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(viewModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Verified value) verified,
    required TResult Function(_Error value) error,
    required TResult Function(_ErrorVerify value) errorVerify,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Verified value)? verified,
    TResult? Function(_Error value)? error,
    TResult? Function(_ErrorVerify value)? errorVerify,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Verified value)? verified,
    TResult Function(_Error value)? error,
    TResult Function(_ErrorVerify value)? errorVerify,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements AuthState {
  const factory _Loaded({required final AuthStateViewModel viewModel}) =
      _$LoadedImpl;

  AuthStateViewModel get viewModel;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VerifiedImplCopyWith<$Res> {
  factory _$$VerifiedImplCopyWith(
          _$VerifiedImpl value, $Res Function(_$VerifiedImpl) then) =
      __$$VerifiedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AuthStateViewModel viewModel});

  $AuthStateViewModelCopyWith<$Res> get viewModel;
}

/// @nodoc
class __$$VerifiedImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$VerifiedImpl>
    implements _$$VerifiedImplCopyWith<$Res> {
  __$$VerifiedImplCopyWithImpl(
      _$VerifiedImpl _value, $Res Function(_$VerifiedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? viewModel = null,
  }) {
    return _then(_$VerifiedImpl(
      viewModel: null == viewModel
          ? _value.viewModel
          : viewModel // ignore: cast_nullable_to_non_nullable
              as AuthStateViewModel,
    ));
  }

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AuthStateViewModelCopyWith<$Res> get viewModel {
    return $AuthStateViewModelCopyWith<$Res>(_value.viewModel, (value) {
      return _then(_value.copyWith(viewModel: value));
    });
  }
}

/// @nodoc

class _$VerifiedImpl implements _Verified {
  const _$VerifiedImpl({required this.viewModel});

  @override
  final AuthStateViewModel viewModel;

  @override
  String toString() {
    return 'AuthState.verified(viewModel: $viewModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifiedImpl &&
            (identical(other.viewModel, viewModel) ||
                other.viewModel == viewModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, viewModel);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifiedImplCopyWith<_$VerifiedImpl> get copyWith =>
      __$$VerifiedImplCopyWithImpl<_$VerifiedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AuthStateViewModel viewModel) loaded,
    required TResult Function(AuthStateViewModel viewModel) verified,
    required TResult Function(String error) error,
    required TResult Function(String error) errorVerify,
  }) {
    return verified(viewModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AuthStateViewModel viewModel)? loaded,
    TResult? Function(AuthStateViewModel viewModel)? verified,
    TResult? Function(String error)? error,
    TResult? Function(String error)? errorVerify,
  }) {
    return verified?.call(viewModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AuthStateViewModel viewModel)? loaded,
    TResult Function(AuthStateViewModel viewModel)? verified,
    TResult Function(String error)? error,
    TResult Function(String error)? errorVerify,
    required TResult orElse(),
  }) {
    if (verified != null) {
      return verified(viewModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Verified value) verified,
    required TResult Function(_Error value) error,
    required TResult Function(_ErrorVerify value) errorVerify,
  }) {
    return verified(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Verified value)? verified,
    TResult? Function(_Error value)? error,
    TResult? Function(_ErrorVerify value)? errorVerify,
  }) {
    return verified?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Verified value)? verified,
    TResult Function(_Error value)? error,
    TResult Function(_ErrorVerify value)? errorVerify,
    required TResult orElse(),
  }) {
    if (verified != null) {
      return verified(this);
    }
    return orElse();
  }
}

abstract class _Verified implements AuthState {
  const factory _Verified({required final AuthStateViewModel viewModel}) =
      _$VerifiedImpl;

  AuthStateViewModel get viewModel;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VerifiedImplCopyWith<_$VerifiedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ErrorImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'AuthState.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AuthStateViewModel viewModel) loaded,
    required TResult Function(AuthStateViewModel viewModel) verified,
    required TResult Function(String error) error,
    required TResult Function(String error) errorVerify,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AuthStateViewModel viewModel)? loaded,
    TResult? Function(AuthStateViewModel viewModel)? verified,
    TResult? Function(String error)? error,
    TResult? Function(String error)? errorVerify,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AuthStateViewModel viewModel)? loaded,
    TResult Function(AuthStateViewModel viewModel)? verified,
    TResult Function(String error)? error,
    TResult Function(String error)? errorVerify,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Verified value) verified,
    required TResult Function(_Error value) error,
    required TResult Function(_ErrorVerify value) errorVerify,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Verified value)? verified,
    TResult? Function(_Error value)? error,
    TResult? Function(_ErrorVerify value)? errorVerify,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Verified value)? verified,
    TResult Function(_Error value)? error,
    TResult Function(_ErrorVerify value)? errorVerify,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements AuthState {
  const factory _Error(final String error) = _$ErrorImpl;

  String get error;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorVerifyImplCopyWith<$Res> {
  factory _$$ErrorVerifyImplCopyWith(
          _$ErrorVerifyImpl value, $Res Function(_$ErrorVerifyImpl) then) =
      __$$ErrorVerifyImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$ErrorVerifyImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$ErrorVerifyImpl>
    implements _$$ErrorVerifyImplCopyWith<$Res> {
  __$$ErrorVerifyImplCopyWithImpl(
      _$ErrorVerifyImpl _value, $Res Function(_$ErrorVerifyImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ErrorVerifyImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorVerifyImpl implements _ErrorVerify {
  const _$ErrorVerifyImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'AuthState.errorVerify(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorVerifyImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorVerifyImplCopyWith<_$ErrorVerifyImpl> get copyWith =>
      __$$ErrorVerifyImplCopyWithImpl<_$ErrorVerifyImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AuthStateViewModel viewModel) loaded,
    required TResult Function(AuthStateViewModel viewModel) verified,
    required TResult Function(String error) error,
    required TResult Function(String error) errorVerify,
  }) {
    return errorVerify(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AuthStateViewModel viewModel)? loaded,
    TResult? Function(AuthStateViewModel viewModel)? verified,
    TResult? Function(String error)? error,
    TResult? Function(String error)? errorVerify,
  }) {
    return errorVerify?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AuthStateViewModel viewModel)? loaded,
    TResult Function(AuthStateViewModel viewModel)? verified,
    TResult Function(String error)? error,
    TResult Function(String error)? errorVerify,
    required TResult orElse(),
  }) {
    if (errorVerify != null) {
      return errorVerify(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Verified value) verified,
    required TResult Function(_Error value) error,
    required TResult Function(_ErrorVerify value) errorVerify,
  }) {
    return errorVerify(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Verified value)? verified,
    TResult? Function(_Error value)? error,
    TResult? Function(_ErrorVerify value)? errorVerify,
  }) {
    return errorVerify?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Verified value)? verified,
    TResult Function(_Error value)? error,
    TResult Function(_ErrorVerify value)? errorVerify,
    required TResult orElse(),
  }) {
    if (errorVerify != null) {
      return errorVerify(this);
    }
    return orElse();
  }
}

abstract class _ErrorVerify implements AuthState {
  const factory _ErrorVerify(final String error) = _$ErrorVerifyImpl;

  String get error;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorVerifyImplCopyWith<_$ErrorVerifyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthStateViewModel {
  SignupResponse? get signupResponse => throw _privateConstructorUsedError;
  SignInResponse? get signInResponse => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;
  String get refreshToken => throw _privateConstructorUsedError;
  String get csrfToken => throw _privateConstructorUsedError;
  UserEntity get user => throw _privateConstructorUsedError;

  /// Create a copy of AuthStateViewModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthStateViewModelCopyWith<AuthStateViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateViewModelCopyWith<$Res> {
  factory $AuthStateViewModelCopyWith(
          AuthStateViewModel value, $Res Function(AuthStateViewModel) then) =
      _$AuthStateViewModelCopyWithImpl<$Res, AuthStateViewModel>;
  @useResult
  $Res call(
      {SignupResponse? signupResponse,
      SignInResponse? signInResponse,
      int userId,
      String token,
      String refreshToken,
      String csrfToken,
      UserEntity user});

  $SignupResponseCopyWith<$Res>? get signupResponse;
  $SignInResponseCopyWith<$Res>? get signInResponse;
  $UserEntityCopyWith<$Res> get user;
}

/// @nodoc
class _$AuthStateViewModelCopyWithImpl<$Res, $Val extends AuthStateViewModel>
    implements $AuthStateViewModelCopyWith<$Res> {
  _$AuthStateViewModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthStateViewModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? signupResponse = freezed,
    Object? signInResponse = freezed,
    Object? userId = null,
    Object? token = null,
    Object? refreshToken = null,
    Object? csrfToken = null,
    Object? user = null,
  }) {
    return _then(_value.copyWith(
      signupResponse: freezed == signupResponse
          ? _value.signupResponse
          : signupResponse // ignore: cast_nullable_to_non_nullable
              as SignupResponse?,
      signInResponse: freezed == signInResponse
          ? _value.signInResponse
          : signInResponse // ignore: cast_nullable_to_non_nullable
              as SignInResponse?,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      csrfToken: null == csrfToken
          ? _value.csrfToken
          : csrfToken // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserEntity,
    ) as $Val);
  }

  /// Create a copy of AuthStateViewModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SignupResponseCopyWith<$Res>? get signupResponse {
    if (_value.signupResponse == null) {
      return null;
    }

    return $SignupResponseCopyWith<$Res>(_value.signupResponse!, (value) {
      return _then(_value.copyWith(signupResponse: value) as $Val);
    });
  }

  /// Create a copy of AuthStateViewModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SignInResponseCopyWith<$Res>? get signInResponse {
    if (_value.signInResponse == null) {
      return null;
    }

    return $SignInResponseCopyWith<$Res>(_value.signInResponse!, (value) {
      return _then(_value.copyWith(signInResponse: value) as $Val);
    });
  }

  /// Create a copy of AuthStateViewModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserEntityCopyWith<$Res> get user {
    return $UserEntityCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AuthStateViewModelImplCopyWith<$Res>
    implements $AuthStateViewModelCopyWith<$Res> {
  factory _$$AuthStateViewModelImplCopyWith(_$AuthStateViewModelImpl value,
          $Res Function(_$AuthStateViewModelImpl) then) =
      __$$AuthStateViewModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SignupResponse? signupResponse,
      SignInResponse? signInResponse,
      int userId,
      String token,
      String refreshToken,
      String csrfToken,
      UserEntity user});

  @override
  $SignupResponseCopyWith<$Res>? get signupResponse;
  @override
  $SignInResponseCopyWith<$Res>? get signInResponse;
  @override
  $UserEntityCopyWith<$Res> get user;
}

/// @nodoc
class __$$AuthStateViewModelImplCopyWithImpl<$Res>
    extends _$AuthStateViewModelCopyWithImpl<$Res, _$AuthStateViewModelImpl>
    implements _$$AuthStateViewModelImplCopyWith<$Res> {
  __$$AuthStateViewModelImplCopyWithImpl(_$AuthStateViewModelImpl _value,
      $Res Function(_$AuthStateViewModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthStateViewModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? signupResponse = freezed,
    Object? signInResponse = freezed,
    Object? userId = null,
    Object? token = null,
    Object? refreshToken = null,
    Object? csrfToken = null,
    Object? user = null,
  }) {
    return _then(_$AuthStateViewModelImpl(
      signupResponse: freezed == signupResponse
          ? _value.signupResponse
          : signupResponse // ignore: cast_nullable_to_non_nullable
              as SignupResponse?,
      signInResponse: freezed == signInResponse
          ? _value.signInResponse
          : signInResponse // ignore: cast_nullable_to_non_nullable
              as SignInResponse?,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      csrfToken: null == csrfToken
          ? _value.csrfToken
          : csrfToken // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserEntity,
    ));
  }
}

/// @nodoc

class _$AuthStateViewModelImpl implements _AuthStateViewModel {
  const _$AuthStateViewModelImpl(
      {this.signupResponse,
      this.signInResponse,
      this.userId = 0,
      this.token = '',
      this.refreshToken = '',
      this.csrfToken = '',
      this.user = const UserEntity(
          id: '',
          email: 'email',
          firstName: 'firstName',
          lastName: 'lastName')});

  @override
  final SignupResponse? signupResponse;
  @override
  final SignInResponse? signInResponse;
  @override
  @JsonKey()
  final int userId;
  @override
  @JsonKey()
  final String token;
  @override
  @JsonKey()
  final String refreshToken;
  @override
  @JsonKey()
  final String csrfToken;
  @override
  @JsonKey()
  final UserEntity user;

  @override
  String toString() {
    return 'AuthStateViewModel(signupResponse: $signupResponse, signInResponse: $signInResponse, userId: $userId, token: $token, refreshToken: $refreshToken, csrfToken: $csrfToken, user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthStateViewModelImpl &&
            (identical(other.signupResponse, signupResponse) ||
                other.signupResponse == signupResponse) &&
            (identical(other.signInResponse, signInResponse) ||
                other.signInResponse == signInResponse) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken) &&
            (identical(other.csrfToken, csrfToken) ||
                other.csrfToken == csrfToken) &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, signupResponse, signInResponse,
      userId, token, refreshToken, csrfToken, user);

  /// Create a copy of AuthStateViewModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthStateViewModelImplCopyWith<_$AuthStateViewModelImpl> get copyWith =>
      __$$AuthStateViewModelImplCopyWithImpl<_$AuthStateViewModelImpl>(
          this, _$identity);
}

abstract class _AuthStateViewModel implements AuthStateViewModel {
  const factory _AuthStateViewModel(
      {final SignupResponse? signupResponse,
      final SignInResponse? signInResponse,
      final int userId,
      final String token,
      final String refreshToken,
      final String csrfToken,
      final UserEntity user}) = _$AuthStateViewModelImpl;

  @override
  SignupResponse? get signupResponse;
  @override
  SignInResponse? get signInResponse;
  @override
  int get userId;
  @override
  String get token;
  @override
  String get refreshToken;
  @override
  String get csrfToken;
  @override
  UserEntity get user;

  /// Create a copy of AuthStateViewModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthStateViewModelImplCopyWith<_$AuthStateViewModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
