// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'test_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TestRequest _$TestRequestFromJson(Map<String, dynamic> json) {
  return _TestRequest.fromJson(json);
}

/// @nodoc
mixin _$TestRequest {
  @JsonKey(name: 'tournament_id')
  int get tournamentId => throw _privateConstructorUsedError;

  /// Serializes this TestRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TestRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TestRequestCopyWith<TestRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TestRequestCopyWith<$Res> {
  factory $TestRequestCopyWith(
          TestRequest value, $Res Function(TestRequest) then) =
      _$TestRequestCopyWithImpl<$Res, TestRequest>;
  @useResult
  $Res call({@JsonKey(name: 'tournament_id') int tournamentId});
}

/// @nodoc
class _$TestRequestCopyWithImpl<$Res, $Val extends TestRequest>
    implements $TestRequestCopyWith<$Res> {
  _$TestRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TestRequest
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
abstract class _$$TestRequestImplCopyWith<$Res>
    implements $TestRequestCopyWith<$Res> {
  factory _$$TestRequestImplCopyWith(
          _$TestRequestImpl value, $Res Function(_$TestRequestImpl) then) =
      __$$TestRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'tournament_id') int tournamentId});
}

/// @nodoc
class __$$TestRequestImplCopyWithImpl<$Res>
    extends _$TestRequestCopyWithImpl<$Res, _$TestRequestImpl>
    implements _$$TestRequestImplCopyWith<$Res> {
  __$$TestRequestImplCopyWithImpl(
      _$TestRequestImpl _value, $Res Function(_$TestRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of TestRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tournamentId = null,
  }) {
    return _then(_$TestRequestImpl(
      tournamentId: null == tournamentId
          ? _value.tournamentId
          : tournamentId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TestRequestImpl extends _TestRequest {
  const _$TestRequestImpl(
      {@JsonKey(name: 'tournament_id') required this.tournamentId})
      : super._();

  factory _$TestRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$TestRequestImplFromJson(json);

  @override
  @JsonKey(name: 'tournament_id')
  final int tournamentId;

  @override
  String toString() {
    return 'TestRequest(tournamentId: $tournamentId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TestRequestImpl &&
            (identical(other.tournamentId, tournamentId) ||
                other.tournamentId == tournamentId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, tournamentId);

  /// Create a copy of TestRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TestRequestImplCopyWith<_$TestRequestImpl> get copyWith =>
      __$$TestRequestImplCopyWithImpl<_$TestRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TestRequestImplToJson(
      this,
    );
  }
}

abstract class _TestRequest extends TestRequest {
  const factory _TestRequest(
          {@JsonKey(name: 'tournament_id') required final int tournamentId}) =
      _$TestRequestImpl;
  const _TestRequest._() : super._();

  factory _TestRequest.fromJson(Map<String, dynamic> json) =
      _$TestRequestImpl.fromJson;

  @override
  @JsonKey(name: 'tournament_id')
  int get tournamentId;

  /// Create a copy of TestRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TestRequestImplCopyWith<_$TestRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
