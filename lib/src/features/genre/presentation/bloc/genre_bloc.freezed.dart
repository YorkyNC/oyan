// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'genre_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GenreEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(GetGenreRequest request) getGenre,
    required TResult Function(AddGenreRequest request) addGenre,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(GetGenreRequest request)? getGenre,
    TResult? Function(AddGenreRequest request)? addGenre,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(GetGenreRequest request)? getGenre,
    TResult Function(AddGenreRequest request)? addGenre,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetGenre value) getGenre,
    required TResult Function(_AddGenre value) addGenre,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetGenre value)? getGenre,
    TResult? Function(_AddGenre value)? addGenre,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetGenre value)? getGenre,
    TResult Function(_AddGenre value)? addGenre,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenreEventCopyWith<$Res> {
  factory $GenreEventCopyWith(
          GenreEvent value, $Res Function(GenreEvent) then) =
      _$GenreEventCopyWithImpl<$Res, GenreEvent>;
}

/// @nodoc
class _$GenreEventCopyWithImpl<$Res, $Val extends GenreEvent>
    implements $GenreEventCopyWith<$Res> {
  _$GenreEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GenreEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$GenreEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of GenreEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'GenreEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(GetGenreRequest request) getGenre,
    required TResult Function(AddGenreRequest request) addGenre,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(GetGenreRequest request)? getGenre,
    TResult? Function(AddGenreRequest request)? addGenre,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(GetGenreRequest request)? getGenre,
    TResult Function(AddGenreRequest request)? addGenre,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetGenre value) getGenre,
    required TResult Function(_AddGenre value) addGenre,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetGenre value)? getGenre,
    TResult? Function(_AddGenre value)? addGenre,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetGenre value)? getGenre,
    TResult Function(_AddGenre value)? addGenre,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements GenreEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$GetGenreImplCopyWith<$Res> {
  factory _$$GetGenreImplCopyWith(
          _$GetGenreImpl value, $Res Function(_$GetGenreImpl) then) =
      __$$GetGenreImplCopyWithImpl<$Res>;
  @useResult
  $Res call({GetGenreRequest request});

  $GetGenreRequestCopyWith<$Res> get request;
}

/// @nodoc
class __$$GetGenreImplCopyWithImpl<$Res>
    extends _$GenreEventCopyWithImpl<$Res, _$GetGenreImpl>
    implements _$$GetGenreImplCopyWith<$Res> {
  __$$GetGenreImplCopyWithImpl(
      _$GetGenreImpl _value, $Res Function(_$GetGenreImpl) _then)
      : super(_value, _then);

  /// Create a copy of GenreEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
  }) {
    return _then(_$GetGenreImpl(
      null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as GetGenreRequest,
    ));
  }

  /// Create a copy of GenreEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GetGenreRequestCopyWith<$Res> get request {
    return $GetGenreRequestCopyWith<$Res>(_value.request, (value) {
      return _then(_value.copyWith(request: value));
    });
  }
}

/// @nodoc

class _$GetGenreImpl implements _GetGenre {
  const _$GetGenreImpl(this.request);

  @override
  final GetGenreRequest request;

  @override
  String toString() {
    return 'GenreEvent.getGenre(request: $request)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetGenreImpl &&
            (identical(other.request, request) || other.request == request));
  }

  @override
  int get hashCode => Object.hash(runtimeType, request);

  /// Create a copy of GenreEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetGenreImplCopyWith<_$GetGenreImpl> get copyWith =>
      __$$GetGenreImplCopyWithImpl<_$GetGenreImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(GetGenreRequest request) getGenre,
    required TResult Function(AddGenreRequest request) addGenre,
  }) {
    return getGenre(request);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(GetGenreRequest request)? getGenre,
    TResult? Function(AddGenreRequest request)? addGenre,
  }) {
    return getGenre?.call(request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(GetGenreRequest request)? getGenre,
    TResult Function(AddGenreRequest request)? addGenre,
    required TResult orElse(),
  }) {
    if (getGenre != null) {
      return getGenre(request);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetGenre value) getGenre,
    required TResult Function(_AddGenre value) addGenre,
  }) {
    return getGenre(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetGenre value)? getGenre,
    TResult? Function(_AddGenre value)? addGenre,
  }) {
    return getGenre?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetGenre value)? getGenre,
    TResult Function(_AddGenre value)? addGenre,
    required TResult orElse(),
  }) {
    if (getGenre != null) {
      return getGenre(this);
    }
    return orElse();
  }
}

abstract class _GetGenre implements GenreEvent {
  const factory _GetGenre(final GetGenreRequest request) = _$GetGenreImpl;

  GetGenreRequest get request;

  /// Create a copy of GenreEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetGenreImplCopyWith<_$GetGenreImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddGenreImplCopyWith<$Res> {
  factory _$$AddGenreImplCopyWith(
          _$AddGenreImpl value, $Res Function(_$AddGenreImpl) then) =
      __$$AddGenreImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AddGenreRequest request});
}

/// @nodoc
class __$$AddGenreImplCopyWithImpl<$Res>
    extends _$GenreEventCopyWithImpl<$Res, _$AddGenreImpl>
    implements _$$AddGenreImplCopyWith<$Res> {
  __$$AddGenreImplCopyWithImpl(
      _$AddGenreImpl _value, $Res Function(_$AddGenreImpl) _then)
      : super(_value, _then);

  /// Create a copy of GenreEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = freezed,
  }) {
    return _then(_$AddGenreImpl(
      freezed == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as AddGenreRequest,
    ));
  }
}

/// @nodoc

class _$AddGenreImpl implements _AddGenre {
  const _$AddGenreImpl(this.request);

  @override
  final AddGenreRequest request;

  @override
  String toString() {
    return 'GenreEvent.addGenre(request: $request)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddGenreImpl &&
            const DeepCollectionEquality().equals(other.request, request));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(request));

  /// Create a copy of GenreEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddGenreImplCopyWith<_$AddGenreImpl> get copyWith =>
      __$$AddGenreImplCopyWithImpl<_$AddGenreImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(GetGenreRequest request) getGenre,
    required TResult Function(AddGenreRequest request) addGenre,
  }) {
    return addGenre(request);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(GetGenreRequest request)? getGenre,
    TResult? Function(AddGenreRequest request)? addGenre,
  }) {
    return addGenre?.call(request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(GetGenreRequest request)? getGenre,
    TResult Function(AddGenreRequest request)? addGenre,
    required TResult orElse(),
  }) {
    if (addGenre != null) {
      return addGenre(request);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetGenre value) getGenre,
    required TResult Function(_AddGenre value) addGenre,
  }) {
    return addGenre(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetGenre value)? getGenre,
    TResult? Function(_AddGenre value)? addGenre,
  }) {
    return addGenre?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetGenre value)? getGenre,
    TResult Function(_AddGenre value)? addGenre,
    required TResult orElse(),
  }) {
    if (addGenre != null) {
      return addGenre(this);
    }
    return orElse();
  }
}

abstract class _AddGenre implements GenreEvent {
  const factory _AddGenre(final AddGenreRequest request) = _$AddGenreImpl;

  AddGenreRequest get request;

  /// Create a copy of GenreEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddGenreImplCopyWith<_$AddGenreImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GenreState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(GenreViewModel viewModel) loaded,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(GenreViewModel viewModel)? loaded,
    TResult? Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(GenreViewModel viewModel)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenreStateCopyWith<$Res> {
  factory $GenreStateCopyWith(
          GenreState value, $Res Function(GenreState) then) =
      _$GenreStateCopyWithImpl<$Res, GenreState>;
}

/// @nodoc
class _$GenreStateCopyWithImpl<$Res, $Val extends GenreState>
    implements $GenreStateCopyWith<$Res> {
  _$GenreStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GenreState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$GenreStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of GenreState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'GenreState.loading()';
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
    required TResult Function() loading,
    required TResult Function(GenreViewModel viewModel) loaded,
    required TResult Function(String error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(GenreViewModel viewModel)? loaded,
    TResult? Function(String error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(GenreViewModel viewModel)? loaded,
    TResult Function(String error)? error,
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
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements GenreState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({GenreViewModel viewModel});

  $GenreViewModelCopyWith<$Res> get viewModel;
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$GenreStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of GenreState
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
              as GenreViewModel,
    ));
  }

  /// Create a copy of GenreState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GenreViewModelCopyWith<$Res> get viewModel {
    return $GenreViewModelCopyWith<$Res>(_value.viewModel, (value) {
      return _then(_value.copyWith(viewModel: value));
    });
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl({required this.viewModel});

  @override
  final GenreViewModel viewModel;

  @override
  String toString() {
    return 'GenreState.loaded(viewModel: $viewModel)';
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

  /// Create a copy of GenreState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(GenreViewModel viewModel) loaded,
    required TResult Function(String error) error,
  }) {
    return loaded(viewModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(GenreViewModel viewModel)? loaded,
    TResult? Function(String error)? error,
  }) {
    return loaded?.call(viewModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(GenreViewModel viewModel)? loaded,
    TResult Function(String error)? error,
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
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements GenreState {
  const factory _Loaded({required final GenreViewModel viewModel}) =
      _$LoadedImpl;

  GenreViewModel get viewModel;

  /// Create a copy of GenreState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
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
    extends _$GenreStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of GenreState
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
    return 'GenreState.error(error: $error)';
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

  /// Create a copy of GenreState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(GenreViewModel viewModel) loaded,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(GenreViewModel viewModel)? loaded,
    TResult? Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(GenreViewModel viewModel)? loaded,
    TResult Function(String error)? error,
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
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements GenreState {
  const factory _Error(final String error) = _$ErrorImpl;

  String get error;

  /// Create a copy of GenreState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GenreViewModel {
  GenreEntity? get genres => throw _privateConstructorUsedError;
  AddGenreEntity? get addGenre => throw _privateConstructorUsedError;

  /// Create a copy of GenreViewModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GenreViewModelCopyWith<GenreViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenreViewModelCopyWith<$Res> {
  factory $GenreViewModelCopyWith(
          GenreViewModel value, $Res Function(GenreViewModel) then) =
      _$GenreViewModelCopyWithImpl<$Res, GenreViewModel>;
  @useResult
  $Res call({GenreEntity? genres, AddGenreEntity? addGenre});

  $GenreEntityCopyWith<$Res>? get genres;
  $AddGenreEntityCopyWith<$Res>? get addGenre;
}

/// @nodoc
class _$GenreViewModelCopyWithImpl<$Res, $Val extends GenreViewModel>
    implements $GenreViewModelCopyWith<$Res> {
  _$GenreViewModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GenreViewModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? genres = freezed,
    Object? addGenre = freezed,
  }) {
    return _then(_value.copyWith(
      genres: freezed == genres
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as GenreEntity?,
      addGenre: freezed == addGenre
          ? _value.addGenre
          : addGenre // ignore: cast_nullable_to_non_nullable
              as AddGenreEntity?,
    ) as $Val);
  }

  /// Create a copy of GenreViewModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GenreEntityCopyWith<$Res>? get genres {
    if (_value.genres == null) {
      return null;
    }

    return $GenreEntityCopyWith<$Res>(_value.genres!, (value) {
      return _then(_value.copyWith(genres: value) as $Val);
    });
  }

  /// Create a copy of GenreViewModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddGenreEntityCopyWith<$Res>? get addGenre {
    if (_value.addGenre == null) {
      return null;
    }

    return $AddGenreEntityCopyWith<$Res>(_value.addGenre!, (value) {
      return _then(_value.copyWith(addGenre: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GenreViewModelImplCopyWith<$Res>
    implements $GenreViewModelCopyWith<$Res> {
  factory _$$GenreViewModelImplCopyWith(_$GenreViewModelImpl value,
          $Res Function(_$GenreViewModelImpl) then) =
      __$$GenreViewModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({GenreEntity? genres, AddGenreEntity? addGenre});

  @override
  $GenreEntityCopyWith<$Res>? get genres;
  @override
  $AddGenreEntityCopyWith<$Res>? get addGenre;
}

/// @nodoc
class __$$GenreViewModelImplCopyWithImpl<$Res>
    extends _$GenreViewModelCopyWithImpl<$Res, _$GenreViewModelImpl>
    implements _$$GenreViewModelImplCopyWith<$Res> {
  __$$GenreViewModelImplCopyWithImpl(
      _$GenreViewModelImpl _value, $Res Function(_$GenreViewModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of GenreViewModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? genres = freezed,
    Object? addGenre = freezed,
  }) {
    return _then(_$GenreViewModelImpl(
      genres: freezed == genres
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as GenreEntity?,
      addGenre: freezed == addGenre
          ? _value.addGenre
          : addGenre // ignore: cast_nullable_to_non_nullable
              as AddGenreEntity?,
    ));
  }
}

/// @nodoc

class _$GenreViewModelImpl implements _GenreViewModel {
  const _$GenreViewModelImpl({this.genres = null, this.addGenre = null});

  @override
  @JsonKey()
  final GenreEntity? genres;
  @override
  @JsonKey()
  final AddGenreEntity? addGenre;

  @override
  String toString() {
    return 'GenreViewModel(genres: $genres, addGenre: $addGenre)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GenreViewModelImpl &&
            (identical(other.genres, genres) || other.genres == genres) &&
            (identical(other.addGenre, addGenre) ||
                other.addGenre == addGenre));
  }

  @override
  int get hashCode => Object.hash(runtimeType, genres, addGenre);

  /// Create a copy of GenreViewModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GenreViewModelImplCopyWith<_$GenreViewModelImpl> get copyWith =>
      __$$GenreViewModelImplCopyWithImpl<_$GenreViewModelImpl>(
          this, _$identity);
}

abstract class _GenreViewModel implements GenreViewModel {
  const factory _GenreViewModel(
      {final GenreEntity? genres,
      final AddGenreEntity? addGenre}) = _$GenreViewModelImpl;

  @override
  GenreEntity? get genres;
  @override
  AddGenreEntity? get addGenre;

  /// Create a copy of GenreViewModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GenreViewModelImplCopyWith<_$GenreViewModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
