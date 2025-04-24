// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_book_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MyBookRequest _$MyBookRequestFromJson(Map<String, dynamic> json) {
  return _MyBookRequest.fromJson(json);
}

/// @nodoc
mixin _$MyBookRequest {
  String get username => throw _privateConstructorUsedError;
  String get filter => throw _privateConstructorUsedError;

  /// Serializes this MyBookRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MyBookRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MyBookRequestCopyWith<MyBookRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyBookRequestCopyWith<$Res> {
  factory $MyBookRequestCopyWith(
          MyBookRequest value, $Res Function(MyBookRequest) then) =
      _$MyBookRequestCopyWithImpl<$Res, MyBookRequest>;
  @useResult
  $Res call({String username, String filter});
}

/// @nodoc
class _$MyBookRequestCopyWithImpl<$Res, $Val extends MyBookRequest>
    implements $MyBookRequestCopyWith<$Res> {
  _$MyBookRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MyBookRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? filter = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MyBookRequestImplCopyWith<$Res>
    implements $MyBookRequestCopyWith<$Res> {
  factory _$$MyBookRequestImplCopyWith(
          _$MyBookRequestImpl value, $Res Function(_$MyBookRequestImpl) then) =
      __$$MyBookRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String username, String filter});
}

/// @nodoc
class __$$MyBookRequestImplCopyWithImpl<$Res>
    extends _$MyBookRequestCopyWithImpl<$Res, _$MyBookRequestImpl>
    implements _$$MyBookRequestImplCopyWith<$Res> {
  __$$MyBookRequestImplCopyWithImpl(
      _$MyBookRequestImpl _value, $Res Function(_$MyBookRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of MyBookRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? filter = null,
  }) {
    return _then(_$MyBookRequestImpl(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      filter: null == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MyBookRequestImpl extends _MyBookRequest {
  const _$MyBookRequestImpl({required this.username, required this.filter})
      : super._();

  factory _$MyBookRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$MyBookRequestImplFromJson(json);

  @override
  final String username;
  @override
  final String filter;

  @override
  String toString() {
    return 'MyBookRequest(username: $username, filter: $filter)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyBookRequestImpl &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.filter, filter) || other.filter == filter));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, username, filter);

  /// Create a copy of MyBookRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MyBookRequestImplCopyWith<_$MyBookRequestImpl> get copyWith =>
      __$$MyBookRequestImplCopyWithImpl<_$MyBookRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MyBookRequestImplToJson(
      this,
    );
  }
}

abstract class _MyBookRequest extends MyBookRequest {
  const factory _MyBookRequest(
      {required final String username,
      required final String filter}) = _$MyBookRequestImpl;
  const _MyBookRequest._() : super._();

  factory _MyBookRequest.fromJson(Map<String, dynamic> json) =
      _$MyBookRequestImpl.fromJson;

  @override
  String get username;
  @override
  String get filter;

  /// Create a copy of MyBookRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MyBookRequestImplCopyWith<_$MyBookRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
