// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_daily_excerpts_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetDailyExcerptsRequest _$GetDailyExcerptsRequestFromJson(
    Map<String, dynamic> json) {
  return _GetDailyExcerptsRequest.fromJson(json);
}

/// @nodoc
mixin _$GetDailyExcerptsRequest {
  /// Serializes this GetDailyExcerptsRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetDailyExcerptsRequestCopyWith<$Res> {
  factory $GetDailyExcerptsRequestCopyWith(GetDailyExcerptsRequest value,
          $Res Function(GetDailyExcerptsRequest) then) =
      _$GetDailyExcerptsRequestCopyWithImpl<$Res, GetDailyExcerptsRequest>;
}

/// @nodoc
class _$GetDailyExcerptsRequestCopyWithImpl<$Res,
        $Val extends GetDailyExcerptsRequest>
    implements $GetDailyExcerptsRequestCopyWith<$Res> {
  _$GetDailyExcerptsRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetDailyExcerptsRequest
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetDailyExcerptsRequestImplCopyWith<$Res> {
  factory _$$GetDailyExcerptsRequestImplCopyWith(
          _$GetDailyExcerptsRequestImpl value,
          $Res Function(_$GetDailyExcerptsRequestImpl) then) =
      __$$GetDailyExcerptsRequestImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetDailyExcerptsRequestImplCopyWithImpl<$Res>
    extends _$GetDailyExcerptsRequestCopyWithImpl<$Res,
        _$GetDailyExcerptsRequestImpl>
    implements _$$GetDailyExcerptsRequestImplCopyWith<$Res> {
  __$$GetDailyExcerptsRequestImplCopyWithImpl(
      _$GetDailyExcerptsRequestImpl _value,
      $Res Function(_$GetDailyExcerptsRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetDailyExcerptsRequest
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$GetDailyExcerptsRequestImpl extends _GetDailyExcerptsRequest {
  const _$GetDailyExcerptsRequestImpl() : super._();

  factory _$GetDailyExcerptsRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetDailyExcerptsRequestImplFromJson(json);

  @override
  String toString() {
    return 'GetDailyExcerptsRequest()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetDailyExcerptsRequestImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$GetDailyExcerptsRequestImplToJson(
      this,
    );
  }
}

abstract class _GetDailyExcerptsRequest extends GetDailyExcerptsRequest {
  const factory _GetDailyExcerptsRequest() = _$GetDailyExcerptsRequestImpl;
  const _GetDailyExcerptsRequest._() : super._();

  factory _GetDailyExcerptsRequest.fromJson(Map<String, dynamic> json) =
      _$GetDailyExcerptsRequestImpl.fromJson;
}
