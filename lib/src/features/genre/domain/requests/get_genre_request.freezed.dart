// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_genre_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetGenreRequest _$GetGenreRequestFromJson(Map<String, dynamic> json) {
  return _GetGenreRequest.fromJson(json);
}

/// @nodoc
mixin _$GetGenreRequest {
  /// Serializes this GetGenreRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetGenreRequestCopyWith<$Res> {
  factory $GetGenreRequestCopyWith(
          GetGenreRequest value, $Res Function(GetGenreRequest) then) =
      _$GetGenreRequestCopyWithImpl<$Res, GetGenreRequest>;
}

/// @nodoc
class _$GetGenreRequestCopyWithImpl<$Res, $Val extends GetGenreRequest>
    implements $GetGenreRequestCopyWith<$Res> {
  _$GetGenreRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetGenreRequest
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetGenreRequestImplCopyWith<$Res> {
  factory _$$GetGenreRequestImplCopyWith(_$GetGenreRequestImpl value,
          $Res Function(_$GetGenreRequestImpl) then) =
      __$$GetGenreRequestImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetGenreRequestImplCopyWithImpl<$Res>
    extends _$GetGenreRequestCopyWithImpl<$Res, _$GetGenreRequestImpl>
    implements _$$GetGenreRequestImplCopyWith<$Res> {
  __$$GetGenreRequestImplCopyWithImpl(
      _$GetGenreRequestImpl _value, $Res Function(_$GetGenreRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetGenreRequest
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$GetGenreRequestImpl implements _GetGenreRequest {
  const _$GetGenreRequestImpl();

  factory _$GetGenreRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetGenreRequestImplFromJson(json);

  @override
  String toString() {
    return 'GetGenreRequest()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetGenreRequestImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$GetGenreRequestImplToJson(
      this,
    );
  }
}

abstract class _GetGenreRequest implements GetGenreRequest {
  const factory _GetGenreRequest() = _$GetGenreRequestImpl;

  factory _GetGenreRequest.fromJson(Map<String, dynamic> json) =
      _$GetGenreRequestImpl.fromJson;
}
