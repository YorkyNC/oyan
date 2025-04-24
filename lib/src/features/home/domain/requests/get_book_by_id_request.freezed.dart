// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_book_by_id_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetBookByIdRequest _$GetBookByIdRequestFromJson(Map<String, dynamic> json) {
  return _GetBookByIdRequest.fromJson(json);
}

/// @nodoc
mixin _$GetBookByIdRequest {
  @JsonKey(name: 'book_id')
  int get bookId => throw _privateConstructorUsedError;

  /// Serializes this GetBookByIdRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetBookByIdRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetBookByIdRequestCopyWith<GetBookByIdRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetBookByIdRequestCopyWith<$Res> {
  factory $GetBookByIdRequestCopyWith(
          GetBookByIdRequest value, $Res Function(GetBookByIdRequest) then) =
      _$GetBookByIdRequestCopyWithImpl<$Res, GetBookByIdRequest>;
  @useResult
  $Res call({@JsonKey(name: 'book_id') int bookId});
}

/// @nodoc
class _$GetBookByIdRequestCopyWithImpl<$Res, $Val extends GetBookByIdRequest>
    implements $GetBookByIdRequestCopyWith<$Res> {
  _$GetBookByIdRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetBookByIdRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookId = null,
  }) {
    return _then(_value.copyWith(
      bookId: null == bookId
          ? _value.bookId
          : bookId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetBookByIdRequestImplCopyWith<$Res>
    implements $GetBookByIdRequestCopyWith<$Res> {
  factory _$$GetBookByIdRequestImplCopyWith(_$GetBookByIdRequestImpl value,
          $Res Function(_$GetBookByIdRequestImpl) then) =
      __$$GetBookByIdRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'book_id') int bookId});
}

/// @nodoc
class __$$GetBookByIdRequestImplCopyWithImpl<$Res>
    extends _$GetBookByIdRequestCopyWithImpl<$Res, _$GetBookByIdRequestImpl>
    implements _$$GetBookByIdRequestImplCopyWith<$Res> {
  __$$GetBookByIdRequestImplCopyWithImpl(_$GetBookByIdRequestImpl _value,
      $Res Function(_$GetBookByIdRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetBookByIdRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookId = null,
  }) {
    return _then(_$GetBookByIdRequestImpl(
      bookId: null == bookId
          ? _value.bookId
          : bookId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetBookByIdRequestImpl extends _GetBookByIdRequest {
  const _$GetBookByIdRequestImpl(
      {@JsonKey(name: 'book_id') required this.bookId})
      : super._();

  factory _$GetBookByIdRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetBookByIdRequestImplFromJson(json);

  @override
  @JsonKey(name: 'book_id')
  final int bookId;

  @override
  String toString() {
    return 'GetBookByIdRequest(bookId: $bookId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetBookByIdRequestImpl &&
            (identical(other.bookId, bookId) || other.bookId == bookId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, bookId);

  /// Create a copy of GetBookByIdRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetBookByIdRequestImplCopyWith<_$GetBookByIdRequestImpl> get copyWith =>
      __$$GetBookByIdRequestImplCopyWithImpl<_$GetBookByIdRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetBookByIdRequestImplToJson(
      this,
    );
  }
}

abstract class _GetBookByIdRequest extends GetBookByIdRequest {
  const factory _GetBookByIdRequest(
          {@JsonKey(name: 'book_id') required final int bookId}) =
      _$GetBookByIdRequestImpl;
  const _GetBookByIdRequest._() : super._();

  factory _GetBookByIdRequest.fromJson(Map<String, dynamic> json) =
      _$GetBookByIdRequestImpl.fromJson;

  @override
  @JsonKey(name: 'book_id')
  int get bookId;

  /// Create a copy of GetBookByIdRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetBookByIdRequestImplCopyWith<_$GetBookByIdRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
