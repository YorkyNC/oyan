// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_genre_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AddGenreEntity _$AddGenreEntityFromJson(Map<String, dynamic> json) {
  return _AddGenreEntity.fromJson(json);
}

/// @nodoc
mixin _$AddGenreEntity {
  String get status => throw _privateConstructorUsedError;

  /// Serializes this AddGenreEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AddGenreEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddGenreEntityCopyWith<AddGenreEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddGenreEntityCopyWith<$Res> {
  factory $AddGenreEntityCopyWith(
          AddGenreEntity value, $Res Function(AddGenreEntity) then) =
      _$AddGenreEntityCopyWithImpl<$Res, AddGenreEntity>;
  @useResult
  $Res call({String status});
}

/// @nodoc
class _$AddGenreEntityCopyWithImpl<$Res, $Val extends AddGenreEntity>
    implements $AddGenreEntityCopyWith<$Res> {
  _$AddGenreEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddGenreEntity
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
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddGenreEntityImplCopyWith<$Res>
    implements $AddGenreEntityCopyWith<$Res> {
  factory _$$AddGenreEntityImplCopyWith(_$AddGenreEntityImpl value,
          $Res Function(_$AddGenreEntityImpl) then) =
      __$$AddGenreEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String status});
}

/// @nodoc
class __$$AddGenreEntityImplCopyWithImpl<$Res>
    extends _$AddGenreEntityCopyWithImpl<$Res, _$AddGenreEntityImpl>
    implements _$$AddGenreEntityImplCopyWith<$Res> {
  __$$AddGenreEntityImplCopyWithImpl(
      _$AddGenreEntityImpl _value, $Res Function(_$AddGenreEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddGenreEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_$AddGenreEntityImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddGenreEntityImpl implements _AddGenreEntity {
  const _$AddGenreEntityImpl({required this.status});

  factory _$AddGenreEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddGenreEntityImplFromJson(json);

  @override
  final String status;

  @override
  String toString() {
    return 'AddGenreEntity(status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddGenreEntityImpl &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status);

  /// Create a copy of AddGenreEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddGenreEntityImplCopyWith<_$AddGenreEntityImpl> get copyWith =>
      __$$AddGenreEntityImplCopyWithImpl<_$AddGenreEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddGenreEntityImplToJson(
      this,
    );
  }
}

abstract class _AddGenreEntity implements AddGenreEntity {
  const factory _AddGenreEntity({required final String status}) =
      _$AddGenreEntityImpl;

  factory _AddGenreEntity.fromJson(Map<String, dynamic> json) =
      _$AddGenreEntityImpl.fromJson;

  @override
  String get status;

  /// Create a copy of AddGenreEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddGenreEntityImplCopyWith<_$AddGenreEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
