// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'feed_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FeedEntity _$FeedEntityFromJson(Map<String, dynamic> json) {
  return _FeedEntity.fromJson(json);
}

/// @nodoc
mixin _$FeedEntity {
  String get feedType => throw _privateConstructorUsedError;
  String get referenceId => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;

  /// Serializes this FeedEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FeedEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FeedEntityCopyWith<FeedEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedEntityCopyWith<$Res> {
  factory $FeedEntityCopyWith(
          FeedEntity value, $Res Function(FeedEntity) then) =
      _$FeedEntityCopyWithImpl<$Res, FeedEntity>;
  @useResult
  $Res call({String feedType, String referenceId, String id});
}

/// @nodoc
class _$FeedEntityCopyWithImpl<$Res, $Val extends FeedEntity>
    implements $FeedEntityCopyWith<$Res> {
  _$FeedEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FeedEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? feedType = null,
    Object? referenceId = null,
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      feedType: null == feedType
          ? _value.feedType
          : feedType // ignore: cast_nullable_to_non_nullable
              as String,
      referenceId: null == referenceId
          ? _value.referenceId
          : referenceId // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FeedEntityImplCopyWith<$Res>
    implements $FeedEntityCopyWith<$Res> {
  factory _$$FeedEntityImplCopyWith(
          _$FeedEntityImpl value, $Res Function(_$FeedEntityImpl) then) =
      __$$FeedEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String feedType, String referenceId, String id});
}

/// @nodoc
class __$$FeedEntityImplCopyWithImpl<$Res>
    extends _$FeedEntityCopyWithImpl<$Res, _$FeedEntityImpl>
    implements _$$FeedEntityImplCopyWith<$Res> {
  __$$FeedEntityImplCopyWithImpl(
      _$FeedEntityImpl _value, $Res Function(_$FeedEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of FeedEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? feedType = null,
    Object? referenceId = null,
    Object? id = null,
  }) {
    return _then(_$FeedEntityImpl(
      feedType: null == feedType
          ? _value.feedType
          : feedType // ignore: cast_nullable_to_non_nullable
              as String,
      referenceId: null == referenceId
          ? _value.referenceId
          : referenceId // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FeedEntityImpl implements _FeedEntity {
  const _$FeedEntityImpl(
      {required this.feedType, required this.referenceId, required this.id});

  factory _$FeedEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$FeedEntityImplFromJson(json);

  @override
  final String feedType;
  @override
  final String referenceId;
  @override
  final String id;

  @override
  String toString() {
    return 'FeedEntity(feedType: $feedType, referenceId: $referenceId, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeedEntityImpl &&
            (identical(other.feedType, feedType) ||
                other.feedType == feedType) &&
            (identical(other.referenceId, referenceId) ||
                other.referenceId == referenceId) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, feedType, referenceId, id);

  /// Create a copy of FeedEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FeedEntityImplCopyWith<_$FeedEntityImpl> get copyWith =>
      __$$FeedEntityImplCopyWithImpl<_$FeedEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FeedEntityImplToJson(
      this,
    );
  }
}

abstract class _FeedEntity implements FeedEntity {
  const factory _FeedEntity(
      {required final String feedType,
      required final String referenceId,
      required final String id}) = _$FeedEntityImpl;

  factory _FeedEntity.fromJson(Map<String, dynamic> json) =
      _$FeedEntityImpl.fromJson;

  @override
  String get feedType;
  @override
  String get referenceId;
  @override
  String get id;

  /// Create a copy of FeedEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FeedEntityImplCopyWith<_$FeedEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
