// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_profile_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetProfileEntity _$GetProfileEntityFromJson(Map<String, dynamic> json) {
  return _GetProfileEntity.fromJson(json);
}

/// @nodoc
mixin _$GetProfileEntity {
  String? get status => throw _privateConstructorUsedError;
  ProfileData? get data => throw _privateConstructorUsedError;

  /// Serializes this GetProfileEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetProfileEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetProfileEntityCopyWith<GetProfileEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetProfileEntityCopyWith<$Res> {
  factory $GetProfileEntityCopyWith(
          GetProfileEntity value, $Res Function(GetProfileEntity) then) =
      _$GetProfileEntityCopyWithImpl<$Res, GetProfileEntity>;
  @useResult
  $Res call({String? status, ProfileData? data});

  $ProfileDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$GetProfileEntityCopyWithImpl<$Res, $Val extends GetProfileEntity>
    implements $GetProfileEntityCopyWith<$Res> {
  _$GetProfileEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetProfileEntity
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
              as ProfileData?,
    ) as $Val);
  }

  /// Create a copy of GetProfileEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProfileDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $ProfileDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GetProfileEntityImplCopyWith<$Res>
    implements $GetProfileEntityCopyWith<$Res> {
  factory _$$GetProfileEntityImplCopyWith(_$GetProfileEntityImpl value,
          $Res Function(_$GetProfileEntityImpl) then) =
      __$$GetProfileEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? status, ProfileData? data});

  @override
  $ProfileDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetProfileEntityImplCopyWithImpl<$Res>
    extends _$GetProfileEntityCopyWithImpl<$Res, _$GetProfileEntityImpl>
    implements _$$GetProfileEntityImplCopyWith<$Res> {
  __$$GetProfileEntityImplCopyWithImpl(_$GetProfileEntityImpl _value,
      $Res Function(_$GetProfileEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetProfileEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? data = freezed,
  }) {
    return _then(_$GetProfileEntityImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ProfileData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetProfileEntityImpl implements _GetProfileEntity {
  const _$GetProfileEntityImpl({this.status, this.data});

  factory _$GetProfileEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetProfileEntityImplFromJson(json);

  @override
  final String? status;
  @override
  final ProfileData? data;

  @override
  String toString() {
    return 'GetProfileEntity(status: $status, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetProfileEntityImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, data);

  /// Create a copy of GetProfileEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetProfileEntityImplCopyWith<_$GetProfileEntityImpl> get copyWith =>
      __$$GetProfileEntityImplCopyWithImpl<_$GetProfileEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetProfileEntityImplToJson(
      this,
    );
  }
}

abstract class _GetProfileEntity implements GetProfileEntity {
  const factory _GetProfileEntity(
      {final String? status, final ProfileData? data}) = _$GetProfileEntityImpl;

  factory _GetProfileEntity.fromJson(Map<String, dynamic> json) =
      _$GetProfileEntityImpl.fromJson;

  @override
  String? get status;
  @override
  ProfileData? get data;

  /// Create a copy of GetProfileEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetProfileEntityImplCopyWith<_$GetProfileEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProfileData _$ProfileDataFromJson(Map<String, dynamic> json) {
  return _ProfileData.fromJson(json);
}

/// @nodoc
mixin _$ProfileData {
  String get username => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  int get avatar => throw _privateConstructorUsedError;
  String get dateOfBirth => throw _privateConstructorUsedError;
  String get bio => throw _privateConstructorUsedError;
  List<int> get preferredGenres => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;

  /// Serializes this ProfileData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProfileData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProfileDataCopyWith<ProfileData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileDataCopyWith<$Res> {
  factory $ProfileDataCopyWith(
          ProfileData value, $Res Function(ProfileData) then) =
      _$ProfileDataCopyWithImpl<$Res, ProfileData>;
  @useResult
  $Res call(
      {String username,
      String name,
      String email,
      int avatar,
      String dateOfBirth,
      String bio,
      List<int> preferredGenres,
      String createdAt});
}

/// @nodoc
class _$ProfileDataCopyWithImpl<$Res, $Val extends ProfileData>
    implements $ProfileDataCopyWith<$Res> {
  _$ProfileDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfileData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? name = null,
    Object? email = null,
    Object? avatar = null,
    Object? dateOfBirth = null,
    Object? bio = null,
    Object? preferredGenres = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: null == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as int,
      dateOfBirth: null == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as String,
      bio: null == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String,
      preferredGenres: null == preferredGenres
          ? _value.preferredGenres
          : preferredGenres // ignore: cast_nullable_to_non_nullable
              as List<int>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProfileDataImplCopyWith<$Res>
    implements $ProfileDataCopyWith<$Res> {
  factory _$$ProfileDataImplCopyWith(
          _$ProfileDataImpl value, $Res Function(_$ProfileDataImpl) then) =
      __$$ProfileDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String username,
      String name,
      String email,
      int avatar,
      String dateOfBirth,
      String bio,
      List<int> preferredGenres,
      String createdAt});
}

/// @nodoc
class __$$ProfileDataImplCopyWithImpl<$Res>
    extends _$ProfileDataCopyWithImpl<$Res, _$ProfileDataImpl>
    implements _$$ProfileDataImplCopyWith<$Res> {
  __$$ProfileDataImplCopyWithImpl(
      _$ProfileDataImpl _value, $Res Function(_$ProfileDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? name = null,
    Object? email = null,
    Object? avatar = null,
    Object? dateOfBirth = null,
    Object? bio = null,
    Object? preferredGenres = null,
    Object? createdAt = null,
  }) {
    return _then(_$ProfileDataImpl(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: null == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as int,
      dateOfBirth: null == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as String,
      bio: null == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String,
      preferredGenres: null == preferredGenres
          ? _value._preferredGenres
          : preferredGenres // ignore: cast_nullable_to_non_nullable
              as List<int>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProfileDataImpl implements _ProfileData {
  const _$ProfileDataImpl(
      {required this.username,
      required this.name,
      required this.email,
      required this.avatar,
      required this.dateOfBirth,
      required this.bio,
      required final List<int> preferredGenres,
      required this.createdAt})
      : _preferredGenres = preferredGenres;

  factory _$ProfileDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfileDataImplFromJson(json);

  @override
  final String username;
  @override
  final String name;
  @override
  final String email;
  @override
  final int avatar;
  @override
  final String dateOfBirth;
  @override
  final String bio;
  final List<int> _preferredGenres;
  @override
  List<int> get preferredGenres {
    if (_preferredGenres is EqualUnmodifiableListView) return _preferredGenres;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_preferredGenres);
  }

  @override
  final String createdAt;

  @override
  String toString() {
    return 'ProfileData(username: $username, name: $name, email: $email, avatar: $avatar, dateOfBirth: $dateOfBirth, bio: $bio, preferredGenres: $preferredGenres, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileDataImpl &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                other.dateOfBirth == dateOfBirth) &&
            (identical(other.bio, bio) || other.bio == bio) &&
            const DeepCollectionEquality()
                .equals(other._preferredGenres, _preferredGenres) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      username,
      name,
      email,
      avatar,
      dateOfBirth,
      bio,
      const DeepCollectionEquality().hash(_preferredGenres),
      createdAt);

  /// Create a copy of ProfileData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileDataImplCopyWith<_$ProfileDataImpl> get copyWith =>
      __$$ProfileDataImplCopyWithImpl<_$ProfileDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfileDataImplToJson(
      this,
    );
  }
}

abstract class _ProfileData implements ProfileData {
  const factory _ProfileData(
      {required final String username,
      required final String name,
      required final String email,
      required final int avatar,
      required final String dateOfBirth,
      required final String bio,
      required final List<int> preferredGenres,
      required final String createdAt}) = _$ProfileDataImpl;

  factory _ProfileData.fromJson(Map<String, dynamic> json) =
      _$ProfileDataImpl.fromJson;

  @override
  String get username;
  @override
  String get name;
  @override
  String get email;
  @override
  int get avatar;
  @override
  String get dateOfBirth;
  @override
  String get bio;
  @override
  List<int> get preferredGenres;
  @override
  String get createdAt;

  /// Create a copy of ProfileData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfileDataImplCopyWith<_$ProfileDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
