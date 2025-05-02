// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'patch_tournament_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PatchTournamentEntity _$PatchTournamentEntityFromJson(
    Map<String, dynamic> json) {
  return _PatchTournamentEntity.fromJson(json);
}

/// @nodoc
mixin _$PatchTournamentEntity {
  String? get message => throw _privateConstructorUsedError;

  /// Serializes this PatchTournamentEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PatchTournamentEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PatchTournamentEntityCopyWith<PatchTournamentEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatchTournamentEntityCopyWith<$Res> {
  factory $PatchTournamentEntityCopyWith(PatchTournamentEntity value,
          $Res Function(PatchTournamentEntity) then) =
      _$PatchTournamentEntityCopyWithImpl<$Res, PatchTournamentEntity>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class _$PatchTournamentEntityCopyWithImpl<$Res,
        $Val extends PatchTournamentEntity>
    implements $PatchTournamentEntityCopyWith<$Res> {
  _$PatchTournamentEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PatchTournamentEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PatchTournamentEntityImplCopyWith<$Res>
    implements $PatchTournamentEntityCopyWith<$Res> {
  factory _$$PatchTournamentEntityImplCopyWith(
          _$PatchTournamentEntityImpl value,
          $Res Function(_$PatchTournamentEntityImpl) then) =
      __$$PatchTournamentEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$PatchTournamentEntityImplCopyWithImpl<$Res>
    extends _$PatchTournamentEntityCopyWithImpl<$Res,
        _$PatchTournamentEntityImpl>
    implements _$$PatchTournamentEntityImplCopyWith<$Res> {
  __$$PatchTournamentEntityImplCopyWithImpl(_$PatchTournamentEntityImpl _value,
      $Res Function(_$PatchTournamentEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of PatchTournamentEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$PatchTournamentEntityImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PatchTournamentEntityImpl implements _PatchTournamentEntity {
  const _$PatchTournamentEntityImpl({this.message});

  factory _$PatchTournamentEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$PatchTournamentEntityImplFromJson(json);

  @override
  final String? message;

  @override
  String toString() {
    return 'PatchTournamentEntity(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PatchTournamentEntityImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of PatchTournamentEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PatchTournamentEntityImplCopyWith<_$PatchTournamentEntityImpl>
      get copyWith => __$$PatchTournamentEntityImplCopyWithImpl<
          _$PatchTournamentEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PatchTournamentEntityImplToJson(
      this,
    );
  }
}

abstract class _PatchTournamentEntity implements PatchTournamentEntity {
  const factory _PatchTournamentEntity({final String? message}) =
      _$PatchTournamentEntityImpl;

  factory _PatchTournamentEntity.fromJson(Map<String, dynamic> json) =
      _$PatchTournamentEntityImpl.fromJson;

  @override
  String? get message;

  /// Create a copy of PatchTournamentEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PatchTournamentEntityImplCopyWith<_$PatchTournamentEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
