// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_result_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetResultRequest _$GetResultRequestFromJson(Map<String, dynamic> json) {
  return _GetResultRequest.fromJson(json);
}

/// @nodoc
mixin _$GetResultRequest {
  @JsonKey(name: 'tournament_id')
  int get tournamentId => throw _privateConstructorUsedError;

  /// Serializes this GetResultRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetResultRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetResultRequestCopyWith<GetResultRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetResultRequestCopyWith<$Res> {
  factory $GetResultRequestCopyWith(
          GetResultRequest value, $Res Function(GetResultRequest) then) =
      _$GetResultRequestCopyWithImpl<$Res, GetResultRequest>;
  @useResult
  $Res call({@JsonKey(name: 'tournament_id') int tournamentId});
}

/// @nodoc
class _$GetResultRequestCopyWithImpl<$Res, $Val extends GetResultRequest>
    implements $GetResultRequestCopyWith<$Res> {
  _$GetResultRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetResultRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tournamentId = null,
  }) {
    return _then(_value.copyWith(
      tournamentId: null == tournamentId
          ? _value.tournamentId
          : tournamentId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetResultRequestImplCopyWith<$Res>
    implements $GetResultRequestCopyWith<$Res> {
  factory _$$GetResultRequestImplCopyWith(_$GetResultRequestImpl value,
          $Res Function(_$GetResultRequestImpl) then) =
      __$$GetResultRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'tournament_id') int tournamentId});
}

/// @nodoc
class __$$GetResultRequestImplCopyWithImpl<$Res>
    extends _$GetResultRequestCopyWithImpl<$Res, _$GetResultRequestImpl>
    implements _$$GetResultRequestImplCopyWith<$Res> {
  __$$GetResultRequestImplCopyWithImpl(_$GetResultRequestImpl _value,
      $Res Function(_$GetResultRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetResultRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tournamentId = null,
  }) {
    return _then(_$GetResultRequestImpl(
      tournamentId: null == tournamentId
          ? _value.tournamentId
          : tournamentId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetResultRequestImpl extends _GetResultRequest {
  const _$GetResultRequestImpl(
      {@JsonKey(name: 'tournament_id') required this.tournamentId})
      : super._();

  factory _$GetResultRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetResultRequestImplFromJson(json);

  @override
  @JsonKey(name: 'tournament_id')
  final int tournamentId;

  @override
  String toString() {
    return 'GetResultRequest(tournamentId: $tournamentId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetResultRequestImpl &&
            (identical(other.tournamentId, tournamentId) ||
                other.tournamentId == tournamentId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, tournamentId);

  /// Create a copy of GetResultRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetResultRequestImplCopyWith<_$GetResultRequestImpl> get copyWith =>
      __$$GetResultRequestImplCopyWithImpl<_$GetResultRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetResultRequestImplToJson(
      this,
    );
  }
}

abstract class _GetResultRequest extends GetResultRequest {
  const factory _GetResultRequest(
          {@JsonKey(name: 'tournament_id') required final int tournamentId}) =
      _$GetResultRequestImpl;
  const _GetResultRequest._() : super._();

  factory _GetResultRequest.fromJson(Map<String, dynamic> json) =
      _$GetResultRequestImpl.fromJson;

  @override
  @JsonKey(name: 'tournament_id')
  int get tournamentId;

  /// Create a copy of GetResultRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetResultRequestImplCopyWith<_$GetResultRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
