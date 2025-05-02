// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'patch_tournament_requst.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PatchTournamentRequest _$PatchTournamentRequestFromJson(
    Map<String, dynamic> json) {
  return _PatchTournamentRequest.fromJson(json);
}

/// @nodoc
mixin _$PatchTournamentRequest {
  @JsonKey(name: 'tournament_id')
  int get tournamentId => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  CompetitionStatus get status => throw _privateConstructorUsedError;

  /// Serializes this PatchTournamentRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PatchTournamentRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PatchTournamentRequestCopyWith<PatchTournamentRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatchTournamentRequestCopyWith<$Res> {
  factory $PatchTournamentRequestCopyWith(PatchTournamentRequest value,
          $Res Function(PatchTournamentRequest) then) =
      _$PatchTournamentRequestCopyWithImpl<$Res, PatchTournamentRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'tournament_id') int tournamentId,
      @JsonKey(name: 'status') CompetitionStatus status});
}

/// @nodoc
class _$PatchTournamentRequestCopyWithImpl<$Res,
        $Val extends PatchTournamentRequest>
    implements $PatchTournamentRequestCopyWith<$Res> {
  _$PatchTournamentRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PatchTournamentRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tournamentId = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      tournamentId: null == tournamentId
          ? _value.tournamentId
          : tournamentId // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CompetitionStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PatchTournamentRequestImplCopyWith<$Res>
    implements $PatchTournamentRequestCopyWith<$Res> {
  factory _$$PatchTournamentRequestImplCopyWith(
          _$PatchTournamentRequestImpl value,
          $Res Function(_$PatchTournamentRequestImpl) then) =
      __$$PatchTournamentRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'tournament_id') int tournamentId,
      @JsonKey(name: 'status') CompetitionStatus status});
}

/// @nodoc
class __$$PatchTournamentRequestImplCopyWithImpl<$Res>
    extends _$PatchTournamentRequestCopyWithImpl<$Res,
        _$PatchTournamentRequestImpl>
    implements _$$PatchTournamentRequestImplCopyWith<$Res> {
  __$$PatchTournamentRequestImplCopyWithImpl(
      _$PatchTournamentRequestImpl _value,
      $Res Function(_$PatchTournamentRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of PatchTournamentRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tournamentId = null,
    Object? status = null,
  }) {
    return _then(_$PatchTournamentRequestImpl(
      tournamentId: null == tournamentId
          ? _value.tournamentId
          : tournamentId // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CompetitionStatus,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PatchTournamentRequestImpl extends _PatchTournamentRequest {
  const _$PatchTournamentRequestImpl(
      {@JsonKey(name: 'tournament_id') required this.tournamentId,
      @JsonKey(name: 'status') required this.status})
      : super._();

  factory _$PatchTournamentRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$PatchTournamentRequestImplFromJson(json);

  @override
  @JsonKey(name: 'tournament_id')
  final int tournamentId;
  @override
  @JsonKey(name: 'status')
  final CompetitionStatus status;

  @override
  String toString() {
    return 'PatchTournamentRequest(tournamentId: $tournamentId, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PatchTournamentRequestImpl &&
            (identical(other.tournamentId, tournamentId) ||
                other.tournamentId == tournamentId) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, tournamentId, status);

  /// Create a copy of PatchTournamentRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PatchTournamentRequestImplCopyWith<_$PatchTournamentRequestImpl>
      get copyWith => __$$PatchTournamentRequestImplCopyWithImpl<
          _$PatchTournamentRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PatchTournamentRequestImplToJson(
      this,
    );
  }
}

abstract class _PatchTournamentRequest extends PatchTournamentRequest {
  const factory _PatchTournamentRequest(
          {@JsonKey(name: 'tournament_id') required final int tournamentId,
          @JsonKey(name: 'status') required final CompetitionStatus status}) =
      _$PatchTournamentRequestImpl;
  const _PatchTournamentRequest._() : super._();

  factory _PatchTournamentRequest.fromJson(Map<String, dynamic> json) =
      _$PatchTournamentRequestImpl.fromJson;

  @override
  @JsonKey(name: 'tournament_id')
  int get tournamentId;
  @override
  @JsonKey(name: 'status')
  CompetitionStatus get status;

  /// Create a copy of PatchTournamentRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PatchTournamentRequestImplCopyWith<_$PatchTournamentRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
