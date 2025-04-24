// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_book_by_id_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetBookByIdEntity _$GetBookByIdEntityFromJson(Map<String, dynamic> json) {
  return _GetBookByIdEntity.fromJson(json);
}

/// @nodoc
mixin _$GetBookByIdEntity {
  String? get status => throw _privateConstructorUsedError;
  Book? get data => throw _privateConstructorUsedError;

  /// Serializes this GetBookByIdEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetBookByIdEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetBookByIdEntityCopyWith<GetBookByIdEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetBookByIdEntityCopyWith<$Res> {
  factory $GetBookByIdEntityCopyWith(
          GetBookByIdEntity value, $Res Function(GetBookByIdEntity) then) =
      _$GetBookByIdEntityCopyWithImpl<$Res, GetBookByIdEntity>;
  @useResult
  $Res call({String? status, Book? data});

  $BookCopyWith<$Res>? get data;
}

/// @nodoc
class _$GetBookByIdEntityCopyWithImpl<$Res, $Val extends GetBookByIdEntity>
    implements $GetBookByIdEntityCopyWith<$Res> {
  _$GetBookByIdEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetBookByIdEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Book?,
    ) as $Val);
  }

  /// Create a copy of GetBookByIdEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BookCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $BookCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GetBookByIdEntityImplCopyWith<$Res>
    implements $GetBookByIdEntityCopyWith<$Res> {
  factory _$$GetBookByIdEntityImplCopyWith(_$GetBookByIdEntityImpl value,
          $Res Function(_$GetBookByIdEntityImpl) then) =
      __$$GetBookByIdEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? status, Book? data});

  @override
  $BookCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetBookByIdEntityImplCopyWithImpl<$Res>
    extends _$GetBookByIdEntityCopyWithImpl<$Res, _$GetBookByIdEntityImpl>
    implements _$$GetBookByIdEntityImplCopyWith<$Res> {
  __$$GetBookByIdEntityImplCopyWithImpl(_$GetBookByIdEntityImpl _value,
      $Res Function(_$GetBookByIdEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetBookByIdEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? data = freezed,
  }) {
    return _then(_$GetBookByIdEntityImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Book?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetBookByIdEntityImpl implements _GetBookByIdEntity {
  const _$GetBookByIdEntityImpl({this.status, this.data});

  factory _$GetBookByIdEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetBookByIdEntityImplFromJson(json);

  @override
  final String? status;
  @override
  final Book? data;

  @override
  String toString() {
    return 'GetBookByIdEntity(status: $status, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetBookByIdEntityImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, data);

  /// Create a copy of GetBookByIdEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetBookByIdEntityImplCopyWith<_$GetBookByIdEntityImpl> get copyWith =>
      __$$GetBookByIdEntityImplCopyWithImpl<_$GetBookByIdEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetBookByIdEntityImplToJson(
      this,
    );
  }
}

abstract class _GetBookByIdEntity implements GetBookByIdEntity {
  const factory _GetBookByIdEntity({final String? status, final Book? data}) =
      _$GetBookByIdEntityImpl;

  factory _GetBookByIdEntity.fromJson(Map<String, dynamic> json) =
      _$GetBookByIdEntityImpl.fromJson;

  @override
  String? get status;
  @override
  Book? get data;

  /// Create a copy of GetBookByIdEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetBookByIdEntityImplCopyWith<_$GetBookByIdEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
