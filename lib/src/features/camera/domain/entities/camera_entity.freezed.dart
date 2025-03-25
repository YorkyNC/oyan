// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'camera_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CameraEntity {
  String get id => throw _privateConstructorUsedError;
  String get location => throw _privateConstructorUsedError;
  String get floor => throw _privateConstructorUsedError;
  String get event => throw _privateConstructorUsedError;
  int get cameraCount => throw _privateConstructorUsedError;

  /// Create a copy of CameraEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CameraEntityCopyWith<CameraEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CameraEntityCopyWith<$Res> {
  factory $CameraEntityCopyWith(
          CameraEntity value, $Res Function(CameraEntity) then) =
      _$CameraEntityCopyWithImpl<$Res, CameraEntity>;
  @useResult
  $Res call(
      {String id,
      String location,
      String floor,
      String event,
      int cameraCount});
}

/// @nodoc
class _$CameraEntityCopyWithImpl<$Res, $Val extends CameraEntity>
    implements $CameraEntityCopyWith<$Res> {
  _$CameraEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CameraEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? location = null,
    Object? floor = null,
    Object? event = null,
    Object? cameraCount = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      floor: null == floor
          ? _value.floor
          : floor // ignore: cast_nullable_to_non_nullable
              as String,
      event: null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as String,
      cameraCount: null == cameraCount
          ? _value.cameraCount
          : cameraCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CameraEntityImplCopyWith<$Res>
    implements $CameraEntityCopyWith<$Res> {
  factory _$$CameraEntityImplCopyWith(
          _$CameraEntityImpl value, $Res Function(_$CameraEntityImpl) then) =
      __$$CameraEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String location,
      String floor,
      String event,
      int cameraCount});
}

/// @nodoc
class __$$CameraEntityImplCopyWithImpl<$Res>
    extends _$CameraEntityCopyWithImpl<$Res, _$CameraEntityImpl>
    implements _$$CameraEntityImplCopyWith<$Res> {
  __$$CameraEntityImplCopyWithImpl(
      _$CameraEntityImpl _value, $Res Function(_$CameraEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of CameraEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? location = null,
    Object? floor = null,
    Object? event = null,
    Object? cameraCount = null,
  }) {
    return _then(_$CameraEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      floor: null == floor
          ? _value.floor
          : floor // ignore: cast_nullable_to_non_nullable
              as String,
      event: null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as String,
      cameraCount: null == cameraCount
          ? _value.cameraCount
          : cameraCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$CameraEntityImpl implements _CameraEntity {
  _$CameraEntityImpl(
      {required this.id,
      required this.location,
      required this.floor,
      required this.event,
      required this.cameraCount});

  @override
  final String id;
  @override
  final String location;
  @override
  final String floor;
  @override
  final String event;
  @override
  final int cameraCount;

  @override
  String toString() {
    return 'CameraEntity(id: $id, location: $location, floor: $floor, event: $event, cameraCount: $cameraCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CameraEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.floor, floor) || other.floor == floor) &&
            (identical(other.event, event) || other.event == event) &&
            (identical(other.cameraCount, cameraCount) ||
                other.cameraCount == cameraCount));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, location, floor, event, cameraCount);

  /// Create a copy of CameraEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CameraEntityImplCopyWith<_$CameraEntityImpl> get copyWith =>
      __$$CameraEntityImplCopyWithImpl<_$CameraEntityImpl>(this, _$identity);
}

abstract class _CameraEntity implements CameraEntity {
  factory _CameraEntity(
      {required final String id,
      required final String location,
      required final String floor,
      required final String event,
      required final int cameraCount}) = _$CameraEntityImpl;

  @override
  String get id;
  @override
  String get location;
  @override
  String get floor;
  @override
  String get event;
  @override
  int get cameraCount;

  /// Create a copy of CameraEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CameraEntityImplCopyWith<_$CameraEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
