// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'test_add_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TestAddRequest _$TestAddRequestFromJson(Map<String, dynamic> json) {
  return _TestAddRequest.fromJson(json);
}

/// @nodoc
mixin _$TestAddRequest {
  @JsonKey(name: 'tournament_id')
  int? get tournamentId => throw _privateConstructorUsedError;
  int get score => throw _privateConstructorUsedError;
  String? get time => throw _privateConstructorUsedError;

  /// Serializes this TestAddRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TestAddRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TestAddRequestCopyWith<TestAddRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TestAddRequestCopyWith<$Res> {
  factory $TestAddRequestCopyWith(
          TestAddRequest value, $Res Function(TestAddRequest) then) =
      _$TestAddRequestCopyWithImpl<$Res, TestAddRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'tournament_id') int? tournamentId,
      int score,
      String? time});
}

/// @nodoc
class _$TestAddRequestCopyWithImpl<$Res, $Val extends TestAddRequest>
    implements $TestAddRequestCopyWith<$Res> {
  _$TestAddRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TestAddRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tournamentId = freezed,
    Object? score = null,
    Object? time = freezed,
  }) {
    return _then(_value.copyWith(
      tournamentId: freezed == tournamentId
          ? _value.tournamentId
          : tournamentId // ignore: cast_nullable_to_non_nullable
              as int?,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TestAddRequestImplCopyWith<$Res>
    implements $TestAddRequestCopyWith<$Res> {
  factory _$$TestAddRequestImplCopyWith(_$TestAddRequestImpl value,
          $Res Function(_$TestAddRequestImpl) then) =
      __$$TestAddRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'tournament_id') int? tournamentId,
      int score,
      String? time});
}

/// @nodoc
class __$$TestAddRequestImplCopyWithImpl<$Res>
    extends _$TestAddRequestCopyWithImpl<$Res, _$TestAddRequestImpl>
    implements _$$TestAddRequestImplCopyWith<$Res> {
  __$$TestAddRequestImplCopyWithImpl(
      _$TestAddRequestImpl _value, $Res Function(_$TestAddRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of TestAddRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tournamentId = freezed,
    Object? score = null,
    Object? time = freezed,
  }) {
    return _then(_$TestAddRequestImpl(
      tournamentId: freezed == tournamentId
          ? _value.tournamentId
          : tournamentId // ignore: cast_nullable_to_non_nullable
              as int?,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TestAddRequestImpl extends _TestAddRequest {
  const _$TestAddRequestImpl(
      {@JsonKey(name: 'tournament_id') this.tournamentId,
      required this.score,
      this.time})
      : super._();

  factory _$TestAddRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$TestAddRequestImplFromJson(json);

  @override
  @JsonKey(name: 'tournament_id')
  final int? tournamentId;
  @override
  final int score;
  @override
  final String? time;

  @override
  String toString() {
    return 'TestAddRequest(tournamentId: $tournamentId, score: $score, time: $time)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TestAddRequestImpl &&
            (identical(other.tournamentId, tournamentId) ||
                other.tournamentId == tournamentId) &&
            (identical(other.score, score) || other.score == score) &&
            (identical(other.time, time) || other.time == time));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, tournamentId, score, time);

  /// Create a copy of TestAddRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TestAddRequestImplCopyWith<_$TestAddRequestImpl> get copyWith =>
      __$$TestAddRequestImplCopyWithImpl<_$TestAddRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TestAddRequestImplToJson(
      this,
    );
  }
}

abstract class _TestAddRequest extends TestAddRequest {
  const factory _TestAddRequest(
      {@JsonKey(name: 'tournament_id') final int? tournamentId,
      required final int score,
      final String? time}) = _$TestAddRequestImpl;
  const _TestAddRequest._() : super._();

  factory _TestAddRequest.fromJson(Map<String, dynamic> json) =
      _$TestAddRequestImpl.fromJson;

  @override
  @JsonKey(name: 'tournament_id')
  int? get tournamentId;
  @override
  int get score;
  @override
  String? get time;

  /// Create a copy of TestAddRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TestAddRequestImplCopyWith<_$TestAddRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
