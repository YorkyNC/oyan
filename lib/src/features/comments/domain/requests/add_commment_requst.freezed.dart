// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_commment_requst.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AddCommentRequest _$AddCommentRequestFromJson(Map<String, dynamic> json) {
  return _AddCommentRequest.fromJson(json);
}

/// @nodoc
mixin _$AddCommentRequest {
  @JsonKey(name: 'book_id')
  int get bookId => throw _privateConstructorUsedError;
  @JsonKey(name: 'content')
  String get content => throw _privateConstructorUsedError;
  @JsonKey(name: 'rate')
  int get rate => throw _privateConstructorUsedError;

  /// Serializes this AddCommentRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AddCommentRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddCommentRequestCopyWith<AddCommentRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddCommentRequestCopyWith<$Res> {
  factory $AddCommentRequestCopyWith(
          AddCommentRequest value, $Res Function(AddCommentRequest) then) =
      _$AddCommentRequestCopyWithImpl<$Res, AddCommentRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'book_id') int bookId,
      @JsonKey(name: 'content') String content,
      @JsonKey(name: 'rate') int rate});
}

/// @nodoc
class _$AddCommentRequestCopyWithImpl<$Res, $Val extends AddCommentRequest>
    implements $AddCommentRequestCopyWith<$Res> {
  _$AddCommentRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddCommentRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookId = null,
    Object? content = null,
    Object? rate = null,
  }) {
    return _then(_value.copyWith(
      bookId: null == bookId
          ? _value.bookId
          : bookId // ignore: cast_nullable_to_non_nullable
              as int,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      rate: null == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddCommentRequestImplCopyWith<$Res>
    implements $AddCommentRequestCopyWith<$Res> {
  factory _$$AddCommentRequestImplCopyWith(_$AddCommentRequestImpl value,
          $Res Function(_$AddCommentRequestImpl) then) =
      __$$AddCommentRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'book_id') int bookId,
      @JsonKey(name: 'content') String content,
      @JsonKey(name: 'rate') int rate});
}

/// @nodoc
class __$$AddCommentRequestImplCopyWithImpl<$Res>
    extends _$AddCommentRequestCopyWithImpl<$Res, _$AddCommentRequestImpl>
    implements _$$AddCommentRequestImplCopyWith<$Res> {
  __$$AddCommentRequestImplCopyWithImpl(_$AddCommentRequestImpl _value,
      $Res Function(_$AddCommentRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddCommentRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookId = null,
    Object? content = null,
    Object? rate = null,
  }) {
    return _then(_$AddCommentRequestImpl(
      bookId: null == bookId
          ? _value.bookId
          : bookId // ignore: cast_nullable_to_non_nullable
              as int,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      rate: null == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddCommentRequestImpl extends _AddCommentRequest {
  const _$AddCommentRequestImpl(
      {@JsonKey(name: 'book_id') required this.bookId,
      @JsonKey(name: 'content') required this.content,
      @JsonKey(name: 'rate') required this.rate})
      : super._();

  factory _$AddCommentRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddCommentRequestImplFromJson(json);

  @override
  @JsonKey(name: 'book_id')
  final int bookId;
  @override
  @JsonKey(name: 'content')
  final String content;
  @override
  @JsonKey(name: 'rate')
  final int rate;

  @override
  String toString() {
    return 'AddCommentRequest(bookId: $bookId, content: $content, rate: $rate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddCommentRequestImpl &&
            (identical(other.bookId, bookId) || other.bookId == bookId) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.rate, rate) || other.rate == rate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, bookId, content, rate);

  /// Create a copy of AddCommentRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddCommentRequestImplCopyWith<_$AddCommentRequestImpl> get copyWith =>
      __$$AddCommentRequestImplCopyWithImpl<_$AddCommentRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddCommentRequestImplToJson(
      this,
    );
  }
}

abstract class _AddCommentRequest extends AddCommentRequest {
  const factory _AddCommentRequest(
          {@JsonKey(name: 'book_id') required final int bookId,
          @JsonKey(name: 'content') required final String content,
          @JsonKey(name: 'rate') required final int rate}) =
      _$AddCommentRequestImpl;
  const _AddCommentRequest._() : super._();

  factory _AddCommentRequest.fromJson(Map<String, dynamic> json) =
      _$AddCommentRequestImpl.fromJson;

  @override
  @JsonKey(name: 'book_id')
  int get bookId;
  @override
  @JsonKey(name: 'content')
  String get content;
  @override
  @JsonKey(name: 'rate')
  int get rate;

  /// Create a copy of AddCommentRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddCommentRequestImplCopyWith<_$AddCommentRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
