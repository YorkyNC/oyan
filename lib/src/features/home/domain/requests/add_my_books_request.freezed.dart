// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_my_books_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AddMyBooksRequest _$AddMyBooksRequestFromJson(Map<String, dynamic> json) {
  return _AddMyBooksRequest.fromJson(json);
}

/// @nodoc
mixin _$AddMyBooksRequest {
  String get username => throw _privateConstructorUsedError;
  String get filter => throw _privateConstructorUsedError;
  @JsonKey(name: 'book_id')
  int get bookId => throw _privateConstructorUsedError;

  /// Serializes this AddMyBooksRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AddMyBooksRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddMyBooksRequestCopyWith<AddMyBooksRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddMyBooksRequestCopyWith<$Res> {
  factory $AddMyBooksRequestCopyWith(
          AddMyBooksRequest value, $Res Function(AddMyBooksRequest) then) =
      _$AddMyBooksRequestCopyWithImpl<$Res, AddMyBooksRequest>;
  @useResult
  $Res call(
      {String username, String filter, @JsonKey(name: 'book_id') int bookId});
}

/// @nodoc
class _$AddMyBooksRequestCopyWithImpl<$Res, $Val extends AddMyBooksRequest>
    implements $AddMyBooksRequestCopyWith<$Res> {
  _$AddMyBooksRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddMyBooksRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? filter = null,
    Object? bookId = null,
  }) {
    return _then(_value.copyWith(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      filter: null == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as String,
      bookId: null == bookId
          ? _value.bookId
          : bookId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddMyBooksRequestImplCopyWith<$Res>
    implements $AddMyBooksRequestCopyWith<$Res> {
  factory _$$AddMyBooksRequestImplCopyWith(_$AddMyBooksRequestImpl value,
          $Res Function(_$AddMyBooksRequestImpl) then) =
      __$$AddMyBooksRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String username, String filter, @JsonKey(name: 'book_id') int bookId});
}

/// @nodoc
class __$$AddMyBooksRequestImplCopyWithImpl<$Res>
    extends _$AddMyBooksRequestCopyWithImpl<$Res, _$AddMyBooksRequestImpl>
    implements _$$AddMyBooksRequestImplCopyWith<$Res> {
  __$$AddMyBooksRequestImplCopyWithImpl(_$AddMyBooksRequestImpl _value,
      $Res Function(_$AddMyBooksRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddMyBooksRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? filter = null,
    Object? bookId = null,
  }) {
    return _then(_$AddMyBooksRequestImpl(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      filter: null == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as String,
      bookId: null == bookId
          ? _value.bookId
          : bookId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddMyBooksRequestImpl extends _AddMyBooksRequest {
  const _$AddMyBooksRequestImpl(
      {required this.username,
      required this.filter,
      @JsonKey(name: 'book_id') required this.bookId})
      : super._();

  factory _$AddMyBooksRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddMyBooksRequestImplFromJson(json);

  @override
  final String username;
  @override
  final String filter;
  @override
  @JsonKey(name: 'book_id')
  final int bookId;

  @override
  String toString() {
    return 'AddMyBooksRequest(username: $username, filter: $filter, bookId: $bookId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddMyBooksRequestImpl &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.filter, filter) || other.filter == filter) &&
            (identical(other.bookId, bookId) || other.bookId == bookId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, username, filter, bookId);

  /// Create a copy of AddMyBooksRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddMyBooksRequestImplCopyWith<_$AddMyBooksRequestImpl> get copyWith =>
      __$$AddMyBooksRequestImplCopyWithImpl<_$AddMyBooksRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddMyBooksRequestImplToJson(
      this,
    );
  }
}

abstract class _AddMyBooksRequest extends AddMyBooksRequest {
  const factory _AddMyBooksRequest(
          {required final String username,
          required final String filter,
          @JsonKey(name: 'book_id') required final int bookId}) =
      _$AddMyBooksRequestImpl;
  const _AddMyBooksRequest._() : super._();

  factory _AddMyBooksRequest.fromJson(Map<String, dynamic> json) =
      _$AddMyBooksRequestImpl.fromJson;

  @override
  String get username;
  @override
  String get filter;
  @override
  @JsonKey(name: 'book_id')
  int get bookId;

  /// Create a copy of AddMyBooksRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddMyBooksRequestImplCopyWith<_$AddMyBooksRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
