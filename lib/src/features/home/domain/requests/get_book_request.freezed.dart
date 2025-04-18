// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_book_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetBookRequest _$GetBookRequestFromJson(Map<String, dynamic> json) {
  return _GetBookRequest.fromJson(json);
}

/// @nodoc
mixin _$GetBookRequest {
  BookType get type => throw _privateConstructorUsedError;
  int? get page => throw _privateConstructorUsedError;

  /// Serializes this GetBookRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetBookRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetBookRequestCopyWith<GetBookRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetBookRequestCopyWith<$Res> {
  factory $GetBookRequestCopyWith(
          GetBookRequest value, $Res Function(GetBookRequest) then) =
      _$GetBookRequestCopyWithImpl<$Res, GetBookRequest>;
  @useResult
  $Res call({BookType type, int? page});
}

/// @nodoc
class _$GetBookRequestCopyWithImpl<$Res, $Val extends GetBookRequest>
    implements $GetBookRequestCopyWith<$Res> {
  _$GetBookRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetBookRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? page = freezed,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as BookType,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetBookRequestImplCopyWith<$Res>
    implements $GetBookRequestCopyWith<$Res> {
  factory _$$GetBookRequestImplCopyWith(_$GetBookRequestImpl value,
          $Res Function(_$GetBookRequestImpl) then) =
      __$$GetBookRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BookType type, int? page});
}

/// @nodoc
class __$$GetBookRequestImplCopyWithImpl<$Res>
    extends _$GetBookRequestCopyWithImpl<$Res, _$GetBookRequestImpl>
    implements _$$GetBookRequestImplCopyWith<$Res> {
  __$$GetBookRequestImplCopyWithImpl(
      _$GetBookRequestImpl _value, $Res Function(_$GetBookRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetBookRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? page = freezed,
  }) {
    return _then(_$GetBookRequestImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as BookType,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetBookRequestImpl extends _GetBookRequest {
  const _$GetBookRequestImpl({required this.type, this.page}) : super._();

  factory _$GetBookRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetBookRequestImplFromJson(json);

  @override
  final BookType type;
  @override
  final int? page;

  @override
  String toString() {
    return 'GetBookRequest(type: $type, page: $page)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetBookRequestImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.page, page) || other.page == page));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type, page);

  /// Create a copy of GetBookRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetBookRequestImplCopyWith<_$GetBookRequestImpl> get copyWith =>
      __$$GetBookRequestImplCopyWithImpl<_$GetBookRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetBookRequestImplToJson(
      this,
    );
  }
}

abstract class _GetBookRequest extends GetBookRequest {
  const factory _GetBookRequest(
      {required final BookType type, final int? page}) = _$GetBookRequestImpl;
  const _GetBookRequest._() : super._();

  factory _GetBookRequest.fromJson(Map<String, dynamic> json) =
      _$GetBookRequestImpl.fromJson;

  @override
  BookType get type;
  @override
  int? get page;

  /// Create a copy of GetBookRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetBookRequestImplCopyWith<_$GetBookRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
