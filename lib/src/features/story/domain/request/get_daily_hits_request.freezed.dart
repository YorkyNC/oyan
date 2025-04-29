// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_daily_hits_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetDailyHitsRequest _$GetDailyHitsRequestFromJson(Map<String, dynamic> json) {
  return _GetDailyHitsRequest.fromJson(json);
}

/// @nodoc
mixin _$GetDailyHitsRequest {
  /// Serializes this GetDailyHitsRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetDailyHitsRequestCopyWith<$Res> {
  factory $GetDailyHitsRequestCopyWith(
          GetDailyHitsRequest value, $Res Function(GetDailyHitsRequest) then) =
      _$GetDailyHitsRequestCopyWithImpl<$Res, GetDailyHitsRequest>;
}

/// @nodoc
class _$GetDailyHitsRequestCopyWithImpl<$Res, $Val extends GetDailyHitsRequest>
    implements $GetDailyHitsRequestCopyWith<$Res> {
  _$GetDailyHitsRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetDailyHitsRequest
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetDailyHitsRequestImplCopyWith<$Res> {
  factory _$$GetDailyHitsRequestImplCopyWith(_$GetDailyHitsRequestImpl value,
          $Res Function(_$GetDailyHitsRequestImpl) then) =
      __$$GetDailyHitsRequestImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetDailyHitsRequestImplCopyWithImpl<$Res>
    extends _$GetDailyHitsRequestCopyWithImpl<$Res, _$GetDailyHitsRequestImpl>
    implements _$$GetDailyHitsRequestImplCopyWith<$Res> {
  __$$GetDailyHitsRequestImplCopyWithImpl(_$GetDailyHitsRequestImpl _value,
      $Res Function(_$GetDailyHitsRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetDailyHitsRequest
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$GetDailyHitsRequestImpl extends _GetDailyHitsRequest {
  const _$GetDailyHitsRequestImpl() : super._();

  factory _$GetDailyHitsRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetDailyHitsRequestImplFromJson(json);

  @override
  String toString() {
    return 'GetDailyHitsRequest()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetDailyHitsRequestImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$GetDailyHitsRequestImplToJson(
      this,
    );
  }
}

abstract class _GetDailyHitsRequest extends GetDailyHitsRequest {
  const factory _GetDailyHitsRequest() = _$GetDailyHitsRequestImpl;
  const _GetDailyHitsRequest._() : super._();

  factory _GetDailyHitsRequest.fromJson(Map<String, dynamic> json) =
      _$GetDailyHitsRequestImpl.fromJson;
}
