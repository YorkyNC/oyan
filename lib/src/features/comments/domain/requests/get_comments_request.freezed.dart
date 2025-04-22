// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_comments_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetCommentsRequest _$GetCommentsRequestFromJson(Map<String, dynamic> json) {
  return _GetCommentsRequest.fromJson(json);
}

/// @nodoc
mixin _$GetCommentsRequest {
  @JsonKey(name: 'book_id')
  int get bookId => throw _privateConstructorUsedError;

  /// Serializes this GetCommentsRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetCommentsRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetCommentsRequestCopyWith<GetCommentsRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetCommentsRequestCopyWith<$Res> {
  factory $GetCommentsRequestCopyWith(
          GetCommentsRequest value, $Res Function(GetCommentsRequest) then) =
      _$GetCommentsRequestCopyWithImpl<$Res, GetCommentsRequest>;
  @useResult
  $Res call({@JsonKey(name: 'book_id') int bookId});
}

/// @nodoc
class _$GetCommentsRequestCopyWithImpl<$Res, $Val extends GetCommentsRequest>
    implements $GetCommentsRequestCopyWith<$Res> {
  _$GetCommentsRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetCommentsRequest
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
abstract class _$$GetCommentsRequestImplCopyWith<$Res>
    implements $GetCommentsRequestCopyWith<$Res> {
  factory _$$GetCommentsRequestImplCopyWith(_$GetCommentsRequestImpl value,
          $Res Function(_$GetCommentsRequestImpl) then) =
      __$$GetCommentsRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'book_id') int bookId});
}

/// @nodoc
class __$$GetCommentsRequestImplCopyWithImpl<$Res>
    extends _$GetCommentsRequestCopyWithImpl<$Res, _$GetCommentsRequestImpl>
    implements _$$GetCommentsRequestImplCopyWith<$Res> {
  __$$GetCommentsRequestImplCopyWithImpl(_$GetCommentsRequestImpl _value,
      $Res Function(_$GetCommentsRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetCommentsRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookId = null,
  }) {
    return _then(_$GetCommentsRequestImpl(
      bookId: null == bookId
          ? _value.bookId
          : bookId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetCommentsRequestImpl extends _GetCommentsRequest {
  const _$GetCommentsRequestImpl(
      {@JsonKey(name: 'book_id') required this.bookId})
      : super._();

  factory _$GetCommentsRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetCommentsRequestImplFromJson(json);

  @override
  @JsonKey(name: 'book_id')
  final int bookId;

  @override
  String toString() {
    return 'GetCommentsRequest(bookId: $bookId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCommentsRequestImpl &&
            (identical(other.bookId, bookId) || other.bookId == bookId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, bookId);

  /// Create a copy of GetCommentsRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCommentsRequestImplCopyWith<_$GetCommentsRequestImpl> get copyWith =>
      __$$GetCommentsRequestImplCopyWithImpl<_$GetCommentsRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetCommentsRequestImplToJson(
      this,
    );
  }
}

abstract class _GetCommentsRequest extends GetCommentsRequest {
  const factory _GetCommentsRequest(
          {@JsonKey(name: 'book_id') required final int bookId}) =
      _$GetCommentsRequestImpl;
  const _GetCommentsRequest._() : super._();

  factory _GetCommentsRequest.fromJson(Map<String, dynamic> json) =
      _$GetCommentsRequestImpl.fromJson;

  @override
  @JsonKey(name: 'book_id')
  int get bookId;

  /// Create a copy of GetCommentsRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetCommentsRequestImplCopyWith<_$GetCommentsRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
