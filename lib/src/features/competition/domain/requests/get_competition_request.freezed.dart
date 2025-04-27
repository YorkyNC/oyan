// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_competition_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetCompetitionRequest _$GetCompetitionRequestFromJson(
    Map<String, dynamic> json) {
  return _GetCompetitionRequest.fromJson(json);
}

/// @nodoc
mixin _$GetCompetitionRequest {
  CompetitionStatus get status => throw _privateConstructorUsedError;

  /// Serializes this GetCompetitionRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetCompetitionRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetCompetitionRequestCopyWith<GetCompetitionRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetCompetitionRequestCopyWith<$Res> {
  factory $GetCompetitionRequestCopyWith(GetCompetitionRequest value,
          $Res Function(GetCompetitionRequest) then) =
      _$GetCompetitionRequestCopyWithImpl<$Res, GetCompetitionRequest>;
  @useResult
  $Res call({CompetitionStatus status});
}

/// @nodoc
class _$GetCompetitionRequestCopyWithImpl<$Res,
        $Val extends GetCompetitionRequest>
    implements $GetCompetitionRequestCopyWith<$Res> {
  _$GetCompetitionRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetCompetitionRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CompetitionStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetCompetitionRequestImplCopyWith<$Res>
    implements $GetCompetitionRequestCopyWith<$Res> {
  factory _$$GetCompetitionRequestImplCopyWith(
          _$GetCompetitionRequestImpl value,
          $Res Function(_$GetCompetitionRequestImpl) then) =
      __$$GetCompetitionRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CompetitionStatus status});
}

/// @nodoc
class __$$GetCompetitionRequestImplCopyWithImpl<$Res>
    extends _$GetCompetitionRequestCopyWithImpl<$Res,
        _$GetCompetitionRequestImpl>
    implements _$$GetCompetitionRequestImplCopyWith<$Res> {
  __$$GetCompetitionRequestImplCopyWithImpl(_$GetCompetitionRequestImpl _value,
      $Res Function(_$GetCompetitionRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetCompetitionRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_$GetCompetitionRequestImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CompetitionStatus,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetCompetitionRequestImpl extends _GetCompetitionRequest {
  const _$GetCompetitionRequestImpl({required this.status}) : super._();

  factory _$GetCompetitionRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetCompetitionRequestImplFromJson(json);

  @override
  final CompetitionStatus status;

  @override
  String toString() {
    return 'GetCompetitionRequest(status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCompetitionRequestImpl &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status);

  /// Create a copy of GetCompetitionRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCompetitionRequestImplCopyWith<_$GetCompetitionRequestImpl>
      get copyWith => __$$GetCompetitionRequestImplCopyWithImpl<
          _$GetCompetitionRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetCompetitionRequestImplToJson(
      this,
    );
  }
}

abstract class _GetCompetitionRequest extends GetCompetitionRequest {
  const factory _GetCompetitionRequest(
      {required final CompetitionStatus status}) = _$GetCompetitionRequestImpl;
  const _GetCompetitionRequest._() : super._();

  factory _GetCompetitionRequest.fromJson(Map<String, dynamic> json) =
      _$GetCompetitionRequestImpl.fromJson;

  @override
  CompetitionStatus get status;

  /// Create a copy of GetCompetitionRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetCompetitionRequestImplCopyWith<_$GetCompetitionRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
