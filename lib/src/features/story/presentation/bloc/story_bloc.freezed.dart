// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'story_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$StoryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(GetDailyExcerptsRequest request) getDailyExcerpts,
    required TResult Function(GetDailyHitsRequest request) getDailyHits,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(GetDailyExcerptsRequest request)? getDailyExcerpts,
    TResult? Function(GetDailyHitsRequest request)? getDailyHits,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(GetDailyExcerptsRequest request)? getDailyExcerpts,
    TResult Function(GetDailyHitsRequest request)? getDailyHits,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetDailyExcerpts value) getDailyExcerpts,
    required TResult Function(_GetDailyHits value) getDailyHits,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetDailyExcerpts value)? getDailyExcerpts,
    TResult? Function(_GetDailyHits value)? getDailyHits,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetDailyExcerpts value)? getDailyExcerpts,
    TResult Function(_GetDailyHits value)? getDailyHits,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoryEventCopyWith<$Res> {
  factory $StoryEventCopyWith(
          StoryEvent value, $Res Function(StoryEvent) then) =
      _$StoryEventCopyWithImpl<$Res, StoryEvent>;
}

/// @nodoc
class _$StoryEventCopyWithImpl<$Res, $Val extends StoryEvent>
    implements $StoryEventCopyWith<$Res> {
  _$StoryEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StoryEvent
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
    extends _$StoryEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of StoryEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'StoryEvent.started()';
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
    required TResult Function(GetDailyExcerptsRequest request) getDailyExcerpts,
    required TResult Function(GetDailyHitsRequest request) getDailyHits,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(GetDailyExcerptsRequest request)? getDailyExcerpts,
    TResult? Function(GetDailyHitsRequest request)? getDailyHits,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(GetDailyExcerptsRequest request)? getDailyExcerpts,
    TResult Function(GetDailyHitsRequest request)? getDailyHits,
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
    required TResult Function(_GetDailyExcerpts value) getDailyExcerpts,
    required TResult Function(_GetDailyHits value) getDailyHits,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetDailyExcerpts value)? getDailyExcerpts,
    TResult? Function(_GetDailyHits value)? getDailyHits,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetDailyExcerpts value)? getDailyExcerpts,
    TResult Function(_GetDailyHits value)? getDailyHits,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements StoryEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$GetDailyExcerptsImplCopyWith<$Res> {
  factory _$$GetDailyExcerptsImplCopyWith(_$GetDailyExcerptsImpl value,
          $Res Function(_$GetDailyExcerptsImpl) then) =
      __$$GetDailyExcerptsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({GetDailyExcerptsRequest request});

  $GetDailyExcerptsRequestCopyWith<$Res> get request;
}

/// @nodoc
class __$$GetDailyExcerptsImplCopyWithImpl<$Res>
    extends _$StoryEventCopyWithImpl<$Res, _$GetDailyExcerptsImpl>
    implements _$$GetDailyExcerptsImplCopyWith<$Res> {
  __$$GetDailyExcerptsImplCopyWithImpl(_$GetDailyExcerptsImpl _value,
      $Res Function(_$GetDailyExcerptsImpl) _then)
      : super(_value, _then);

  /// Create a copy of StoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
  }) {
    return _then(_$GetDailyExcerptsImpl(
      null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as GetDailyExcerptsRequest,
    ));
  }

  /// Create a copy of StoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GetDailyExcerptsRequestCopyWith<$Res> get request {
    return $GetDailyExcerptsRequestCopyWith<$Res>(_value.request, (value) {
      return _then(_value.copyWith(request: value));
    });
  }
}

/// @nodoc

class _$GetDailyExcerptsImpl implements _GetDailyExcerpts {
  const _$GetDailyExcerptsImpl(this.request);

  @override
  final GetDailyExcerptsRequest request;

  @override
  String toString() {
    return 'StoryEvent.getDailyExcerpts(request: $request)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetDailyExcerptsImpl &&
            (identical(other.request, request) || other.request == request));
  }

  @override
  int get hashCode => Object.hash(runtimeType, request);

  /// Create a copy of StoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetDailyExcerptsImplCopyWith<_$GetDailyExcerptsImpl> get copyWith =>
      __$$GetDailyExcerptsImplCopyWithImpl<_$GetDailyExcerptsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(GetDailyExcerptsRequest request) getDailyExcerpts,
    required TResult Function(GetDailyHitsRequest request) getDailyHits,
  }) {
    return getDailyExcerpts(request);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(GetDailyExcerptsRequest request)? getDailyExcerpts,
    TResult? Function(GetDailyHitsRequest request)? getDailyHits,
  }) {
    return getDailyExcerpts?.call(request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(GetDailyExcerptsRequest request)? getDailyExcerpts,
    TResult Function(GetDailyHitsRequest request)? getDailyHits,
    required TResult orElse(),
  }) {
    if (getDailyExcerpts != null) {
      return getDailyExcerpts(request);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetDailyExcerpts value) getDailyExcerpts,
    required TResult Function(_GetDailyHits value) getDailyHits,
  }) {
    return getDailyExcerpts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetDailyExcerpts value)? getDailyExcerpts,
    TResult? Function(_GetDailyHits value)? getDailyHits,
  }) {
    return getDailyExcerpts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetDailyExcerpts value)? getDailyExcerpts,
    TResult Function(_GetDailyHits value)? getDailyHits,
    required TResult orElse(),
  }) {
    if (getDailyExcerpts != null) {
      return getDailyExcerpts(this);
    }
    return orElse();
  }
}

abstract class _GetDailyExcerpts implements StoryEvent {
  const factory _GetDailyExcerpts(final GetDailyExcerptsRequest request) =
      _$GetDailyExcerptsImpl;

  GetDailyExcerptsRequest get request;

  /// Create a copy of StoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetDailyExcerptsImplCopyWith<_$GetDailyExcerptsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetDailyHitsImplCopyWith<$Res> {
  factory _$$GetDailyHitsImplCopyWith(
          _$GetDailyHitsImpl value, $Res Function(_$GetDailyHitsImpl) then) =
      __$$GetDailyHitsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({GetDailyHitsRequest request});

  $GetDailyHitsRequestCopyWith<$Res> get request;
}

/// @nodoc
class __$$GetDailyHitsImplCopyWithImpl<$Res>
    extends _$StoryEventCopyWithImpl<$Res, _$GetDailyHitsImpl>
    implements _$$GetDailyHitsImplCopyWith<$Res> {
  __$$GetDailyHitsImplCopyWithImpl(
      _$GetDailyHitsImpl _value, $Res Function(_$GetDailyHitsImpl) _then)
      : super(_value, _then);

  /// Create a copy of StoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
  }) {
    return _then(_$GetDailyHitsImpl(
      null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as GetDailyHitsRequest,
    ));
  }

  /// Create a copy of StoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GetDailyHitsRequestCopyWith<$Res> get request {
    return $GetDailyHitsRequestCopyWith<$Res>(_value.request, (value) {
      return _then(_value.copyWith(request: value));
    });
  }
}

/// @nodoc

class _$GetDailyHitsImpl implements _GetDailyHits {
  const _$GetDailyHitsImpl(this.request);

  @override
  final GetDailyHitsRequest request;

  @override
  String toString() {
    return 'StoryEvent.getDailyHits(request: $request)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetDailyHitsImpl &&
            (identical(other.request, request) || other.request == request));
  }

  @override
  int get hashCode => Object.hash(runtimeType, request);

  /// Create a copy of StoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetDailyHitsImplCopyWith<_$GetDailyHitsImpl> get copyWith =>
      __$$GetDailyHitsImplCopyWithImpl<_$GetDailyHitsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(GetDailyExcerptsRequest request) getDailyExcerpts,
    required TResult Function(GetDailyHitsRequest request) getDailyHits,
  }) {
    return getDailyHits(request);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(GetDailyExcerptsRequest request)? getDailyExcerpts,
    TResult? Function(GetDailyHitsRequest request)? getDailyHits,
  }) {
    return getDailyHits?.call(request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(GetDailyExcerptsRequest request)? getDailyExcerpts,
    TResult Function(GetDailyHitsRequest request)? getDailyHits,
    required TResult orElse(),
  }) {
    if (getDailyHits != null) {
      return getDailyHits(request);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetDailyExcerpts value) getDailyExcerpts,
    required TResult Function(_GetDailyHits value) getDailyHits,
  }) {
    return getDailyHits(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetDailyExcerpts value)? getDailyExcerpts,
    TResult? Function(_GetDailyHits value)? getDailyHits,
  }) {
    return getDailyHits?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetDailyExcerpts value)? getDailyExcerpts,
    TResult Function(_GetDailyHits value)? getDailyHits,
    required TResult orElse(),
  }) {
    if (getDailyHits != null) {
      return getDailyHits(this);
    }
    return orElse();
  }
}

abstract class _GetDailyHits implements StoryEvent {
  const factory _GetDailyHits(final GetDailyHitsRequest request) =
      _$GetDailyHitsImpl;

  GetDailyHitsRequest get request;

  /// Create a copy of StoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetDailyHitsImplCopyWith<_$GetDailyHitsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$StoryState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(StoryViewModel viewModel) loaded,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(StoryViewModel viewModel)? loaded,
    TResult? Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(StoryViewModel viewModel)? loaded,
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
abstract class $StoryStateCopyWith<$Res> {
  factory $StoryStateCopyWith(
          StoryState value, $Res Function(StoryState) then) =
      _$StoryStateCopyWithImpl<$Res, StoryState>;
}

/// @nodoc
class _$StoryStateCopyWithImpl<$Res, $Val extends StoryState>
    implements $StoryStateCopyWith<$Res> {
  _$StoryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StoryState
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
    extends _$StoryStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of StoryState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'StoryState.loading()';
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
    required TResult Function(StoryViewModel viewModel) loaded,
    required TResult Function(String error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(StoryViewModel viewModel)? loaded,
    TResult? Function(String error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(StoryViewModel viewModel)? loaded,
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

abstract class _Loading implements StoryState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({StoryViewModel viewModel});

  $StoryViewModelCopyWith<$Res> get viewModel;
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$StoryStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of StoryState
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
              as StoryViewModel,
    ));
  }

  /// Create a copy of StoryState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StoryViewModelCopyWith<$Res> get viewModel {
    return $StoryViewModelCopyWith<$Res>(_value.viewModel, (value) {
      return _then(_value.copyWith(viewModel: value));
    });
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl({required this.viewModel});

  @override
  final StoryViewModel viewModel;

  @override
  String toString() {
    return 'StoryState.loaded(viewModel: $viewModel)';
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

  /// Create a copy of StoryState
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
    required TResult Function(StoryViewModel viewModel) loaded,
    required TResult Function(String error) error,
  }) {
    return loaded(viewModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(StoryViewModel viewModel)? loaded,
    TResult? Function(String error)? error,
  }) {
    return loaded?.call(viewModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(StoryViewModel viewModel)? loaded,
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

abstract class _Loaded implements StoryState {
  const factory _Loaded({required final StoryViewModel viewModel}) =
      _$LoadedImpl;

  StoryViewModel get viewModel;

  /// Create a copy of StoryState
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
    extends _$StoryStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of StoryState
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
    return 'StoryState.error(error: $error)';
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

  /// Create a copy of StoryState
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
    required TResult Function(StoryViewModel viewModel) loaded,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(StoryViewModel viewModel)? loaded,
    TResult? Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(StoryViewModel viewModel)? loaded,
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

abstract class _Error implements StoryState {
  const factory _Error(final String error) = _$ErrorImpl;

  String get error;

  /// Create a copy of StoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$StoryViewModel {
  GetDailyExcerpts? get dailyExcerpts => throw _privateConstructorUsedError;
  GetBooksEntity? get dailyHits => throw _privateConstructorUsedError;

  /// Create a copy of StoryViewModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StoryViewModelCopyWith<StoryViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoryViewModelCopyWith<$Res> {
  factory $StoryViewModelCopyWith(
          StoryViewModel value, $Res Function(StoryViewModel) then) =
      _$StoryViewModelCopyWithImpl<$Res, StoryViewModel>;
  @useResult
  $Res call({GetDailyExcerpts? dailyExcerpts, GetBooksEntity? dailyHits});

  $GetDailyExcerptsCopyWith<$Res>? get dailyExcerpts;
  $GetBooksEntityCopyWith<$Res>? get dailyHits;
}

/// @nodoc
class _$StoryViewModelCopyWithImpl<$Res, $Val extends StoryViewModel>
    implements $StoryViewModelCopyWith<$Res> {
  _$StoryViewModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StoryViewModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dailyExcerpts = freezed,
    Object? dailyHits = freezed,
  }) {
    return _then(_value.copyWith(
      dailyExcerpts: freezed == dailyExcerpts
          ? _value.dailyExcerpts
          : dailyExcerpts // ignore: cast_nullable_to_non_nullable
              as GetDailyExcerpts?,
      dailyHits: freezed == dailyHits
          ? _value.dailyHits
          : dailyHits // ignore: cast_nullable_to_non_nullable
              as GetBooksEntity?,
    ) as $Val);
  }

  /// Create a copy of StoryViewModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GetDailyExcerptsCopyWith<$Res>? get dailyExcerpts {
    if (_value.dailyExcerpts == null) {
      return null;
    }

    return $GetDailyExcerptsCopyWith<$Res>(_value.dailyExcerpts!, (value) {
      return _then(_value.copyWith(dailyExcerpts: value) as $Val);
    });
  }

  /// Create a copy of StoryViewModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GetBooksEntityCopyWith<$Res>? get dailyHits {
    if (_value.dailyHits == null) {
      return null;
    }

    return $GetBooksEntityCopyWith<$Res>(_value.dailyHits!, (value) {
      return _then(_value.copyWith(dailyHits: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StoryViewModelImplCopyWith<$Res>
    implements $StoryViewModelCopyWith<$Res> {
  factory _$$StoryViewModelImplCopyWith(_$StoryViewModelImpl value,
          $Res Function(_$StoryViewModelImpl) then) =
      __$$StoryViewModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({GetDailyExcerpts? dailyExcerpts, GetBooksEntity? dailyHits});

  @override
  $GetDailyExcerptsCopyWith<$Res>? get dailyExcerpts;
  @override
  $GetBooksEntityCopyWith<$Res>? get dailyHits;
}

/// @nodoc
class __$$StoryViewModelImplCopyWithImpl<$Res>
    extends _$StoryViewModelCopyWithImpl<$Res, _$StoryViewModelImpl>
    implements _$$StoryViewModelImplCopyWith<$Res> {
  __$$StoryViewModelImplCopyWithImpl(
      _$StoryViewModelImpl _value, $Res Function(_$StoryViewModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of StoryViewModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dailyExcerpts = freezed,
    Object? dailyHits = freezed,
  }) {
    return _then(_$StoryViewModelImpl(
      dailyExcerpts: freezed == dailyExcerpts
          ? _value.dailyExcerpts
          : dailyExcerpts // ignore: cast_nullable_to_non_nullable
              as GetDailyExcerpts?,
      dailyHits: freezed == dailyHits
          ? _value.dailyHits
          : dailyHits // ignore: cast_nullable_to_non_nullable
              as GetBooksEntity?,
    ));
  }
}

/// @nodoc

class _$StoryViewModelImpl implements _StoryViewModel {
  const _$StoryViewModelImpl(
      {this.dailyExcerpts = null, this.dailyHits = null});

  @override
  @JsonKey()
  final GetDailyExcerpts? dailyExcerpts;
  @override
  @JsonKey()
  final GetBooksEntity? dailyHits;

  @override
  String toString() {
    return 'StoryViewModel(dailyExcerpts: $dailyExcerpts, dailyHits: $dailyHits)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoryViewModelImpl &&
            (identical(other.dailyExcerpts, dailyExcerpts) ||
                other.dailyExcerpts == dailyExcerpts) &&
            (identical(other.dailyHits, dailyHits) ||
                other.dailyHits == dailyHits));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dailyExcerpts, dailyHits);

  /// Create a copy of StoryViewModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StoryViewModelImplCopyWith<_$StoryViewModelImpl> get copyWith =>
      __$$StoryViewModelImplCopyWithImpl<_$StoryViewModelImpl>(
          this, _$identity);
}

abstract class _StoryViewModel implements StoryViewModel {
  const factory _StoryViewModel(
      {final GetDailyExcerpts? dailyExcerpts,
      final GetBooksEntity? dailyHits}) = _$StoryViewModelImpl;

  @override
  GetDailyExcerpts? get dailyExcerpts;
  @override
  GetBooksEntity? get dailyHits;

  /// Create a copy of StoryViewModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StoryViewModelImplCopyWith<_$StoryViewModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
