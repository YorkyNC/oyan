// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'test_add_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TestAddEntity _$TestAddEntityFromJson(Map<String, dynamic> json) {
  return _TestAddEntity.fromJson(json);
}

/// @nodoc
mixin _$TestAddEntity {
  String? get message => throw _privateConstructorUsedError;

  /// Serializes this TestAddEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TestAddEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TestAddEntityCopyWith<TestAddEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TestAddEntityCopyWith<$Res> {
  factory $TestAddEntityCopyWith(
          TestAddEntity value, $Res Function(TestAddEntity) then) =
      _$TestAddEntityCopyWithImpl<$Res, TestAddEntity>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class _$TestAddEntityCopyWithImpl<$Res, $Val extends TestAddEntity>
    implements $TestAddEntityCopyWith<$Res> {
  _$TestAddEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TestAddEntity
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
abstract class _$$TestAddEntityImplCopyWith<$Res>
    implements $TestAddEntityCopyWith<$Res> {
  factory _$$TestAddEntityImplCopyWith(
          _$TestAddEntityImpl value, $Res Function(_$TestAddEntityImpl) then) =
      __$$TestAddEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$TestAddEntityImplCopyWithImpl<$Res>
    extends _$TestAddEntityCopyWithImpl<$Res, _$TestAddEntityImpl>
    implements _$$TestAddEntityImplCopyWith<$Res> {
  __$$TestAddEntityImplCopyWithImpl(
      _$TestAddEntityImpl _value, $Res Function(_$TestAddEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of TestAddEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$TestAddEntityImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TestAddEntityImpl implements _TestAddEntity {
  const _$TestAddEntityImpl({this.message});

  factory _$TestAddEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$TestAddEntityImplFromJson(json);

  @override
  final String? message;

  @override
  String toString() {
    return 'TestAddEntity(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TestAddEntityImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of TestAddEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TestAddEntityImplCopyWith<_$TestAddEntityImpl> get copyWith =>
      __$$TestAddEntityImplCopyWithImpl<_$TestAddEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TestAddEntityImplToJson(
      this,
    );
  }
}

abstract class _TestAddEntity implements TestAddEntity {
  const factory _TestAddEntity({final String? message}) = _$TestAddEntityImpl;

  factory _TestAddEntity.fromJson(Map<String, dynamic> json) =
      _$TestAddEntityImpl.fromJson;

  @override
  String? get message;

  /// Create a copy of TestAddEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TestAddEntityImplCopyWith<_$TestAddEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
