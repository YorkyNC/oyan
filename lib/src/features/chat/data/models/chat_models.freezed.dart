// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChatResponse _$ChatResponseFromJson(Map<String, dynamic> json) {
  return _ChatResponse.fromJson(json);
}

/// @nodoc
mixin _$ChatResponse {
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get chatId => throw _privateConstructorUsedError;
  String get schoolId => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  ProfilePicture? get profilePictureId => throw _privateConstructorUsedError;
  List<ChatMember> get members => throw _privateConstructorUsedError;
  String? get classId => throw _privateConstructorUsedError;

  /// Serializes this ChatResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChatResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatResponseCopyWith<ChatResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatResponseCopyWith<$Res> {
  factory $ChatResponseCopyWith(
          ChatResponse value, $Res Function(ChatResponse) then) =
      _$ChatResponseCopyWithImpl<$Res, ChatResponse>;
  @useResult
  $Res call(
      {String title,
      String description,
      String type,
      String chatId,
      String schoolId,
      DateTime createdAt,
      ProfilePicture? profilePictureId,
      List<ChatMember> members,
      String? classId});

  $ProfilePictureCopyWith<$Res>? get profilePictureId;
}

/// @nodoc
class _$ChatResponseCopyWithImpl<$Res, $Val extends ChatResponse>
    implements $ChatResponseCopyWith<$Res> {
  _$ChatResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? type = null,
    Object? chatId = null,
    Object? schoolId = null,
    Object? createdAt = null,
    Object? profilePictureId = freezed,
    Object? members = null,
    Object? classId = freezed,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      chatId: null == chatId
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as String,
      schoolId: null == schoolId
          ? _value.schoolId
          : schoolId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      profilePictureId: freezed == profilePictureId
          ? _value.profilePictureId
          : profilePictureId // ignore: cast_nullable_to_non_nullable
              as ProfilePicture?,
      members: null == members
          ? _value.members
          : members // ignore: cast_nullable_to_non_nullable
              as List<ChatMember>,
      classId: freezed == classId
          ? _value.classId
          : classId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of ChatResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProfilePictureCopyWith<$Res>? get profilePictureId {
    if (_value.profilePictureId == null) {
      return null;
    }

    return $ProfilePictureCopyWith<$Res>(_value.profilePictureId!, (value) {
      return _then(_value.copyWith(profilePictureId: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ChatResponseImplCopyWith<$Res>
    implements $ChatResponseCopyWith<$Res> {
  factory _$$ChatResponseImplCopyWith(
          _$ChatResponseImpl value, $Res Function(_$ChatResponseImpl) then) =
      __$$ChatResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String description,
      String type,
      String chatId,
      String schoolId,
      DateTime createdAt,
      ProfilePicture? profilePictureId,
      List<ChatMember> members,
      String? classId});

  @override
  $ProfilePictureCopyWith<$Res>? get profilePictureId;
}

/// @nodoc
class __$$ChatResponseImplCopyWithImpl<$Res>
    extends _$ChatResponseCopyWithImpl<$Res, _$ChatResponseImpl>
    implements _$$ChatResponseImplCopyWith<$Res> {
  __$$ChatResponseImplCopyWithImpl(
      _$ChatResponseImpl _value, $Res Function(_$ChatResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? type = null,
    Object? chatId = null,
    Object? schoolId = null,
    Object? createdAt = null,
    Object? profilePictureId = freezed,
    Object? members = null,
    Object? classId = freezed,
  }) {
    return _then(_$ChatResponseImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      chatId: null == chatId
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as String,
      schoolId: null == schoolId
          ? _value.schoolId
          : schoolId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      profilePictureId: freezed == profilePictureId
          ? _value.profilePictureId
          : profilePictureId // ignore: cast_nullable_to_non_nullable
              as ProfilePicture?,
      members: null == members
          ? _value._members
          : members // ignore: cast_nullable_to_non_nullable
              as List<ChatMember>,
      classId: freezed == classId
          ? _value.classId
          : classId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatResponseImpl implements _ChatResponse {
  const _$ChatResponseImpl(
      {required this.title,
      required this.description,
      required this.type,
      required this.chatId,
      required this.schoolId,
      required this.createdAt,
      this.profilePictureId,
      required final List<ChatMember> members,
      this.classId})
      : _members = members;

  factory _$ChatResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatResponseImplFromJson(json);

  @override
  final String title;
  @override
  final String description;
  @override
  final String type;
  @override
  final String chatId;
  @override
  final String schoolId;
  @override
  final DateTime createdAt;
  @override
  final ProfilePicture? profilePictureId;
  final List<ChatMember> _members;
  @override
  List<ChatMember> get members {
    if (_members is EqualUnmodifiableListView) return _members;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_members);
  }

  @override
  final String? classId;

  @override
  String toString() {
    return 'ChatResponse(title: $title, description: $description, type: $type, chatId: $chatId, schoolId: $schoolId, createdAt: $createdAt, profilePictureId: $profilePictureId, members: $members, classId: $classId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatResponseImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.chatId, chatId) || other.chatId == chatId) &&
            (identical(other.schoolId, schoolId) ||
                other.schoolId == schoolId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.profilePictureId, profilePictureId) ||
                other.profilePictureId == profilePictureId) &&
            const DeepCollectionEquality().equals(other._members, _members) &&
            (identical(other.classId, classId) || other.classId == classId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      title,
      description,
      type,
      chatId,
      schoolId,
      createdAt,
      profilePictureId,
      const DeepCollectionEquality().hash(_members),
      classId);

  /// Create a copy of ChatResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatResponseImplCopyWith<_$ChatResponseImpl> get copyWith =>
      __$$ChatResponseImplCopyWithImpl<_$ChatResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatResponseImplToJson(
      this,
    );
  }
}

abstract class _ChatResponse implements ChatResponse {
  const factory _ChatResponse(
      {required final String title,
      required final String description,
      required final String type,
      required final String chatId,
      required final String schoolId,
      required final DateTime createdAt,
      final ProfilePicture? profilePictureId,
      required final List<ChatMember> members,
      final String? classId}) = _$ChatResponseImpl;

  factory _ChatResponse.fromJson(Map<String, dynamic> json) =
      _$ChatResponseImpl.fromJson;

  @override
  String get title;
  @override
  String get description;
  @override
  String get type;
  @override
  String get chatId;
  @override
  String get schoolId;
  @override
  DateTime get createdAt;
  @override
  ProfilePicture? get profilePictureId;
  @override
  List<ChatMember> get members;
  @override
  String? get classId;

  /// Create a copy of ChatResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatResponseImplCopyWith<_$ChatResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProfilePicture _$ProfilePictureFromJson(Map<String, dynamic> json) {
  return _ProfilePicture.fromJson(json);
}

/// @nodoc
mixin _$ProfilePicture {
  String get id => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  String get fileName => throw _privateConstructorUsedError;
  int get fileSizeInBytes => throw _privateConstructorUsedError;
  String get contentType => throw _privateConstructorUsedError;

  /// Serializes this ProfilePicture to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProfilePicture
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProfilePictureCopyWith<ProfilePicture> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfilePictureCopyWith<$Res> {
  factory $ProfilePictureCopyWith(
          ProfilePicture value, $Res Function(ProfilePicture) then) =
      _$ProfilePictureCopyWithImpl<$Res, ProfilePicture>;
  @useResult
  $Res call(
      {String id,
      String url,
      String fileName,
      int fileSizeInBytes,
      String contentType});
}

/// @nodoc
class _$ProfilePictureCopyWithImpl<$Res, $Val extends ProfilePicture>
    implements $ProfilePictureCopyWith<$Res> {
  _$ProfilePictureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfilePicture
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? url = null,
    Object? fileName = null,
    Object? fileSizeInBytes = null,
    Object? contentType = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      fileName: null == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
      fileSizeInBytes: null == fileSizeInBytes
          ? _value.fileSizeInBytes
          : fileSizeInBytes // ignore: cast_nullable_to_non_nullable
              as int,
      contentType: null == contentType
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProfilePictureImplCopyWith<$Res>
    implements $ProfilePictureCopyWith<$Res> {
  factory _$$ProfilePictureImplCopyWith(_$ProfilePictureImpl value,
          $Res Function(_$ProfilePictureImpl) then) =
      __$$ProfilePictureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String url,
      String fileName,
      int fileSizeInBytes,
      String contentType});
}

/// @nodoc
class __$$ProfilePictureImplCopyWithImpl<$Res>
    extends _$ProfilePictureCopyWithImpl<$Res, _$ProfilePictureImpl>
    implements _$$ProfilePictureImplCopyWith<$Res> {
  __$$ProfilePictureImplCopyWithImpl(
      _$ProfilePictureImpl _value, $Res Function(_$ProfilePictureImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfilePicture
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? url = null,
    Object? fileName = null,
    Object? fileSizeInBytes = null,
    Object? contentType = null,
  }) {
    return _then(_$ProfilePictureImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      fileName: null == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
      fileSizeInBytes: null == fileSizeInBytes
          ? _value.fileSizeInBytes
          : fileSizeInBytes // ignore: cast_nullable_to_non_nullable
              as int,
      contentType: null == contentType
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProfilePictureImpl implements _ProfilePicture {
  const _$ProfilePictureImpl(
      {required this.id,
      required this.url,
      required this.fileName,
      required this.fileSizeInBytes,
      required this.contentType});

  factory _$ProfilePictureImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfilePictureImplFromJson(json);

  @override
  final String id;
  @override
  final String url;
  @override
  final String fileName;
  @override
  final int fileSizeInBytes;
  @override
  final String contentType;

  @override
  String toString() {
    return 'ProfilePicture(id: $id, url: $url, fileName: $fileName, fileSizeInBytes: $fileSizeInBytes, contentType: $contentType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfilePictureImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.fileName, fileName) ||
                other.fileName == fileName) &&
            (identical(other.fileSizeInBytes, fileSizeInBytes) ||
                other.fileSizeInBytes == fileSizeInBytes) &&
            (identical(other.contentType, contentType) ||
                other.contentType == contentType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, url, fileName, fileSizeInBytes, contentType);

  /// Create a copy of ProfilePicture
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfilePictureImplCopyWith<_$ProfilePictureImpl> get copyWith =>
      __$$ProfilePictureImplCopyWithImpl<_$ProfilePictureImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfilePictureImplToJson(
      this,
    );
  }
}

abstract class _ProfilePicture implements ProfilePicture {
  const factory _ProfilePicture(
      {required final String id,
      required final String url,
      required final String fileName,
      required final int fileSizeInBytes,
      required final String contentType}) = _$ProfilePictureImpl;

  factory _ProfilePicture.fromJson(Map<String, dynamic> json) =
      _$ProfilePictureImpl.fromJson;

  @override
  String get id;
  @override
  String get url;
  @override
  String get fileName;
  @override
  int get fileSizeInBytes;
  @override
  String get contentType;

  /// Create a copy of ProfilePicture
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfilePictureImplCopyWith<_$ProfilePictureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ChatMember _$ChatMemberFromJson(Map<String, dynamic> json) {
  return _ChatMember.fromJson(json);
}

/// @nodoc
mixin _$ChatMember {
  String get userId => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  List<ChatRole> get roles => throw _privateConstructorUsedError;

  /// Serializes this ChatMember to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChatMember
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatMemberCopyWith<ChatMember> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatMemberCopyWith<$Res> {
  factory $ChatMemberCopyWith(
          ChatMember value, $Res Function(ChatMember) then) =
      _$ChatMemberCopyWithImpl<$Res, ChatMember>;
  @useResult
  $Res call(
      {String userId, String firstName, String lastName, List<ChatRole> roles});
}

/// @nodoc
class _$ChatMemberCopyWithImpl<$Res, $Val extends ChatMember>
    implements $ChatMemberCopyWith<$Res> {
  _$ChatMemberCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatMember
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? roles = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      roles: null == roles
          ? _value.roles
          : roles // ignore: cast_nullable_to_non_nullable
              as List<ChatRole>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChatMemberImplCopyWith<$Res>
    implements $ChatMemberCopyWith<$Res> {
  factory _$$ChatMemberImplCopyWith(
          _$ChatMemberImpl value, $Res Function(_$ChatMemberImpl) then) =
      __$$ChatMemberImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String userId, String firstName, String lastName, List<ChatRole> roles});
}

/// @nodoc
class __$$ChatMemberImplCopyWithImpl<$Res>
    extends _$ChatMemberCopyWithImpl<$Res, _$ChatMemberImpl>
    implements _$$ChatMemberImplCopyWith<$Res> {
  __$$ChatMemberImplCopyWithImpl(
      _$ChatMemberImpl _value, $Res Function(_$ChatMemberImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatMember
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? roles = null,
  }) {
    return _then(_$ChatMemberImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      roles: null == roles
          ? _value._roles
          : roles // ignore: cast_nullable_to_non_nullable
              as List<ChatRole>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatMemberImpl implements _ChatMember {
  const _$ChatMemberImpl(
      {required this.userId,
      required this.firstName,
      required this.lastName,
      required final List<ChatRole> roles})
      : _roles = roles;

  factory _$ChatMemberImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatMemberImplFromJson(json);

  @override
  final String userId;
  @override
  final String firstName;
  @override
  final String lastName;
  final List<ChatRole> _roles;
  @override
  List<ChatRole> get roles {
    if (_roles is EqualUnmodifiableListView) return _roles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_roles);
  }

  @override
  String toString() {
    return 'ChatMember(userId: $userId, firstName: $firstName, lastName: $lastName, roles: $roles)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatMemberImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            const DeepCollectionEquality().equals(other._roles, _roles));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, userId, firstName, lastName,
      const DeepCollectionEquality().hash(_roles));

  /// Create a copy of ChatMember
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatMemberImplCopyWith<_$ChatMemberImpl> get copyWith =>
      __$$ChatMemberImplCopyWithImpl<_$ChatMemberImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatMemberImplToJson(
      this,
    );
  }
}

abstract class _ChatMember implements ChatMember {
  const factory _ChatMember(
      {required final String userId,
      required final String firstName,
      required final String lastName,
      required final List<ChatRole> roles}) = _$ChatMemberImpl;

  factory _ChatMember.fromJson(Map<String, dynamic> json) =
      _$ChatMemberImpl.fromJson;

  @override
  String get userId;
  @override
  String get firstName;
  @override
  String get lastName;
  @override
  List<ChatRole> get roles;

  /// Create a copy of ChatMember
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatMemberImplCopyWith<_$ChatMemberImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ChatRole _$ChatRoleFromJson(Map<String, dynamic> json) {
  return _ChatRole.fromJson(json);
}

/// @nodoc
mixin _$ChatRole {
  String get role => throw _privateConstructorUsedError;
  String? get studentId => throw _privateConstructorUsedError;
  String? get studentFirstName => throw _privateConstructorUsedError;
  String? get studentLastName => throw _privateConstructorUsedError;

  /// Serializes this ChatRole to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChatRole
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatRoleCopyWith<ChatRole> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatRoleCopyWith<$Res> {
  factory $ChatRoleCopyWith(ChatRole value, $Res Function(ChatRole) then) =
      _$ChatRoleCopyWithImpl<$Res, ChatRole>;
  @useResult
  $Res call(
      {String role,
      String? studentId,
      String? studentFirstName,
      String? studentLastName});
}

/// @nodoc
class _$ChatRoleCopyWithImpl<$Res, $Val extends ChatRole>
    implements $ChatRoleCopyWith<$Res> {
  _$ChatRoleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatRole
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? role = null,
    Object? studentId = freezed,
    Object? studentFirstName = freezed,
    Object? studentLastName = freezed,
  }) {
    return _then(_value.copyWith(
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      studentId: freezed == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as String?,
      studentFirstName: freezed == studentFirstName
          ? _value.studentFirstName
          : studentFirstName // ignore: cast_nullable_to_non_nullable
              as String?,
      studentLastName: freezed == studentLastName
          ? _value.studentLastName
          : studentLastName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChatRoleImplCopyWith<$Res>
    implements $ChatRoleCopyWith<$Res> {
  factory _$$ChatRoleImplCopyWith(
          _$ChatRoleImpl value, $Res Function(_$ChatRoleImpl) then) =
      __$$ChatRoleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String role,
      String? studentId,
      String? studentFirstName,
      String? studentLastName});
}

/// @nodoc
class __$$ChatRoleImplCopyWithImpl<$Res>
    extends _$ChatRoleCopyWithImpl<$Res, _$ChatRoleImpl>
    implements _$$ChatRoleImplCopyWith<$Res> {
  __$$ChatRoleImplCopyWithImpl(
      _$ChatRoleImpl _value, $Res Function(_$ChatRoleImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatRole
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? role = null,
    Object? studentId = freezed,
    Object? studentFirstName = freezed,
    Object? studentLastName = freezed,
  }) {
    return _then(_$ChatRoleImpl(
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      studentId: freezed == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as String?,
      studentFirstName: freezed == studentFirstName
          ? _value.studentFirstName
          : studentFirstName // ignore: cast_nullable_to_non_nullable
              as String?,
      studentLastName: freezed == studentLastName
          ? _value.studentLastName
          : studentLastName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatRoleImpl implements _ChatRole {
  const _$ChatRoleImpl(
      {required this.role,
      this.studentId,
      this.studentFirstName,
      this.studentLastName});

  factory _$ChatRoleImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatRoleImplFromJson(json);

  @override
  final String role;
  @override
  final String? studentId;
  @override
  final String? studentFirstName;
  @override
  final String? studentLastName;

  @override
  String toString() {
    return 'ChatRole(role: $role, studentId: $studentId, studentFirstName: $studentFirstName, studentLastName: $studentLastName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatRoleImpl &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.studentId, studentId) ||
                other.studentId == studentId) &&
            (identical(other.studentFirstName, studentFirstName) ||
                other.studentFirstName == studentFirstName) &&
            (identical(other.studentLastName, studentLastName) ||
                other.studentLastName == studentLastName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, role, studentId, studentFirstName, studentLastName);

  /// Create a copy of ChatRole
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatRoleImplCopyWith<_$ChatRoleImpl> get copyWith =>
      __$$ChatRoleImplCopyWithImpl<_$ChatRoleImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatRoleImplToJson(
      this,
    );
  }
}

abstract class _ChatRole implements ChatRole {
  const factory _ChatRole(
      {required final String role,
      final String? studentId,
      final String? studentFirstName,
      final String? studentLastName}) = _$ChatRoleImpl;

  factory _ChatRole.fromJson(Map<String, dynamic> json) =
      _$ChatRoleImpl.fromJson;

  @override
  String get role;
  @override
  String? get studentId;
  @override
  String? get studentFirstName;
  @override
  String? get studentLastName;

  /// Create a copy of ChatRole
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatRoleImplCopyWith<_$ChatRoleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GetChatsParams {
  String get schoolId => throw _privateConstructorUsedError;
  String get role => throw _privateConstructorUsedError;
  String? get childId => throw _privateConstructorUsedError;
  int? get limit => throw _privateConstructorUsedError;
  int? get offset => throw _privateConstructorUsedError;

  /// Create a copy of GetChatsParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetChatsParamsCopyWith<GetChatsParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetChatsParamsCopyWith<$Res> {
  factory $GetChatsParamsCopyWith(
          GetChatsParams value, $Res Function(GetChatsParams) then) =
      _$GetChatsParamsCopyWithImpl<$Res, GetChatsParams>;
  @useResult
  $Res call(
      {String schoolId, String role, String? childId, int? limit, int? offset});
}

/// @nodoc
class _$GetChatsParamsCopyWithImpl<$Res, $Val extends GetChatsParams>
    implements $GetChatsParamsCopyWith<$Res> {
  _$GetChatsParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetChatsParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? schoolId = null,
    Object? role = null,
    Object? childId = freezed,
    Object? limit = freezed,
    Object? offset = freezed,
  }) {
    return _then(_value.copyWith(
      schoolId: null == schoolId
          ? _value.schoolId
          : schoolId // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      childId: freezed == childId
          ? _value.childId
          : childId // ignore: cast_nullable_to_non_nullable
              as String?,
      limit: freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
      offset: freezed == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetChatsParamsImplCopyWith<$Res>
    implements $GetChatsParamsCopyWith<$Res> {
  factory _$$GetChatsParamsImplCopyWith(_$GetChatsParamsImpl value,
          $Res Function(_$GetChatsParamsImpl) then) =
      __$$GetChatsParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String schoolId, String role, String? childId, int? limit, int? offset});
}

/// @nodoc
class __$$GetChatsParamsImplCopyWithImpl<$Res>
    extends _$GetChatsParamsCopyWithImpl<$Res, _$GetChatsParamsImpl>
    implements _$$GetChatsParamsImplCopyWith<$Res> {
  __$$GetChatsParamsImplCopyWithImpl(
      _$GetChatsParamsImpl _value, $Res Function(_$GetChatsParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetChatsParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? schoolId = null,
    Object? role = null,
    Object? childId = freezed,
    Object? limit = freezed,
    Object? offset = freezed,
  }) {
    return _then(_$GetChatsParamsImpl(
      schoolId: null == schoolId
          ? _value.schoolId
          : schoolId // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      childId: freezed == childId
          ? _value.childId
          : childId // ignore: cast_nullable_to_non_nullable
              as String?,
      limit: freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
      offset: freezed == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$GetChatsParamsImpl implements _GetChatsParams {
  const _$GetChatsParamsImpl(
      {required this.schoolId,
      required this.role,
      this.childId,
      this.limit,
      this.offset});

  @override
  final String schoolId;
  @override
  final String role;
  @override
  final String? childId;
  @override
  final int? limit;
  @override
  final int? offset;

  @override
  String toString() {
    return 'GetChatsParams(schoolId: $schoolId, role: $role, childId: $childId, limit: $limit, offset: $offset)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetChatsParamsImpl &&
            (identical(other.schoolId, schoolId) ||
                other.schoolId == schoolId) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.childId, childId) || other.childId == childId) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.offset, offset) || other.offset == offset));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, schoolId, role, childId, limit, offset);

  /// Create a copy of GetChatsParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetChatsParamsImplCopyWith<_$GetChatsParamsImpl> get copyWith =>
      __$$GetChatsParamsImplCopyWithImpl<_$GetChatsParamsImpl>(
          this, _$identity);
}

abstract class _GetChatsParams implements GetChatsParams {
  const factory _GetChatsParams(
      {required final String schoolId,
      required final String role,
      final String? childId,
      final int? limit,
      final int? offset}) = _$GetChatsParamsImpl;

  @override
  String get schoolId;
  @override
  String get role;
  @override
  String? get childId;
  @override
  int? get limit;
  @override
  int? get offset;

  /// Create a copy of GetChatsParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetChatsParamsImplCopyWith<_$GetChatsParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Attachment _$AttachmentFromJson(Map<String, dynamic> json) {
  return _Attachment.fromJson(json);
}

/// @nodoc
mixin _$Attachment {
  String get id => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;

  /// Serializes this Attachment to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Attachment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AttachmentCopyWith<Attachment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttachmentCopyWith<$Res> {
  factory $AttachmentCopyWith(
          Attachment value, $Res Function(Attachment) then) =
      _$AttachmentCopyWithImpl<$Res, Attachment>;
  @useResult
  $Res call({String id, String type});
}

/// @nodoc
class _$AttachmentCopyWithImpl<$Res, $Val extends Attachment>
    implements $AttachmentCopyWith<$Res> {
  _$AttachmentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Attachment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AttachmentImplCopyWith<$Res>
    implements $AttachmentCopyWith<$Res> {
  factory _$$AttachmentImplCopyWith(
          _$AttachmentImpl value, $Res Function(_$AttachmentImpl) then) =
      __$$AttachmentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String type});
}

/// @nodoc
class __$$AttachmentImplCopyWithImpl<$Res>
    extends _$AttachmentCopyWithImpl<$Res, _$AttachmentImpl>
    implements _$$AttachmentImplCopyWith<$Res> {
  __$$AttachmentImplCopyWithImpl(
      _$AttachmentImpl _value, $Res Function(_$AttachmentImpl) _then)
      : super(_value, _then);

  /// Create a copy of Attachment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
  }) {
    return _then(_$AttachmentImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AttachmentImpl implements _Attachment {
  const _$AttachmentImpl({required this.id, required this.type});

  factory _$AttachmentImpl.fromJson(Map<String, dynamic> json) =>
      _$$AttachmentImplFromJson(json);

  @override
  final String id;
  @override
  final String type;

  @override
  String toString() {
    return 'Attachment(id: $id, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttachmentImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, type);

  /// Create a copy of Attachment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AttachmentImplCopyWith<_$AttachmentImpl> get copyWith =>
      __$$AttachmentImplCopyWithImpl<_$AttachmentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AttachmentImplToJson(
      this,
    );
  }
}

abstract class _Attachment implements Attachment {
  const factory _Attachment(
      {required final String id,
      required final String type}) = _$AttachmentImpl;

  factory _Attachment.fromJson(Map<String, dynamic> json) =
      _$AttachmentImpl.fromJson;

  @override
  String get id;
  @override
  String get type;

  /// Create a copy of Attachment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AttachmentImplCopyWith<_$AttachmentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Message _$MessageFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'originalUser':
      return OriginalUserMessage.fromJson(json);
    case 'originalChat':
      return OriginalChatMessage.fromJson(json);
    case 'forwardedUser':
      return ForwardedUserMessage.fromJson(json);
    case 'forwardedChat':
      return ForwardedChatMessage.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'Message',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$Message {
  String get id => throw _privateConstructorUsedError;
  String get authorId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            String authorId,
            String text,
            String? repliedMessageId,
            List<Attachment> attachments,
            String recipientId)
        originalUser,
    required TResult Function(
            String id,
            String authorId,
            String text,
            String? repliedMessageId,
            List<Attachment> attachments,
            String chatId)
        originalChat,
    required TResult Function(String id, String authorId,
            String forwardedMessageId, String recipientId)
        forwardedUser,
    required TResult Function(String id, String authorId,
            String forwardedMessageId, String chatId)
        forwardedChat,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String id,
            String authorId,
            String text,
            String? repliedMessageId,
            List<Attachment> attachments,
            String recipientId)?
        originalUser,
    TResult? Function(
            String id,
            String authorId,
            String text,
            String? repliedMessageId,
            List<Attachment> attachments,
            String chatId)?
        originalChat,
    TResult? Function(String id, String authorId, String forwardedMessageId,
            String recipientId)?
        forwardedUser,
    TResult? Function(String id, String authorId, String forwardedMessageId,
            String chatId)?
        forwardedChat,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String id,
            String authorId,
            String text,
            String? repliedMessageId,
            List<Attachment> attachments,
            String recipientId)?
        originalUser,
    TResult Function(
            String id,
            String authorId,
            String text,
            String? repliedMessageId,
            List<Attachment> attachments,
            String chatId)?
        originalChat,
    TResult Function(String id, String authorId, String forwardedMessageId,
            String recipientId)?
        forwardedUser,
    TResult Function(String id, String authorId, String forwardedMessageId,
            String chatId)?
        forwardedChat,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OriginalUserMessage value) originalUser,
    required TResult Function(OriginalChatMessage value) originalChat,
    required TResult Function(ForwardedUserMessage value) forwardedUser,
    required TResult Function(ForwardedChatMessage value) forwardedChat,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OriginalUserMessage value)? originalUser,
    TResult? Function(OriginalChatMessage value)? originalChat,
    TResult? Function(ForwardedUserMessage value)? forwardedUser,
    TResult? Function(ForwardedChatMessage value)? forwardedChat,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OriginalUserMessage value)? originalUser,
    TResult Function(OriginalChatMessage value)? originalChat,
    TResult Function(ForwardedUserMessage value)? forwardedUser,
    TResult Function(ForwardedChatMessage value)? forwardedChat,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this Message to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Message
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MessageCopyWith<Message> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageCopyWith<$Res> {
  factory $MessageCopyWith(Message value, $Res Function(Message) then) =
      _$MessageCopyWithImpl<$Res, Message>;
  @useResult
  $Res call({String id, String authorId});
}

/// @nodoc
class _$MessageCopyWithImpl<$Res, $Val extends Message>
    implements $MessageCopyWith<$Res> {
  _$MessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Message
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? authorId = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      authorId: null == authorId
          ? _value.authorId
          : authorId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OriginalUserMessageImplCopyWith<$Res>
    implements $MessageCopyWith<$Res> {
  factory _$$OriginalUserMessageImplCopyWith(_$OriginalUserMessageImpl value,
          $Res Function(_$OriginalUserMessageImpl) then) =
      __$$OriginalUserMessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String authorId,
      String text,
      String? repliedMessageId,
      List<Attachment> attachments,
      String recipientId});
}

/// @nodoc
class __$$OriginalUserMessageImplCopyWithImpl<$Res>
    extends _$MessageCopyWithImpl<$Res, _$OriginalUserMessageImpl>
    implements _$$OriginalUserMessageImplCopyWith<$Res> {
  __$$OriginalUserMessageImplCopyWithImpl(_$OriginalUserMessageImpl _value,
      $Res Function(_$OriginalUserMessageImpl) _then)
      : super(_value, _then);

  /// Create a copy of Message
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? authorId = null,
    Object? text = null,
    Object? repliedMessageId = freezed,
    Object? attachments = null,
    Object? recipientId = null,
  }) {
    return _then(_$OriginalUserMessageImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      authorId: null == authorId
          ? _value.authorId
          : authorId // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      repliedMessageId: freezed == repliedMessageId
          ? _value.repliedMessageId
          : repliedMessageId // ignore: cast_nullable_to_non_nullable
              as String?,
      attachments: null == attachments
          ? _value._attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as List<Attachment>,
      recipientId: null == recipientId
          ? _value.recipientId
          : recipientId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OriginalUserMessageImpl implements OriginalUserMessage {
  const _$OriginalUserMessageImpl(
      {required this.id,
      required this.authorId,
      required this.text,
      this.repliedMessageId,
      final List<Attachment> attachments = const [],
      required this.recipientId,
      final String? $type})
      : _attachments = attachments,
        $type = $type ?? 'originalUser';

  factory _$OriginalUserMessageImpl.fromJson(Map<String, dynamic> json) =>
      _$$OriginalUserMessageImplFromJson(json);

  @override
  final String id;
  @override
  final String authorId;
  @override
  final String text;
  @override
  final String? repliedMessageId;
  final List<Attachment> _attachments;
  @override
  @JsonKey()
  List<Attachment> get attachments {
    if (_attachments is EqualUnmodifiableListView) return _attachments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_attachments);
  }

  @override
  final String recipientId;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Message.originalUser(id: $id, authorId: $authorId, text: $text, repliedMessageId: $repliedMessageId, attachments: $attachments, recipientId: $recipientId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OriginalUserMessageImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.authorId, authorId) ||
                other.authorId == authorId) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.repliedMessageId, repliedMessageId) ||
                other.repliedMessageId == repliedMessageId) &&
            const DeepCollectionEquality()
                .equals(other._attachments, _attachments) &&
            (identical(other.recipientId, recipientId) ||
                other.recipientId == recipientId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      authorId,
      text,
      repliedMessageId,
      const DeepCollectionEquality().hash(_attachments),
      recipientId);

  /// Create a copy of Message
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OriginalUserMessageImplCopyWith<_$OriginalUserMessageImpl> get copyWith =>
      __$$OriginalUserMessageImplCopyWithImpl<_$OriginalUserMessageImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            String authorId,
            String text,
            String? repliedMessageId,
            List<Attachment> attachments,
            String recipientId)
        originalUser,
    required TResult Function(
            String id,
            String authorId,
            String text,
            String? repliedMessageId,
            List<Attachment> attachments,
            String chatId)
        originalChat,
    required TResult Function(String id, String authorId,
            String forwardedMessageId, String recipientId)
        forwardedUser,
    required TResult Function(String id, String authorId,
            String forwardedMessageId, String chatId)
        forwardedChat,
  }) {
    return originalUser(
        id, authorId, text, repliedMessageId, attachments, recipientId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String id,
            String authorId,
            String text,
            String? repliedMessageId,
            List<Attachment> attachments,
            String recipientId)?
        originalUser,
    TResult? Function(
            String id,
            String authorId,
            String text,
            String? repliedMessageId,
            List<Attachment> attachments,
            String chatId)?
        originalChat,
    TResult? Function(String id, String authorId, String forwardedMessageId,
            String recipientId)?
        forwardedUser,
    TResult? Function(String id, String authorId, String forwardedMessageId,
            String chatId)?
        forwardedChat,
  }) {
    return originalUser?.call(
        id, authorId, text, repliedMessageId, attachments, recipientId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String id,
            String authorId,
            String text,
            String? repliedMessageId,
            List<Attachment> attachments,
            String recipientId)?
        originalUser,
    TResult Function(
            String id,
            String authorId,
            String text,
            String? repliedMessageId,
            List<Attachment> attachments,
            String chatId)?
        originalChat,
    TResult Function(String id, String authorId, String forwardedMessageId,
            String recipientId)?
        forwardedUser,
    TResult Function(String id, String authorId, String forwardedMessageId,
            String chatId)?
        forwardedChat,
    required TResult orElse(),
  }) {
    if (originalUser != null) {
      return originalUser(
          id, authorId, text, repliedMessageId, attachments, recipientId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OriginalUserMessage value) originalUser,
    required TResult Function(OriginalChatMessage value) originalChat,
    required TResult Function(ForwardedUserMessage value) forwardedUser,
    required TResult Function(ForwardedChatMessage value) forwardedChat,
  }) {
    return originalUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OriginalUserMessage value)? originalUser,
    TResult? Function(OriginalChatMessage value)? originalChat,
    TResult? Function(ForwardedUserMessage value)? forwardedUser,
    TResult? Function(ForwardedChatMessage value)? forwardedChat,
  }) {
    return originalUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OriginalUserMessage value)? originalUser,
    TResult Function(OriginalChatMessage value)? originalChat,
    TResult Function(ForwardedUserMessage value)? forwardedUser,
    TResult Function(ForwardedChatMessage value)? forwardedChat,
    required TResult orElse(),
  }) {
    if (originalUser != null) {
      return originalUser(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$OriginalUserMessageImplToJson(
      this,
    );
  }
}

abstract class OriginalUserMessage implements Message {
  const factory OriginalUserMessage(
      {required final String id,
      required final String authorId,
      required final String text,
      final String? repliedMessageId,
      final List<Attachment> attachments,
      required final String recipientId}) = _$OriginalUserMessageImpl;

  factory OriginalUserMessage.fromJson(Map<String, dynamic> json) =
      _$OriginalUserMessageImpl.fromJson;

  @override
  String get id;
  @override
  String get authorId;
  String get text;
  String? get repliedMessageId;
  List<Attachment> get attachments;
  String get recipientId;

  /// Create a copy of Message
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OriginalUserMessageImplCopyWith<_$OriginalUserMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OriginalChatMessageImplCopyWith<$Res>
    implements $MessageCopyWith<$Res> {
  factory _$$OriginalChatMessageImplCopyWith(_$OriginalChatMessageImpl value,
          $Res Function(_$OriginalChatMessageImpl) then) =
      __$$OriginalChatMessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String authorId,
      String text,
      String? repliedMessageId,
      List<Attachment> attachments,
      String chatId});
}

/// @nodoc
class __$$OriginalChatMessageImplCopyWithImpl<$Res>
    extends _$MessageCopyWithImpl<$Res, _$OriginalChatMessageImpl>
    implements _$$OriginalChatMessageImplCopyWith<$Res> {
  __$$OriginalChatMessageImplCopyWithImpl(_$OriginalChatMessageImpl _value,
      $Res Function(_$OriginalChatMessageImpl) _then)
      : super(_value, _then);

  /// Create a copy of Message
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? authorId = null,
    Object? text = null,
    Object? repliedMessageId = freezed,
    Object? attachments = null,
    Object? chatId = null,
  }) {
    return _then(_$OriginalChatMessageImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      authorId: null == authorId
          ? _value.authorId
          : authorId // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      repliedMessageId: freezed == repliedMessageId
          ? _value.repliedMessageId
          : repliedMessageId // ignore: cast_nullable_to_non_nullable
              as String?,
      attachments: null == attachments
          ? _value._attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as List<Attachment>,
      chatId: null == chatId
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OriginalChatMessageImpl implements OriginalChatMessage {
  const _$OriginalChatMessageImpl(
      {required this.id,
      required this.authorId,
      required this.text,
      this.repliedMessageId,
      final List<Attachment> attachments = const [],
      required this.chatId,
      final String? $type})
      : _attachments = attachments,
        $type = $type ?? 'originalChat';

  factory _$OriginalChatMessageImpl.fromJson(Map<String, dynamic> json) =>
      _$$OriginalChatMessageImplFromJson(json);

  @override
  final String id;
  @override
  final String authorId;
  @override
  final String text;
  @override
  final String? repliedMessageId;
  final List<Attachment> _attachments;
  @override
  @JsonKey()
  List<Attachment> get attachments {
    if (_attachments is EqualUnmodifiableListView) return _attachments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_attachments);
  }

  @override
  final String chatId;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Message.originalChat(id: $id, authorId: $authorId, text: $text, repliedMessageId: $repliedMessageId, attachments: $attachments, chatId: $chatId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OriginalChatMessageImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.authorId, authorId) ||
                other.authorId == authorId) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.repliedMessageId, repliedMessageId) ||
                other.repliedMessageId == repliedMessageId) &&
            const DeepCollectionEquality()
                .equals(other._attachments, _attachments) &&
            (identical(other.chatId, chatId) || other.chatId == chatId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      authorId,
      text,
      repliedMessageId,
      const DeepCollectionEquality().hash(_attachments),
      chatId);

  /// Create a copy of Message
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OriginalChatMessageImplCopyWith<_$OriginalChatMessageImpl> get copyWith =>
      __$$OriginalChatMessageImplCopyWithImpl<_$OriginalChatMessageImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            String authorId,
            String text,
            String? repliedMessageId,
            List<Attachment> attachments,
            String recipientId)
        originalUser,
    required TResult Function(
            String id,
            String authorId,
            String text,
            String? repliedMessageId,
            List<Attachment> attachments,
            String chatId)
        originalChat,
    required TResult Function(String id, String authorId,
            String forwardedMessageId, String recipientId)
        forwardedUser,
    required TResult Function(String id, String authorId,
            String forwardedMessageId, String chatId)
        forwardedChat,
  }) {
    return originalChat(
        id, authorId, text, repliedMessageId, attachments, chatId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String id,
            String authorId,
            String text,
            String? repliedMessageId,
            List<Attachment> attachments,
            String recipientId)?
        originalUser,
    TResult? Function(
            String id,
            String authorId,
            String text,
            String? repliedMessageId,
            List<Attachment> attachments,
            String chatId)?
        originalChat,
    TResult? Function(String id, String authorId, String forwardedMessageId,
            String recipientId)?
        forwardedUser,
    TResult? Function(String id, String authorId, String forwardedMessageId,
            String chatId)?
        forwardedChat,
  }) {
    return originalChat?.call(
        id, authorId, text, repliedMessageId, attachments, chatId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String id,
            String authorId,
            String text,
            String? repliedMessageId,
            List<Attachment> attachments,
            String recipientId)?
        originalUser,
    TResult Function(
            String id,
            String authorId,
            String text,
            String? repliedMessageId,
            List<Attachment> attachments,
            String chatId)?
        originalChat,
    TResult Function(String id, String authorId, String forwardedMessageId,
            String recipientId)?
        forwardedUser,
    TResult Function(String id, String authorId, String forwardedMessageId,
            String chatId)?
        forwardedChat,
    required TResult orElse(),
  }) {
    if (originalChat != null) {
      return originalChat(
          id, authorId, text, repliedMessageId, attachments, chatId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OriginalUserMessage value) originalUser,
    required TResult Function(OriginalChatMessage value) originalChat,
    required TResult Function(ForwardedUserMessage value) forwardedUser,
    required TResult Function(ForwardedChatMessage value) forwardedChat,
  }) {
    return originalChat(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OriginalUserMessage value)? originalUser,
    TResult? Function(OriginalChatMessage value)? originalChat,
    TResult? Function(ForwardedUserMessage value)? forwardedUser,
    TResult? Function(ForwardedChatMessage value)? forwardedChat,
  }) {
    return originalChat?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OriginalUserMessage value)? originalUser,
    TResult Function(OriginalChatMessage value)? originalChat,
    TResult Function(ForwardedUserMessage value)? forwardedUser,
    TResult Function(ForwardedChatMessage value)? forwardedChat,
    required TResult orElse(),
  }) {
    if (originalChat != null) {
      return originalChat(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$OriginalChatMessageImplToJson(
      this,
    );
  }
}

abstract class OriginalChatMessage implements Message {
  const factory OriginalChatMessage(
      {required final String id,
      required final String authorId,
      required final String text,
      final String? repliedMessageId,
      final List<Attachment> attachments,
      required final String chatId}) = _$OriginalChatMessageImpl;

  factory OriginalChatMessage.fromJson(Map<String, dynamic> json) =
      _$OriginalChatMessageImpl.fromJson;

  @override
  String get id;
  @override
  String get authorId;
  String get text;
  String? get repliedMessageId;
  List<Attachment> get attachments;
  String get chatId;

  /// Create a copy of Message
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OriginalChatMessageImplCopyWith<_$OriginalChatMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ForwardedUserMessageImplCopyWith<$Res>
    implements $MessageCopyWith<$Res> {
  factory _$$ForwardedUserMessageImplCopyWith(_$ForwardedUserMessageImpl value,
          $Res Function(_$ForwardedUserMessageImpl) then) =
      __$$ForwardedUserMessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String authorId,
      String forwardedMessageId,
      String recipientId});
}

/// @nodoc
class __$$ForwardedUserMessageImplCopyWithImpl<$Res>
    extends _$MessageCopyWithImpl<$Res, _$ForwardedUserMessageImpl>
    implements _$$ForwardedUserMessageImplCopyWith<$Res> {
  __$$ForwardedUserMessageImplCopyWithImpl(_$ForwardedUserMessageImpl _value,
      $Res Function(_$ForwardedUserMessageImpl) _then)
      : super(_value, _then);

  /// Create a copy of Message
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? authorId = null,
    Object? forwardedMessageId = null,
    Object? recipientId = null,
  }) {
    return _then(_$ForwardedUserMessageImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      authorId: null == authorId
          ? _value.authorId
          : authorId // ignore: cast_nullable_to_non_nullable
              as String,
      forwardedMessageId: null == forwardedMessageId
          ? _value.forwardedMessageId
          : forwardedMessageId // ignore: cast_nullable_to_non_nullable
              as String,
      recipientId: null == recipientId
          ? _value.recipientId
          : recipientId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ForwardedUserMessageImpl implements ForwardedUserMessage {
  const _$ForwardedUserMessageImpl(
      {required this.id,
      required this.authorId,
      required this.forwardedMessageId,
      required this.recipientId,
      final String? $type})
      : $type = $type ?? 'forwardedUser';

  factory _$ForwardedUserMessageImpl.fromJson(Map<String, dynamic> json) =>
      _$$ForwardedUserMessageImplFromJson(json);

  @override
  final String id;
  @override
  final String authorId;
  @override
  final String forwardedMessageId;
  @override
  final String recipientId;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Message.forwardedUser(id: $id, authorId: $authorId, forwardedMessageId: $forwardedMessageId, recipientId: $recipientId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForwardedUserMessageImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.authorId, authorId) ||
                other.authorId == authorId) &&
            (identical(other.forwardedMessageId, forwardedMessageId) ||
                other.forwardedMessageId == forwardedMessageId) &&
            (identical(other.recipientId, recipientId) ||
                other.recipientId == recipientId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, authorId, forwardedMessageId, recipientId);

  /// Create a copy of Message
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ForwardedUserMessageImplCopyWith<_$ForwardedUserMessageImpl>
      get copyWith =>
          __$$ForwardedUserMessageImplCopyWithImpl<_$ForwardedUserMessageImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            String authorId,
            String text,
            String? repliedMessageId,
            List<Attachment> attachments,
            String recipientId)
        originalUser,
    required TResult Function(
            String id,
            String authorId,
            String text,
            String? repliedMessageId,
            List<Attachment> attachments,
            String chatId)
        originalChat,
    required TResult Function(String id, String authorId,
            String forwardedMessageId, String recipientId)
        forwardedUser,
    required TResult Function(String id, String authorId,
            String forwardedMessageId, String chatId)
        forwardedChat,
  }) {
    return forwardedUser(id, authorId, forwardedMessageId, recipientId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String id,
            String authorId,
            String text,
            String? repliedMessageId,
            List<Attachment> attachments,
            String recipientId)?
        originalUser,
    TResult? Function(
            String id,
            String authorId,
            String text,
            String? repliedMessageId,
            List<Attachment> attachments,
            String chatId)?
        originalChat,
    TResult? Function(String id, String authorId, String forwardedMessageId,
            String recipientId)?
        forwardedUser,
    TResult? Function(String id, String authorId, String forwardedMessageId,
            String chatId)?
        forwardedChat,
  }) {
    return forwardedUser?.call(id, authorId, forwardedMessageId, recipientId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String id,
            String authorId,
            String text,
            String? repliedMessageId,
            List<Attachment> attachments,
            String recipientId)?
        originalUser,
    TResult Function(
            String id,
            String authorId,
            String text,
            String? repliedMessageId,
            List<Attachment> attachments,
            String chatId)?
        originalChat,
    TResult Function(String id, String authorId, String forwardedMessageId,
            String recipientId)?
        forwardedUser,
    TResult Function(String id, String authorId, String forwardedMessageId,
            String chatId)?
        forwardedChat,
    required TResult orElse(),
  }) {
    if (forwardedUser != null) {
      return forwardedUser(id, authorId, forwardedMessageId, recipientId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OriginalUserMessage value) originalUser,
    required TResult Function(OriginalChatMessage value) originalChat,
    required TResult Function(ForwardedUserMessage value) forwardedUser,
    required TResult Function(ForwardedChatMessage value) forwardedChat,
  }) {
    return forwardedUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OriginalUserMessage value)? originalUser,
    TResult? Function(OriginalChatMessage value)? originalChat,
    TResult? Function(ForwardedUserMessage value)? forwardedUser,
    TResult? Function(ForwardedChatMessage value)? forwardedChat,
  }) {
    return forwardedUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OriginalUserMessage value)? originalUser,
    TResult Function(OriginalChatMessage value)? originalChat,
    TResult Function(ForwardedUserMessage value)? forwardedUser,
    TResult Function(ForwardedChatMessage value)? forwardedChat,
    required TResult orElse(),
  }) {
    if (forwardedUser != null) {
      return forwardedUser(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ForwardedUserMessageImplToJson(
      this,
    );
  }
}

abstract class ForwardedUserMessage implements Message {
  const factory ForwardedUserMessage(
      {required final String id,
      required final String authorId,
      required final String forwardedMessageId,
      required final String recipientId}) = _$ForwardedUserMessageImpl;

  factory ForwardedUserMessage.fromJson(Map<String, dynamic> json) =
      _$ForwardedUserMessageImpl.fromJson;

  @override
  String get id;
  @override
  String get authorId;
  String get forwardedMessageId;
  String get recipientId;

  /// Create a copy of Message
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ForwardedUserMessageImplCopyWith<_$ForwardedUserMessageImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ForwardedChatMessageImplCopyWith<$Res>
    implements $MessageCopyWith<$Res> {
  factory _$$ForwardedChatMessageImplCopyWith(_$ForwardedChatMessageImpl value,
          $Res Function(_$ForwardedChatMessageImpl) then) =
      __$$ForwardedChatMessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id, String authorId, String forwardedMessageId, String chatId});
}

/// @nodoc
class __$$ForwardedChatMessageImplCopyWithImpl<$Res>
    extends _$MessageCopyWithImpl<$Res, _$ForwardedChatMessageImpl>
    implements _$$ForwardedChatMessageImplCopyWith<$Res> {
  __$$ForwardedChatMessageImplCopyWithImpl(_$ForwardedChatMessageImpl _value,
      $Res Function(_$ForwardedChatMessageImpl) _then)
      : super(_value, _then);

  /// Create a copy of Message
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? authorId = null,
    Object? forwardedMessageId = null,
    Object? chatId = null,
  }) {
    return _then(_$ForwardedChatMessageImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      authorId: null == authorId
          ? _value.authorId
          : authorId // ignore: cast_nullable_to_non_nullable
              as String,
      forwardedMessageId: null == forwardedMessageId
          ? _value.forwardedMessageId
          : forwardedMessageId // ignore: cast_nullable_to_non_nullable
              as String,
      chatId: null == chatId
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ForwardedChatMessageImpl implements ForwardedChatMessage {
  const _$ForwardedChatMessageImpl(
      {required this.id,
      required this.authorId,
      required this.forwardedMessageId,
      required this.chatId,
      final String? $type})
      : $type = $type ?? 'forwardedChat';

  factory _$ForwardedChatMessageImpl.fromJson(Map<String, dynamic> json) =>
      _$$ForwardedChatMessageImplFromJson(json);

  @override
  final String id;
  @override
  final String authorId;
  @override
  final String forwardedMessageId;
  @override
  final String chatId;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Message.forwardedChat(id: $id, authorId: $authorId, forwardedMessageId: $forwardedMessageId, chatId: $chatId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForwardedChatMessageImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.authorId, authorId) ||
                other.authorId == authorId) &&
            (identical(other.forwardedMessageId, forwardedMessageId) ||
                other.forwardedMessageId == forwardedMessageId) &&
            (identical(other.chatId, chatId) || other.chatId == chatId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, authorId, forwardedMessageId, chatId);

  /// Create a copy of Message
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ForwardedChatMessageImplCopyWith<_$ForwardedChatMessageImpl>
      get copyWith =>
          __$$ForwardedChatMessageImplCopyWithImpl<_$ForwardedChatMessageImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            String authorId,
            String text,
            String? repliedMessageId,
            List<Attachment> attachments,
            String recipientId)
        originalUser,
    required TResult Function(
            String id,
            String authorId,
            String text,
            String? repliedMessageId,
            List<Attachment> attachments,
            String chatId)
        originalChat,
    required TResult Function(String id, String authorId,
            String forwardedMessageId, String recipientId)
        forwardedUser,
    required TResult Function(String id, String authorId,
            String forwardedMessageId, String chatId)
        forwardedChat,
  }) {
    return forwardedChat(id, authorId, forwardedMessageId, chatId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String id,
            String authorId,
            String text,
            String? repliedMessageId,
            List<Attachment> attachments,
            String recipientId)?
        originalUser,
    TResult? Function(
            String id,
            String authorId,
            String text,
            String? repliedMessageId,
            List<Attachment> attachments,
            String chatId)?
        originalChat,
    TResult? Function(String id, String authorId, String forwardedMessageId,
            String recipientId)?
        forwardedUser,
    TResult? Function(String id, String authorId, String forwardedMessageId,
            String chatId)?
        forwardedChat,
  }) {
    return forwardedChat?.call(id, authorId, forwardedMessageId, chatId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String id,
            String authorId,
            String text,
            String? repliedMessageId,
            List<Attachment> attachments,
            String recipientId)?
        originalUser,
    TResult Function(
            String id,
            String authorId,
            String text,
            String? repliedMessageId,
            List<Attachment> attachments,
            String chatId)?
        originalChat,
    TResult Function(String id, String authorId, String forwardedMessageId,
            String recipientId)?
        forwardedUser,
    TResult Function(String id, String authorId, String forwardedMessageId,
            String chatId)?
        forwardedChat,
    required TResult orElse(),
  }) {
    if (forwardedChat != null) {
      return forwardedChat(id, authorId, forwardedMessageId, chatId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OriginalUserMessage value) originalUser,
    required TResult Function(OriginalChatMessage value) originalChat,
    required TResult Function(ForwardedUserMessage value) forwardedUser,
    required TResult Function(ForwardedChatMessage value) forwardedChat,
  }) {
    return forwardedChat(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OriginalUserMessage value)? originalUser,
    TResult? Function(OriginalChatMessage value)? originalChat,
    TResult? Function(ForwardedUserMessage value)? forwardedUser,
    TResult? Function(ForwardedChatMessage value)? forwardedChat,
  }) {
    return forwardedChat?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OriginalUserMessage value)? originalUser,
    TResult Function(OriginalChatMessage value)? originalChat,
    TResult Function(ForwardedUserMessage value)? forwardedUser,
    TResult Function(ForwardedChatMessage value)? forwardedChat,
    required TResult orElse(),
  }) {
    if (forwardedChat != null) {
      return forwardedChat(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ForwardedChatMessageImplToJson(
      this,
    );
  }
}

abstract class ForwardedChatMessage implements Message {
  const factory ForwardedChatMessage(
      {required final String id,
      required final String authorId,
      required final String forwardedMessageId,
      required final String chatId}) = _$ForwardedChatMessageImpl;

  factory ForwardedChatMessage.fromJson(Map<String, dynamic> json) =
      _$ForwardedChatMessageImpl.fromJson;

  @override
  String get id;
  @override
  String get authorId;
  String get forwardedMessageId;
  String get chatId;

  /// Create a copy of Message
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ForwardedChatMessageImplCopyWith<_$ForwardedChatMessageImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ChatEvent _$ChatEventFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'messageSeen':
      return MessageSeenEvent.fromJson(json);
    case 'messageSent':
      return MessageSentEvent.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'ChatEvent',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$ChatEvent {
  String get type => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String type, String userId, String messageId)
        messageSeen,
    required TResult Function(String type, Message message) messageSent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String type, String userId, String messageId)?
        messageSeen,
    TResult? Function(String type, Message message)? messageSent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String type, String userId, String messageId)? messageSeen,
    TResult Function(String type, Message message)? messageSent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MessageSeenEvent value) messageSeen,
    required TResult Function(MessageSentEvent value) messageSent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MessageSeenEvent value)? messageSeen,
    TResult? Function(MessageSentEvent value)? messageSent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MessageSeenEvent value)? messageSeen,
    TResult Function(MessageSentEvent value)? messageSent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this ChatEvent to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatEventCopyWith<ChatEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatEventCopyWith<$Res> {
  factory $ChatEventCopyWith(ChatEvent value, $Res Function(ChatEvent) then) =
      _$ChatEventCopyWithImpl<$Res, ChatEvent>;
  @useResult
  $Res call({String type});
}

/// @nodoc
class _$ChatEventCopyWithImpl<$Res, $Val extends ChatEvent>
    implements $ChatEventCopyWith<$Res> {
  _$ChatEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MessageSeenEventImplCopyWith<$Res>
    implements $ChatEventCopyWith<$Res> {
  factory _$$MessageSeenEventImplCopyWith(_$MessageSeenEventImpl value,
          $Res Function(_$MessageSeenEventImpl) then) =
      __$$MessageSeenEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String type, String userId, String messageId});
}

/// @nodoc
class __$$MessageSeenEventImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$MessageSeenEventImpl>
    implements _$$MessageSeenEventImplCopyWith<$Res> {
  __$$MessageSeenEventImplCopyWithImpl(_$MessageSeenEventImpl _value,
      $Res Function(_$MessageSeenEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? userId = null,
    Object? messageId = null,
  }) {
    return _then(_$MessageSeenEventImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      messageId: null == messageId
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MessageSeenEventImpl implements MessageSeenEvent {
  const _$MessageSeenEventImpl(
      {required this.type,
      required this.userId,
      required this.messageId,
      final String? $type})
      : $type = $type ?? 'messageSeen';

  factory _$MessageSeenEventImpl.fromJson(Map<String, dynamic> json) =>
      _$$MessageSeenEventImplFromJson(json);

  @override
  final String type;
  @override
  final String userId;
  @override
  final String messageId;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ChatEvent.messageSeen(type: $type, userId: $userId, messageId: $messageId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageSeenEventImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.messageId, messageId) ||
                other.messageId == messageId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type, userId, messageId);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageSeenEventImplCopyWith<_$MessageSeenEventImpl> get copyWith =>
      __$$MessageSeenEventImplCopyWithImpl<_$MessageSeenEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String type, String userId, String messageId)
        messageSeen,
    required TResult Function(String type, Message message) messageSent,
  }) {
    return messageSeen(type, userId, messageId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String type, String userId, String messageId)?
        messageSeen,
    TResult? Function(String type, Message message)? messageSent,
  }) {
    return messageSeen?.call(type, userId, messageId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String type, String userId, String messageId)? messageSeen,
    TResult Function(String type, Message message)? messageSent,
    required TResult orElse(),
  }) {
    if (messageSeen != null) {
      return messageSeen(type, userId, messageId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MessageSeenEvent value) messageSeen,
    required TResult Function(MessageSentEvent value) messageSent,
  }) {
    return messageSeen(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MessageSeenEvent value)? messageSeen,
    TResult? Function(MessageSentEvent value)? messageSent,
  }) {
    return messageSeen?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MessageSeenEvent value)? messageSeen,
    TResult Function(MessageSentEvent value)? messageSent,
    required TResult orElse(),
  }) {
    if (messageSeen != null) {
      return messageSeen(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$MessageSeenEventImplToJson(
      this,
    );
  }
}

abstract class MessageSeenEvent implements ChatEvent {
  const factory MessageSeenEvent(
      {required final String type,
      required final String userId,
      required final String messageId}) = _$MessageSeenEventImpl;

  factory MessageSeenEvent.fromJson(Map<String, dynamic> json) =
      _$MessageSeenEventImpl.fromJson;

  @override
  String get type;
  String get userId;
  String get messageId;

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MessageSeenEventImplCopyWith<_$MessageSeenEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MessageSentEventImplCopyWith<$Res>
    implements $ChatEventCopyWith<$Res> {
  factory _$$MessageSentEventImplCopyWith(_$MessageSentEventImpl value,
          $Res Function(_$MessageSentEventImpl) then) =
      __$$MessageSentEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String type, Message message});

  $MessageCopyWith<$Res> get message;
}

/// @nodoc
class __$$MessageSentEventImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$MessageSentEventImpl>
    implements _$$MessageSentEventImplCopyWith<$Res> {
  __$$MessageSentEventImplCopyWithImpl(_$MessageSentEventImpl _value,
      $Res Function(_$MessageSentEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? message = null,
  }) {
    return _then(_$MessageSentEventImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as Message,
    ));
  }

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MessageCopyWith<$Res> get message {
    return $MessageCopyWith<$Res>(_value.message, (value) {
      return _then(_value.copyWith(message: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$MessageSentEventImpl implements MessageSentEvent {
  const _$MessageSentEventImpl(
      {required this.type, required this.message, final String? $type})
      : $type = $type ?? 'messageSent';

  factory _$MessageSentEventImpl.fromJson(Map<String, dynamic> json) =>
      _$$MessageSentEventImplFromJson(json);

  @override
  final String type;
  @override
  final Message message;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ChatEvent.messageSent(type: $type, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageSentEventImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type, message);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageSentEventImplCopyWith<_$MessageSentEventImpl> get copyWith =>
      __$$MessageSentEventImplCopyWithImpl<_$MessageSentEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String type, String userId, String messageId)
        messageSeen,
    required TResult Function(String type, Message message) messageSent,
  }) {
    return messageSent(type, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String type, String userId, String messageId)?
        messageSeen,
    TResult? Function(String type, Message message)? messageSent,
  }) {
    return messageSent?.call(type, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String type, String userId, String messageId)? messageSeen,
    TResult Function(String type, Message message)? messageSent,
    required TResult orElse(),
  }) {
    if (messageSent != null) {
      return messageSent(type, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MessageSeenEvent value) messageSeen,
    required TResult Function(MessageSentEvent value) messageSent,
  }) {
    return messageSent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MessageSeenEvent value)? messageSeen,
    TResult? Function(MessageSentEvent value)? messageSent,
  }) {
    return messageSent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MessageSeenEvent value)? messageSeen,
    TResult Function(MessageSentEvent value)? messageSent,
    required TResult orElse(),
  }) {
    if (messageSent != null) {
      return messageSent(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$MessageSentEventImplToJson(
      this,
    );
  }
}

abstract class MessageSentEvent implements ChatEvent {
  const factory MessageSentEvent(
      {required final String type,
      required final Message message}) = _$MessageSentEventImpl;

  factory MessageSentEvent.fromJson(Map<String, dynamic> json) =
      _$MessageSentEventImpl.fromJson;

  @override
  String get type;
  Message get message;

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MessageSentEventImplCopyWith<_$MessageSentEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
