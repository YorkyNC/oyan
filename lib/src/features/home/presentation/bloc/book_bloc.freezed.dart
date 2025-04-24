// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'book_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BookEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(GetBookRequest request) getBooks,
    required TResult Function(MyBookRequest request) getMyBooks,
    required TResult Function(AddMyBooksRequest request) addMyBook,
    required TResult Function(GetBookByIdRequest request) getBookById,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(GetBookRequest request)? getBooks,
    TResult? Function(MyBookRequest request)? getMyBooks,
    TResult? Function(AddMyBooksRequest request)? addMyBook,
    TResult? Function(GetBookByIdRequest request)? getBookById,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(GetBookRequest request)? getBooks,
    TResult Function(MyBookRequest request)? getMyBooks,
    TResult Function(AddMyBooksRequest request)? addMyBook,
    TResult Function(GetBookByIdRequest request)? getBookById,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetBooks value) getBooks,
    required TResult Function(_GetMyBooks value) getMyBooks,
    required TResult Function(_AddMyBook value) addMyBook,
    required TResult Function(_GetBookById value) getBookById,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetBooks value)? getBooks,
    TResult? Function(_GetMyBooks value)? getMyBooks,
    TResult? Function(_AddMyBook value)? addMyBook,
    TResult? Function(_GetBookById value)? getBookById,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetBooks value)? getBooks,
    TResult Function(_GetMyBooks value)? getMyBooks,
    TResult Function(_AddMyBook value)? addMyBook,
    TResult Function(_GetBookById value)? getBookById,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookEventCopyWith<$Res> {
  factory $BookEventCopyWith(BookEvent value, $Res Function(BookEvent) then) =
      _$BookEventCopyWithImpl<$Res, BookEvent>;
}

/// @nodoc
class _$BookEventCopyWithImpl<$Res, $Val extends BookEvent>
    implements $BookEventCopyWith<$Res> {
  _$BookEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BookEvent
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
    extends _$BookEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of BookEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'BookEvent.started()';
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
    required TResult Function(GetBookRequest request) getBooks,
    required TResult Function(MyBookRequest request) getMyBooks,
    required TResult Function(AddMyBooksRequest request) addMyBook,
    required TResult Function(GetBookByIdRequest request) getBookById,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(GetBookRequest request)? getBooks,
    TResult? Function(MyBookRequest request)? getMyBooks,
    TResult? Function(AddMyBooksRequest request)? addMyBook,
    TResult? Function(GetBookByIdRequest request)? getBookById,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(GetBookRequest request)? getBooks,
    TResult Function(MyBookRequest request)? getMyBooks,
    TResult Function(AddMyBooksRequest request)? addMyBook,
    TResult Function(GetBookByIdRequest request)? getBookById,
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
    required TResult Function(_GetBooks value) getBooks,
    required TResult Function(_GetMyBooks value) getMyBooks,
    required TResult Function(_AddMyBook value) addMyBook,
    required TResult Function(_GetBookById value) getBookById,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetBooks value)? getBooks,
    TResult? Function(_GetMyBooks value)? getMyBooks,
    TResult? Function(_AddMyBook value)? addMyBook,
    TResult? Function(_GetBookById value)? getBookById,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetBooks value)? getBooks,
    TResult Function(_GetMyBooks value)? getMyBooks,
    TResult Function(_AddMyBook value)? addMyBook,
    TResult Function(_GetBookById value)? getBookById,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements BookEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$GetBooksImplCopyWith<$Res> {
  factory _$$GetBooksImplCopyWith(
          _$GetBooksImpl value, $Res Function(_$GetBooksImpl) then) =
      __$$GetBooksImplCopyWithImpl<$Res>;
  @useResult
  $Res call({GetBookRequest request});

  $GetBookRequestCopyWith<$Res> get request;
}

/// @nodoc
class __$$GetBooksImplCopyWithImpl<$Res>
    extends _$BookEventCopyWithImpl<$Res, _$GetBooksImpl>
    implements _$$GetBooksImplCopyWith<$Res> {
  __$$GetBooksImplCopyWithImpl(
      _$GetBooksImpl _value, $Res Function(_$GetBooksImpl) _then)
      : super(_value, _then);

  /// Create a copy of BookEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
  }) {
    return _then(_$GetBooksImpl(
      null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as GetBookRequest,
    ));
  }

  /// Create a copy of BookEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GetBookRequestCopyWith<$Res> get request {
    return $GetBookRequestCopyWith<$Res>(_value.request, (value) {
      return _then(_value.copyWith(request: value));
    });
  }
}

/// @nodoc

class _$GetBooksImpl implements _GetBooks {
  const _$GetBooksImpl(this.request);

  @override
  final GetBookRequest request;

  @override
  String toString() {
    return 'BookEvent.getBooks(request: $request)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetBooksImpl &&
            (identical(other.request, request) || other.request == request));
  }

  @override
  int get hashCode => Object.hash(runtimeType, request);

  /// Create a copy of BookEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetBooksImplCopyWith<_$GetBooksImpl> get copyWith =>
      __$$GetBooksImplCopyWithImpl<_$GetBooksImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(GetBookRequest request) getBooks,
    required TResult Function(MyBookRequest request) getMyBooks,
    required TResult Function(AddMyBooksRequest request) addMyBook,
    required TResult Function(GetBookByIdRequest request) getBookById,
  }) {
    return getBooks(request);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(GetBookRequest request)? getBooks,
    TResult? Function(MyBookRequest request)? getMyBooks,
    TResult? Function(AddMyBooksRequest request)? addMyBook,
    TResult? Function(GetBookByIdRequest request)? getBookById,
  }) {
    return getBooks?.call(request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(GetBookRequest request)? getBooks,
    TResult Function(MyBookRequest request)? getMyBooks,
    TResult Function(AddMyBooksRequest request)? addMyBook,
    TResult Function(GetBookByIdRequest request)? getBookById,
    required TResult orElse(),
  }) {
    if (getBooks != null) {
      return getBooks(request);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetBooks value) getBooks,
    required TResult Function(_GetMyBooks value) getMyBooks,
    required TResult Function(_AddMyBook value) addMyBook,
    required TResult Function(_GetBookById value) getBookById,
  }) {
    return getBooks(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetBooks value)? getBooks,
    TResult? Function(_GetMyBooks value)? getMyBooks,
    TResult? Function(_AddMyBook value)? addMyBook,
    TResult? Function(_GetBookById value)? getBookById,
  }) {
    return getBooks?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetBooks value)? getBooks,
    TResult Function(_GetMyBooks value)? getMyBooks,
    TResult Function(_AddMyBook value)? addMyBook,
    TResult Function(_GetBookById value)? getBookById,
    required TResult orElse(),
  }) {
    if (getBooks != null) {
      return getBooks(this);
    }
    return orElse();
  }
}

abstract class _GetBooks implements BookEvent {
  const factory _GetBooks(final GetBookRequest request) = _$GetBooksImpl;

  GetBookRequest get request;

  /// Create a copy of BookEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetBooksImplCopyWith<_$GetBooksImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetMyBooksImplCopyWith<$Res> {
  factory _$$GetMyBooksImplCopyWith(
          _$GetMyBooksImpl value, $Res Function(_$GetMyBooksImpl) then) =
      __$$GetMyBooksImplCopyWithImpl<$Res>;
  @useResult
  $Res call({MyBookRequest request});

  $MyBookRequestCopyWith<$Res> get request;
}

/// @nodoc
class __$$GetMyBooksImplCopyWithImpl<$Res>
    extends _$BookEventCopyWithImpl<$Res, _$GetMyBooksImpl>
    implements _$$GetMyBooksImplCopyWith<$Res> {
  __$$GetMyBooksImplCopyWithImpl(
      _$GetMyBooksImpl _value, $Res Function(_$GetMyBooksImpl) _then)
      : super(_value, _then);

  /// Create a copy of BookEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
  }) {
    return _then(_$GetMyBooksImpl(
      null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as MyBookRequest,
    ));
  }

  /// Create a copy of BookEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MyBookRequestCopyWith<$Res> get request {
    return $MyBookRequestCopyWith<$Res>(_value.request, (value) {
      return _then(_value.copyWith(request: value));
    });
  }
}

/// @nodoc

class _$GetMyBooksImpl implements _GetMyBooks {
  const _$GetMyBooksImpl(this.request);

  @override
  final MyBookRequest request;

  @override
  String toString() {
    return 'BookEvent.getMyBooks(request: $request)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetMyBooksImpl &&
            (identical(other.request, request) || other.request == request));
  }

  @override
  int get hashCode => Object.hash(runtimeType, request);

  /// Create a copy of BookEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetMyBooksImplCopyWith<_$GetMyBooksImpl> get copyWith =>
      __$$GetMyBooksImplCopyWithImpl<_$GetMyBooksImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(GetBookRequest request) getBooks,
    required TResult Function(MyBookRequest request) getMyBooks,
    required TResult Function(AddMyBooksRequest request) addMyBook,
    required TResult Function(GetBookByIdRequest request) getBookById,
  }) {
    return getMyBooks(request);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(GetBookRequest request)? getBooks,
    TResult? Function(MyBookRequest request)? getMyBooks,
    TResult? Function(AddMyBooksRequest request)? addMyBook,
    TResult? Function(GetBookByIdRequest request)? getBookById,
  }) {
    return getMyBooks?.call(request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(GetBookRequest request)? getBooks,
    TResult Function(MyBookRequest request)? getMyBooks,
    TResult Function(AddMyBooksRequest request)? addMyBook,
    TResult Function(GetBookByIdRequest request)? getBookById,
    required TResult orElse(),
  }) {
    if (getMyBooks != null) {
      return getMyBooks(request);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetBooks value) getBooks,
    required TResult Function(_GetMyBooks value) getMyBooks,
    required TResult Function(_AddMyBook value) addMyBook,
    required TResult Function(_GetBookById value) getBookById,
  }) {
    return getMyBooks(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetBooks value)? getBooks,
    TResult? Function(_GetMyBooks value)? getMyBooks,
    TResult? Function(_AddMyBook value)? addMyBook,
    TResult? Function(_GetBookById value)? getBookById,
  }) {
    return getMyBooks?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetBooks value)? getBooks,
    TResult Function(_GetMyBooks value)? getMyBooks,
    TResult Function(_AddMyBook value)? addMyBook,
    TResult Function(_GetBookById value)? getBookById,
    required TResult orElse(),
  }) {
    if (getMyBooks != null) {
      return getMyBooks(this);
    }
    return orElse();
  }
}

abstract class _GetMyBooks implements BookEvent {
  const factory _GetMyBooks(final MyBookRequest request) = _$GetMyBooksImpl;

  MyBookRequest get request;

  /// Create a copy of BookEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetMyBooksImplCopyWith<_$GetMyBooksImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddMyBookImplCopyWith<$Res> {
  factory _$$AddMyBookImplCopyWith(
          _$AddMyBookImpl value, $Res Function(_$AddMyBookImpl) then) =
      __$$AddMyBookImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AddMyBooksRequest request});

  $AddMyBooksRequestCopyWith<$Res> get request;
}

/// @nodoc
class __$$AddMyBookImplCopyWithImpl<$Res>
    extends _$BookEventCopyWithImpl<$Res, _$AddMyBookImpl>
    implements _$$AddMyBookImplCopyWith<$Res> {
  __$$AddMyBookImplCopyWithImpl(
      _$AddMyBookImpl _value, $Res Function(_$AddMyBookImpl) _then)
      : super(_value, _then);

  /// Create a copy of BookEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
  }) {
    return _then(_$AddMyBookImpl(
      null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as AddMyBooksRequest,
    ));
  }

  /// Create a copy of BookEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddMyBooksRequestCopyWith<$Res> get request {
    return $AddMyBooksRequestCopyWith<$Res>(_value.request, (value) {
      return _then(_value.copyWith(request: value));
    });
  }
}

/// @nodoc

class _$AddMyBookImpl implements _AddMyBook {
  const _$AddMyBookImpl(this.request);

  @override
  final AddMyBooksRequest request;

  @override
  String toString() {
    return 'BookEvent.addMyBook(request: $request)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddMyBookImpl &&
            (identical(other.request, request) || other.request == request));
  }

  @override
  int get hashCode => Object.hash(runtimeType, request);

  /// Create a copy of BookEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddMyBookImplCopyWith<_$AddMyBookImpl> get copyWith =>
      __$$AddMyBookImplCopyWithImpl<_$AddMyBookImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(GetBookRequest request) getBooks,
    required TResult Function(MyBookRequest request) getMyBooks,
    required TResult Function(AddMyBooksRequest request) addMyBook,
    required TResult Function(GetBookByIdRequest request) getBookById,
  }) {
    return addMyBook(request);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(GetBookRequest request)? getBooks,
    TResult? Function(MyBookRequest request)? getMyBooks,
    TResult? Function(AddMyBooksRequest request)? addMyBook,
    TResult? Function(GetBookByIdRequest request)? getBookById,
  }) {
    return addMyBook?.call(request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(GetBookRequest request)? getBooks,
    TResult Function(MyBookRequest request)? getMyBooks,
    TResult Function(AddMyBooksRequest request)? addMyBook,
    TResult Function(GetBookByIdRequest request)? getBookById,
    required TResult orElse(),
  }) {
    if (addMyBook != null) {
      return addMyBook(request);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetBooks value) getBooks,
    required TResult Function(_GetMyBooks value) getMyBooks,
    required TResult Function(_AddMyBook value) addMyBook,
    required TResult Function(_GetBookById value) getBookById,
  }) {
    return addMyBook(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetBooks value)? getBooks,
    TResult? Function(_GetMyBooks value)? getMyBooks,
    TResult? Function(_AddMyBook value)? addMyBook,
    TResult? Function(_GetBookById value)? getBookById,
  }) {
    return addMyBook?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetBooks value)? getBooks,
    TResult Function(_GetMyBooks value)? getMyBooks,
    TResult Function(_AddMyBook value)? addMyBook,
    TResult Function(_GetBookById value)? getBookById,
    required TResult orElse(),
  }) {
    if (addMyBook != null) {
      return addMyBook(this);
    }
    return orElse();
  }
}

abstract class _AddMyBook implements BookEvent {
  const factory _AddMyBook(final AddMyBooksRequest request) = _$AddMyBookImpl;

  AddMyBooksRequest get request;

  /// Create a copy of BookEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddMyBookImplCopyWith<_$AddMyBookImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetBookByIdImplCopyWith<$Res> {
  factory _$$GetBookByIdImplCopyWith(
          _$GetBookByIdImpl value, $Res Function(_$GetBookByIdImpl) then) =
      __$$GetBookByIdImplCopyWithImpl<$Res>;
  @useResult
  $Res call({GetBookByIdRequest request});

  $GetBookByIdRequestCopyWith<$Res> get request;
}

/// @nodoc
class __$$GetBookByIdImplCopyWithImpl<$Res>
    extends _$BookEventCopyWithImpl<$Res, _$GetBookByIdImpl>
    implements _$$GetBookByIdImplCopyWith<$Res> {
  __$$GetBookByIdImplCopyWithImpl(
      _$GetBookByIdImpl _value, $Res Function(_$GetBookByIdImpl) _then)
      : super(_value, _then);

  /// Create a copy of BookEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
  }) {
    return _then(_$GetBookByIdImpl(
      null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as GetBookByIdRequest,
    ));
  }

  /// Create a copy of BookEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GetBookByIdRequestCopyWith<$Res> get request {
    return $GetBookByIdRequestCopyWith<$Res>(_value.request, (value) {
      return _then(_value.copyWith(request: value));
    });
  }
}

/// @nodoc

class _$GetBookByIdImpl implements _GetBookById {
  const _$GetBookByIdImpl(this.request);

  @override
  final GetBookByIdRequest request;

  @override
  String toString() {
    return 'BookEvent.getBookById(request: $request)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetBookByIdImpl &&
            (identical(other.request, request) || other.request == request));
  }

  @override
  int get hashCode => Object.hash(runtimeType, request);

  /// Create a copy of BookEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetBookByIdImplCopyWith<_$GetBookByIdImpl> get copyWith =>
      __$$GetBookByIdImplCopyWithImpl<_$GetBookByIdImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(GetBookRequest request) getBooks,
    required TResult Function(MyBookRequest request) getMyBooks,
    required TResult Function(AddMyBooksRequest request) addMyBook,
    required TResult Function(GetBookByIdRequest request) getBookById,
  }) {
    return getBookById(request);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(GetBookRequest request)? getBooks,
    TResult? Function(MyBookRequest request)? getMyBooks,
    TResult? Function(AddMyBooksRequest request)? addMyBook,
    TResult? Function(GetBookByIdRequest request)? getBookById,
  }) {
    return getBookById?.call(request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(GetBookRequest request)? getBooks,
    TResult Function(MyBookRequest request)? getMyBooks,
    TResult Function(AddMyBooksRequest request)? addMyBook,
    TResult Function(GetBookByIdRequest request)? getBookById,
    required TResult orElse(),
  }) {
    if (getBookById != null) {
      return getBookById(request);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetBooks value) getBooks,
    required TResult Function(_GetMyBooks value) getMyBooks,
    required TResult Function(_AddMyBook value) addMyBook,
    required TResult Function(_GetBookById value) getBookById,
  }) {
    return getBookById(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetBooks value)? getBooks,
    TResult? Function(_GetMyBooks value)? getMyBooks,
    TResult? Function(_AddMyBook value)? addMyBook,
    TResult? Function(_GetBookById value)? getBookById,
  }) {
    return getBookById?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetBooks value)? getBooks,
    TResult Function(_GetMyBooks value)? getMyBooks,
    TResult Function(_AddMyBook value)? addMyBook,
    TResult Function(_GetBookById value)? getBookById,
    required TResult orElse(),
  }) {
    if (getBookById != null) {
      return getBookById(this);
    }
    return orElse();
  }
}

abstract class _GetBookById implements BookEvent {
  const factory _GetBookById(final GetBookByIdRequest request) =
      _$GetBookByIdImpl;

  GetBookByIdRequest get request;

  /// Create a copy of BookEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetBookByIdImplCopyWith<_$GetBookByIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BookState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(BookViewModel viewModel) loaded,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(BookViewModel viewModel)? loaded,
    TResult? Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(BookViewModel viewModel)? loaded,
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
abstract class $BookStateCopyWith<$Res> {
  factory $BookStateCopyWith(BookState value, $Res Function(BookState) then) =
      _$BookStateCopyWithImpl<$Res, BookState>;
}

/// @nodoc
class _$BookStateCopyWithImpl<$Res, $Val extends BookState>
    implements $BookStateCopyWith<$Res> {
  _$BookStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BookState
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
    extends _$BookStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of BookState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'BookState.loading()';
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
    required TResult Function(BookViewModel viewModel) loaded,
    required TResult Function(String error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(BookViewModel viewModel)? loaded,
    TResult? Function(String error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(BookViewModel viewModel)? loaded,
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

abstract class _Loading implements BookState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BookViewModel viewModel});

  $BookViewModelCopyWith<$Res> get viewModel;
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$BookStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of BookState
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
              as BookViewModel,
    ));
  }

  /// Create a copy of BookState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BookViewModelCopyWith<$Res> get viewModel {
    return $BookViewModelCopyWith<$Res>(_value.viewModel, (value) {
      return _then(_value.copyWith(viewModel: value));
    });
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl({required this.viewModel});

  @override
  final BookViewModel viewModel;

  @override
  String toString() {
    return 'BookState.loaded(viewModel: $viewModel)';
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

  /// Create a copy of BookState
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
    required TResult Function(BookViewModel viewModel) loaded,
    required TResult Function(String error) error,
  }) {
    return loaded(viewModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(BookViewModel viewModel)? loaded,
    TResult? Function(String error)? error,
  }) {
    return loaded?.call(viewModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(BookViewModel viewModel)? loaded,
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

abstract class _Loaded implements BookState {
  const factory _Loaded({required final BookViewModel viewModel}) =
      _$LoadedImpl;

  BookViewModel get viewModel;

  /// Create a copy of BookState
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
    extends _$BookStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of BookState
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
    return 'BookState.error(error: $error)';
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

  /// Create a copy of BookState
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
    required TResult Function(BookViewModel viewModel) loaded,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(BookViewModel viewModel)? loaded,
    TResult? Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(BookViewModel viewModel)? loaded,
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

abstract class _Error implements BookState {
  const factory _Error(final String error) = _$ErrorImpl;

  String get error;

  /// Create a copy of BookState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BookViewModel {
  entity.GetBooksEntity? get recommendedBooks =>
      throw _privateConstructorUsedError;
  entity.GetBooksEntity? get popularBooks => throw _privateConstructorUsedError;
  entity.GetBooksEntity? get newBooks => throw _privateConstructorUsedError;
  GetMyBooksEntity? get myBooks => throw _privateConstructorUsedError;
  AddMyBookEntity? get addMyBook => throw _privateConstructorUsedError;
  GetBookByIdEntity? get bookById => throw _privateConstructorUsedError;

  /// Create a copy of BookViewModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BookViewModelCopyWith<BookViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookViewModelCopyWith<$Res> {
  factory $BookViewModelCopyWith(
          BookViewModel value, $Res Function(BookViewModel) then) =
      _$BookViewModelCopyWithImpl<$Res, BookViewModel>;
  @useResult
  $Res call(
      {entity.GetBooksEntity? recommendedBooks,
      entity.GetBooksEntity? popularBooks,
      entity.GetBooksEntity? newBooks,
      GetMyBooksEntity? myBooks,
      AddMyBookEntity? addMyBook,
      GetBookByIdEntity? bookById});

  $GetBooksEntityCopyWith<$Res>? get recommendedBooks;
  $GetBooksEntityCopyWith<$Res>? get popularBooks;
  $GetBooksEntityCopyWith<$Res>? get newBooks;
  $GetMyBooksEntityCopyWith<$Res>? get myBooks;
  $AddMyBookEntityCopyWith<$Res>? get addMyBook;
  $GetBookByIdEntityCopyWith<$Res>? get bookById;
}

/// @nodoc
class _$BookViewModelCopyWithImpl<$Res, $Val extends BookViewModel>
    implements $BookViewModelCopyWith<$Res> {
  _$BookViewModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BookViewModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recommendedBooks = freezed,
    Object? popularBooks = freezed,
    Object? newBooks = freezed,
    Object? myBooks = freezed,
    Object? addMyBook = freezed,
    Object? bookById = freezed,
  }) {
    return _then(_value.copyWith(
      recommendedBooks: freezed == recommendedBooks
          ? _value.recommendedBooks
          : recommendedBooks // ignore: cast_nullable_to_non_nullable
              as entity.GetBooksEntity?,
      popularBooks: freezed == popularBooks
          ? _value.popularBooks
          : popularBooks // ignore: cast_nullable_to_non_nullable
              as entity.GetBooksEntity?,
      newBooks: freezed == newBooks
          ? _value.newBooks
          : newBooks // ignore: cast_nullable_to_non_nullable
              as entity.GetBooksEntity?,
      myBooks: freezed == myBooks
          ? _value.myBooks
          : myBooks // ignore: cast_nullable_to_non_nullable
              as GetMyBooksEntity?,
      addMyBook: freezed == addMyBook
          ? _value.addMyBook
          : addMyBook // ignore: cast_nullable_to_non_nullable
              as AddMyBookEntity?,
      bookById: freezed == bookById
          ? _value.bookById
          : bookById // ignore: cast_nullable_to_non_nullable
              as GetBookByIdEntity?,
    ) as $Val);
  }

  /// Create a copy of BookViewModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GetBooksEntityCopyWith<$Res>? get recommendedBooks {
    if (_value.recommendedBooks == null) {
      return null;
    }

    return $GetBooksEntityCopyWith<$Res>(_value.recommendedBooks!, (value) {
      return _then(_value.copyWith(recommendedBooks: value) as $Val);
    });
  }

  /// Create a copy of BookViewModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GetBooksEntityCopyWith<$Res>? get popularBooks {
    if (_value.popularBooks == null) {
      return null;
    }

    return $GetBooksEntityCopyWith<$Res>(_value.popularBooks!, (value) {
      return _then(_value.copyWith(popularBooks: value) as $Val);
    });
  }

  /// Create a copy of BookViewModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GetBooksEntityCopyWith<$Res>? get newBooks {
    if (_value.newBooks == null) {
      return null;
    }

    return $GetBooksEntityCopyWith<$Res>(_value.newBooks!, (value) {
      return _then(_value.copyWith(newBooks: value) as $Val);
    });
  }

  /// Create a copy of BookViewModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GetMyBooksEntityCopyWith<$Res>? get myBooks {
    if (_value.myBooks == null) {
      return null;
    }

    return $GetMyBooksEntityCopyWith<$Res>(_value.myBooks!, (value) {
      return _then(_value.copyWith(myBooks: value) as $Val);
    });
  }

  /// Create a copy of BookViewModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddMyBookEntityCopyWith<$Res>? get addMyBook {
    if (_value.addMyBook == null) {
      return null;
    }

    return $AddMyBookEntityCopyWith<$Res>(_value.addMyBook!, (value) {
      return _then(_value.copyWith(addMyBook: value) as $Val);
    });
  }

  /// Create a copy of BookViewModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GetBookByIdEntityCopyWith<$Res>? get bookById {
    if (_value.bookById == null) {
      return null;
    }

    return $GetBookByIdEntityCopyWith<$Res>(_value.bookById!, (value) {
      return _then(_value.copyWith(bookById: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BookViewModelImplCopyWith<$Res>
    implements $BookViewModelCopyWith<$Res> {
  factory _$$BookViewModelImplCopyWith(
          _$BookViewModelImpl value, $Res Function(_$BookViewModelImpl) then) =
      __$$BookViewModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {entity.GetBooksEntity? recommendedBooks,
      entity.GetBooksEntity? popularBooks,
      entity.GetBooksEntity? newBooks,
      GetMyBooksEntity? myBooks,
      AddMyBookEntity? addMyBook,
      GetBookByIdEntity? bookById});

  @override
  $GetBooksEntityCopyWith<$Res>? get recommendedBooks;
  @override
  $GetBooksEntityCopyWith<$Res>? get popularBooks;
  @override
  $GetBooksEntityCopyWith<$Res>? get newBooks;
  @override
  $GetMyBooksEntityCopyWith<$Res>? get myBooks;
  @override
  $AddMyBookEntityCopyWith<$Res>? get addMyBook;
  @override
  $GetBookByIdEntityCopyWith<$Res>? get bookById;
}

/// @nodoc
class __$$BookViewModelImplCopyWithImpl<$Res>
    extends _$BookViewModelCopyWithImpl<$Res, _$BookViewModelImpl>
    implements _$$BookViewModelImplCopyWith<$Res> {
  __$$BookViewModelImplCopyWithImpl(
      _$BookViewModelImpl _value, $Res Function(_$BookViewModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of BookViewModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recommendedBooks = freezed,
    Object? popularBooks = freezed,
    Object? newBooks = freezed,
    Object? myBooks = freezed,
    Object? addMyBook = freezed,
    Object? bookById = freezed,
  }) {
    return _then(_$BookViewModelImpl(
      recommendedBooks: freezed == recommendedBooks
          ? _value.recommendedBooks
          : recommendedBooks // ignore: cast_nullable_to_non_nullable
              as entity.GetBooksEntity?,
      popularBooks: freezed == popularBooks
          ? _value.popularBooks
          : popularBooks // ignore: cast_nullable_to_non_nullable
              as entity.GetBooksEntity?,
      newBooks: freezed == newBooks
          ? _value.newBooks
          : newBooks // ignore: cast_nullable_to_non_nullable
              as entity.GetBooksEntity?,
      myBooks: freezed == myBooks
          ? _value.myBooks
          : myBooks // ignore: cast_nullable_to_non_nullable
              as GetMyBooksEntity?,
      addMyBook: freezed == addMyBook
          ? _value.addMyBook
          : addMyBook // ignore: cast_nullable_to_non_nullable
              as AddMyBookEntity?,
      bookById: freezed == bookById
          ? _value.bookById
          : bookById // ignore: cast_nullable_to_non_nullable
              as GetBookByIdEntity?,
    ));
  }
}

/// @nodoc

class _$BookViewModelImpl implements _BookViewModel {
  const _$BookViewModelImpl(
      {this.recommendedBooks = null,
      this.popularBooks = null,
      this.newBooks = null,
      this.myBooks = null,
      this.addMyBook = null,
      this.bookById = null});

  @override
  @JsonKey()
  final entity.GetBooksEntity? recommendedBooks;
  @override
  @JsonKey()
  final entity.GetBooksEntity? popularBooks;
  @override
  @JsonKey()
  final entity.GetBooksEntity? newBooks;
  @override
  @JsonKey()
  final GetMyBooksEntity? myBooks;
  @override
  @JsonKey()
  final AddMyBookEntity? addMyBook;
  @override
  @JsonKey()
  final GetBookByIdEntity? bookById;

  @override
  String toString() {
    return 'BookViewModel(recommendedBooks: $recommendedBooks, popularBooks: $popularBooks, newBooks: $newBooks, myBooks: $myBooks, addMyBook: $addMyBook, bookById: $bookById)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookViewModelImpl &&
            (identical(other.recommendedBooks, recommendedBooks) ||
                other.recommendedBooks == recommendedBooks) &&
            (identical(other.popularBooks, popularBooks) ||
                other.popularBooks == popularBooks) &&
            (identical(other.newBooks, newBooks) ||
                other.newBooks == newBooks) &&
            (identical(other.myBooks, myBooks) || other.myBooks == myBooks) &&
            (identical(other.addMyBook, addMyBook) ||
                other.addMyBook == addMyBook) &&
            (identical(other.bookById, bookById) ||
                other.bookById == bookById));
  }

  @override
  int get hashCode => Object.hash(runtimeType, recommendedBooks, popularBooks,
      newBooks, myBooks, addMyBook, bookById);

  /// Create a copy of BookViewModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookViewModelImplCopyWith<_$BookViewModelImpl> get copyWith =>
      __$$BookViewModelImplCopyWithImpl<_$BookViewModelImpl>(this, _$identity);
}

abstract class _BookViewModel implements BookViewModel {
  const factory _BookViewModel(
      {final entity.GetBooksEntity? recommendedBooks,
      final entity.GetBooksEntity? popularBooks,
      final entity.GetBooksEntity? newBooks,
      final GetMyBooksEntity? myBooks,
      final AddMyBookEntity? addMyBook,
      final GetBookByIdEntity? bookById}) = _$BookViewModelImpl;

  @override
  entity.GetBooksEntity? get recommendedBooks;
  @override
  entity.GetBooksEntity? get popularBooks;
  @override
  entity.GetBooksEntity? get newBooks;
  @override
  GetMyBooksEntity? get myBooks;
  @override
  AddMyBookEntity? get addMyBook;
  @override
  GetBookByIdEntity? get bookById;

  /// Create a copy of BookViewModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookViewModelImplCopyWith<_$BookViewModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
