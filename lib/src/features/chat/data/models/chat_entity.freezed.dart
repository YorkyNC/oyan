// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChatEntity _$ChatEntityFromJson(Map<String, dynamic> json) {
  return _ChatEntity.fromJson(json);
}

/// @nodoc
mixin _$ChatEntity {
  String get type => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get chatId => throw _privateConstructorUsedError;
  String? get classId => throw _privateConstructorUsedError;
  String? get schoolId => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  AttachmentEntity? get profilePictureId => throw _privateConstructorUsedError;
  List<ChatMemberEntity>? get members => throw _privateConstructorUsedError;
  MessageEntity? get lastMessage => throw _privateConstructorUsedError;
  int? get unreadCount => throw _privateConstructorUsedError;
  DateTime? get latestActivity => throw _privateConstructorUsedError;

  /// Serializes this ChatEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChatEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatEntityCopyWith<ChatEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatEntityCopyWith<$Res> {
  factory $ChatEntityCopyWith(
          ChatEntity value, $Res Function(ChatEntity) then) =
      _$ChatEntityCopyWithImpl<$Res, ChatEntity>;
  @useResult
  $Res call(
      {String type,
      String? title,
      String? description,
      String? chatId,
      String? classId,
      String? schoolId,
      DateTime? createdAt,
      AttachmentEntity? profilePictureId,
      List<ChatMemberEntity>? members,
      MessageEntity? lastMessage,
      int? unreadCount,
      DateTime? latestActivity});

  $AttachmentEntityCopyWith<$Res>? get profilePictureId;
  $MessageEntityCopyWith<$Res>? get lastMessage;
}

/// @nodoc
class _$ChatEntityCopyWithImpl<$Res, $Val extends ChatEntity>
    implements $ChatEntityCopyWith<$Res> {
  _$ChatEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? title = freezed,
    Object? description = freezed,
    Object? chatId = freezed,
    Object? classId = freezed,
    Object? schoolId = freezed,
    Object? createdAt = freezed,
    Object? profilePictureId = freezed,
    Object? members = freezed,
    Object? lastMessage = freezed,
    Object? unreadCount = freezed,
    Object? latestActivity = freezed,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      chatId: freezed == chatId
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as String?,
      classId: freezed == classId
          ? _value.classId
          : classId // ignore: cast_nullable_to_non_nullable
              as String?,
      schoolId: freezed == schoolId
          ? _value.schoolId
          : schoolId // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      profilePictureId: freezed == profilePictureId
          ? _value.profilePictureId
          : profilePictureId // ignore: cast_nullable_to_non_nullable
              as AttachmentEntity?,
      members: freezed == members
          ? _value.members
          : members // ignore: cast_nullable_to_non_nullable
              as List<ChatMemberEntity>?,
      lastMessage: freezed == lastMessage
          ? _value.lastMessage
          : lastMessage // ignore: cast_nullable_to_non_nullable
              as MessageEntity?,
      unreadCount: freezed == unreadCount
          ? _value.unreadCount
          : unreadCount // ignore: cast_nullable_to_non_nullable
              as int?,
      latestActivity: freezed == latestActivity
          ? _value.latestActivity
          : latestActivity // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }

  /// Create a copy of ChatEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AttachmentEntityCopyWith<$Res>? get profilePictureId {
    if (_value.profilePictureId == null) {
      return null;
    }

    return $AttachmentEntityCopyWith<$Res>(_value.profilePictureId!, (value) {
      return _then(_value.copyWith(profilePictureId: value) as $Val);
    });
  }

  /// Create a copy of ChatEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MessageEntityCopyWith<$Res>? get lastMessage {
    if (_value.lastMessage == null) {
      return null;
    }

    return $MessageEntityCopyWith<$Res>(_value.lastMessage!, (value) {
      return _then(_value.copyWith(lastMessage: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ChatEntityImplCopyWith<$Res>
    implements $ChatEntityCopyWith<$Res> {
  factory _$$ChatEntityImplCopyWith(
          _$ChatEntityImpl value, $Res Function(_$ChatEntityImpl) then) =
      __$$ChatEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String type,
      String? title,
      String? description,
      String? chatId,
      String? classId,
      String? schoolId,
      DateTime? createdAt,
      AttachmentEntity? profilePictureId,
      List<ChatMemberEntity>? members,
      MessageEntity? lastMessage,
      int? unreadCount,
      DateTime? latestActivity});

  @override
  $AttachmentEntityCopyWith<$Res>? get profilePictureId;
  @override
  $MessageEntityCopyWith<$Res>? get lastMessage;
}

/// @nodoc
class __$$ChatEntityImplCopyWithImpl<$Res>
    extends _$ChatEntityCopyWithImpl<$Res, _$ChatEntityImpl>
    implements _$$ChatEntityImplCopyWith<$Res> {
  __$$ChatEntityImplCopyWithImpl(
      _$ChatEntityImpl _value, $Res Function(_$ChatEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? title = freezed,
    Object? description = freezed,
    Object? chatId = freezed,
    Object? classId = freezed,
    Object? schoolId = freezed,
    Object? createdAt = freezed,
    Object? profilePictureId = freezed,
    Object? members = freezed,
    Object? lastMessage = freezed,
    Object? unreadCount = freezed,
    Object? latestActivity = freezed,
  }) {
    return _then(_$ChatEntityImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      chatId: freezed == chatId
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as String?,
      classId: freezed == classId
          ? _value.classId
          : classId // ignore: cast_nullable_to_non_nullable
              as String?,
      schoolId: freezed == schoolId
          ? _value.schoolId
          : schoolId // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      profilePictureId: freezed == profilePictureId
          ? _value.profilePictureId
          : profilePictureId // ignore: cast_nullable_to_non_nullable
              as AttachmentEntity?,
      members: freezed == members
          ? _value._members
          : members // ignore: cast_nullable_to_non_nullable
              as List<ChatMemberEntity>?,
      lastMessage: freezed == lastMessage
          ? _value.lastMessage
          : lastMessage // ignore: cast_nullable_to_non_nullable
              as MessageEntity?,
      unreadCount: freezed == unreadCount
          ? _value.unreadCount
          : unreadCount // ignore: cast_nullable_to_non_nullable
              as int?,
      latestActivity: freezed == latestActivity
          ? _value.latestActivity
          : latestActivity // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatEntityImpl implements _ChatEntity {
  const _$ChatEntityImpl(
      {required this.type,
      this.title,
      this.description,
      this.chatId,
      this.classId,
      this.schoolId,
      this.createdAt,
      this.profilePictureId,
      final List<ChatMemberEntity>? members,
      this.lastMessage,
      this.unreadCount,
      this.latestActivity})
      : _members = members;

  factory _$ChatEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatEntityImplFromJson(json);

  @override
  final String type;
  @override
  final String? title;
  @override
  final String? description;
  @override
  final String? chatId;
  @override
  final String? classId;
  @override
  final String? schoolId;
  @override
  final DateTime? createdAt;
  @override
  final AttachmentEntity? profilePictureId;
  final List<ChatMemberEntity>? _members;
  @override
  List<ChatMemberEntity>? get members {
    final value = _members;
    if (value == null) return null;
    if (_members is EqualUnmodifiableListView) return _members;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final MessageEntity? lastMessage;
  @override
  final int? unreadCount;
  @override
  final DateTime? latestActivity;

  @override
  String toString() {
    return 'ChatEntity(type: $type, title: $title, description: $description, chatId: $chatId, classId: $classId, schoolId: $schoolId, createdAt: $createdAt, profilePictureId: $profilePictureId, members: $members, lastMessage: $lastMessage, unreadCount: $unreadCount, latestActivity: $latestActivity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatEntityImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.chatId, chatId) || other.chatId == chatId) &&
            (identical(other.classId, classId) || other.classId == classId) &&
            (identical(other.schoolId, schoolId) ||
                other.schoolId == schoolId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.profilePictureId, profilePictureId) ||
                other.profilePictureId == profilePictureId) &&
            const DeepCollectionEquality().equals(other._members, _members) &&
            (identical(other.lastMessage, lastMessage) ||
                other.lastMessage == lastMessage) &&
            (identical(other.unreadCount, unreadCount) ||
                other.unreadCount == unreadCount) &&
            (identical(other.latestActivity, latestActivity) ||
                other.latestActivity == latestActivity));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      type,
      title,
      description,
      chatId,
      classId,
      schoolId,
      createdAt,
      profilePictureId,
      const DeepCollectionEquality().hash(_members),
      lastMessage,
      unreadCount,
      latestActivity);

  /// Create a copy of ChatEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatEntityImplCopyWith<_$ChatEntityImpl> get copyWith =>
      __$$ChatEntityImplCopyWithImpl<_$ChatEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatEntityImplToJson(
      this,
    );
  }
}

abstract class _ChatEntity implements ChatEntity {
  const factory _ChatEntity(
      {required final String type,
      final String? title,
      final String? description,
      final String? chatId,
      final String? classId,
      final String? schoolId,
      final DateTime? createdAt,
      final AttachmentEntity? profilePictureId,
      final List<ChatMemberEntity>? members,
      final MessageEntity? lastMessage,
      final int? unreadCount,
      final DateTime? latestActivity}) = _$ChatEntityImpl;

  factory _ChatEntity.fromJson(Map<String, dynamic> json) =
      _$ChatEntityImpl.fromJson;

  @override
  String get type;
  @override
  String? get title;
  @override
  String? get description;
  @override
  String? get chatId;
  @override
  String? get classId;
  @override
  String? get schoolId;
  @override
  DateTime? get createdAt;
  @override
  AttachmentEntity? get profilePictureId;
  @override
  List<ChatMemberEntity>? get members;
  @override
  MessageEntity? get lastMessage;
  @override
  int? get unreadCount;
  @override
  DateTime? get latestActivity;

  /// Create a copy of ChatEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatEntityImplCopyWith<_$ChatEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ChatMemberEntity _$ChatMemberEntityFromJson(Map<String, dynamic> json) {
  return _ChatMemberEntity.fromJson(json);
}

/// @nodoc
mixin _$ChatMemberEntity {
  String get userId => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  List<ChatRoleEntity>? get roles => throw _privateConstructorUsedError;

  /// Serializes this ChatMemberEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChatMemberEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatMemberEntityCopyWith<ChatMemberEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatMemberEntityCopyWith<$Res> {
  factory $ChatMemberEntityCopyWith(
          ChatMemberEntity value, $Res Function(ChatMemberEntity) then) =
      _$ChatMemberEntityCopyWithImpl<$Res, ChatMemberEntity>;
  @useResult
  $Res call(
      {String userId,
      String firstName,
      String lastName,
      List<ChatRoleEntity>? roles});
}

/// @nodoc
class _$ChatMemberEntityCopyWithImpl<$Res, $Val extends ChatMemberEntity>
    implements $ChatMemberEntityCopyWith<$Res> {
  _$ChatMemberEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatMemberEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? roles = freezed,
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
      roles: freezed == roles
          ? _value.roles
          : roles // ignore: cast_nullable_to_non_nullable
              as List<ChatRoleEntity>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChatMemberEntityImplCopyWith<$Res>
    implements $ChatMemberEntityCopyWith<$Res> {
  factory _$$ChatMemberEntityImplCopyWith(_$ChatMemberEntityImpl value,
          $Res Function(_$ChatMemberEntityImpl) then) =
      __$$ChatMemberEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String userId,
      String firstName,
      String lastName,
      List<ChatRoleEntity>? roles});
}

/// @nodoc
class __$$ChatMemberEntityImplCopyWithImpl<$Res>
    extends _$ChatMemberEntityCopyWithImpl<$Res, _$ChatMemberEntityImpl>
    implements _$$ChatMemberEntityImplCopyWith<$Res> {
  __$$ChatMemberEntityImplCopyWithImpl(_$ChatMemberEntityImpl _value,
      $Res Function(_$ChatMemberEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatMemberEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? roles = freezed,
  }) {
    return _then(_$ChatMemberEntityImpl(
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
      roles: freezed == roles
          ? _value._roles
          : roles // ignore: cast_nullable_to_non_nullable
              as List<ChatRoleEntity>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatMemberEntityImpl implements _ChatMemberEntity {
  const _$ChatMemberEntityImpl(
      {required this.userId,
      required this.firstName,
      required this.lastName,
      final List<ChatRoleEntity>? roles})
      : _roles = roles;

  factory _$ChatMemberEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatMemberEntityImplFromJson(json);

  @override
  final String userId;
  @override
  final String firstName;
  @override
  final String lastName;
  final List<ChatRoleEntity>? _roles;
  @override
  List<ChatRoleEntity>? get roles {
    final value = _roles;
    if (value == null) return null;
    if (_roles is EqualUnmodifiableListView) return _roles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ChatMemberEntity(userId: $userId, firstName: $firstName, lastName: $lastName, roles: $roles)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatMemberEntityImpl &&
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

  /// Create a copy of ChatMemberEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatMemberEntityImplCopyWith<_$ChatMemberEntityImpl> get copyWith =>
      __$$ChatMemberEntityImplCopyWithImpl<_$ChatMemberEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatMemberEntityImplToJson(
      this,
    );
  }
}

abstract class _ChatMemberEntity implements ChatMemberEntity {
  const factory _ChatMemberEntity(
      {required final String userId,
      required final String firstName,
      required final String lastName,
      final List<ChatRoleEntity>? roles}) = _$ChatMemberEntityImpl;

  factory _ChatMemberEntity.fromJson(Map<String, dynamic> json) =
      _$ChatMemberEntityImpl.fromJson;

  @override
  String get userId;
  @override
  String get firstName;
  @override
  String get lastName;
  @override
  List<ChatRoleEntity>? get roles;

  /// Create a copy of ChatMemberEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatMemberEntityImplCopyWith<_$ChatMemberEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ChatRoleEntity _$ChatRoleEntityFromJson(Map<String, dynamic> json) {
  return _ChatRoleEntity.fromJson(json);
}

/// @nodoc
mixin _$ChatRoleEntity {
  String get role => throw _privateConstructorUsedError;
  String? get studentId => throw _privateConstructorUsedError;
  String? get studentFirstName => throw _privateConstructorUsedError;
  String? get studentLastName => throw _privateConstructorUsedError;

  /// Serializes this ChatRoleEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChatRoleEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatRoleEntityCopyWith<ChatRoleEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatRoleEntityCopyWith<$Res> {
  factory $ChatRoleEntityCopyWith(
          ChatRoleEntity value, $Res Function(ChatRoleEntity) then) =
      _$ChatRoleEntityCopyWithImpl<$Res, ChatRoleEntity>;
  @useResult
  $Res call(
      {String role,
      String? studentId,
      String? studentFirstName,
      String? studentLastName});
}

/// @nodoc
class _$ChatRoleEntityCopyWithImpl<$Res, $Val extends ChatRoleEntity>
    implements $ChatRoleEntityCopyWith<$Res> {
  _$ChatRoleEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatRoleEntity
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
abstract class _$$ChatRoleEntityImplCopyWith<$Res>
    implements $ChatRoleEntityCopyWith<$Res> {
  factory _$$ChatRoleEntityImplCopyWith(_$ChatRoleEntityImpl value,
          $Res Function(_$ChatRoleEntityImpl) then) =
      __$$ChatRoleEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String role,
      String? studentId,
      String? studentFirstName,
      String? studentLastName});
}

/// @nodoc
class __$$ChatRoleEntityImplCopyWithImpl<$Res>
    extends _$ChatRoleEntityCopyWithImpl<$Res, _$ChatRoleEntityImpl>
    implements _$$ChatRoleEntityImplCopyWith<$Res> {
  __$$ChatRoleEntityImplCopyWithImpl(
      _$ChatRoleEntityImpl _value, $Res Function(_$ChatRoleEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatRoleEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? role = null,
    Object? studentId = freezed,
    Object? studentFirstName = freezed,
    Object? studentLastName = freezed,
  }) {
    return _then(_$ChatRoleEntityImpl(
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
class _$ChatRoleEntityImpl implements _ChatRoleEntity {
  const _$ChatRoleEntityImpl(
      {required this.role,
      this.studentId,
      this.studentFirstName,
      this.studentLastName});

  factory _$ChatRoleEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatRoleEntityImplFromJson(json);

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
    return 'ChatRoleEntity(role: $role, studentId: $studentId, studentFirstName: $studentFirstName, studentLastName: $studentLastName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatRoleEntityImpl &&
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

  /// Create a copy of ChatRoleEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatRoleEntityImplCopyWith<_$ChatRoleEntityImpl> get copyWith =>
      __$$ChatRoleEntityImplCopyWithImpl<_$ChatRoleEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatRoleEntityImplToJson(
      this,
    );
  }
}

abstract class _ChatRoleEntity implements ChatRoleEntity {
  const factory _ChatRoleEntity(
      {required final String role,
      final String? studentId,
      final String? studentFirstName,
      final String? studentLastName}) = _$ChatRoleEntityImpl;

  factory _ChatRoleEntity.fromJson(Map<String, dynamic> json) =
      _$ChatRoleEntityImpl.fromJson;

  @override
  String get role;
  @override
  String? get studentId;
  @override
  String? get studentFirstName;
  @override
  String? get studentLastName;

  /// Create a copy of ChatRoleEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatRoleEntityImplCopyWith<_$ChatRoleEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MessageEntity _$MessageEntityFromJson(Map<String, dynamic> json) {
  return _MessageEntity.fromJson(json);
}

/// @nodoc
mixin _$MessageEntity {
  String? get text => throw _privateConstructorUsedError;
  String? get chatId => throw _privateConstructorUsedError;
  String? get forwardedMessageId => throw _privateConstructorUsedError;
  String? get repliedMessageId => throw _privateConstructorUsedError;
  ChatMemberEntity? get author => throw _privateConstructorUsedError;
  String? get messageId => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  String? get authorId => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  bool? get isViewed => throw _privateConstructorUsedError;
  List<AttachmentEntity> get attachments => throw _privateConstructorUsedError;
  bool? get isWebsocketMessage => throw _privateConstructorUsedError;

  /// Serializes this MessageEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MessageEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MessageEntityCopyWith<MessageEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageEntityCopyWith<$Res> {
  factory $MessageEntityCopyWith(
          MessageEntity value, $Res Function(MessageEntity) then) =
      _$MessageEntityCopyWithImpl<$Res, MessageEntity>;
  @useResult
  $Res call(
      {String? text,
      String? chatId,
      String? forwardedMessageId,
      String? repliedMessageId,
      ChatMemberEntity? author,
      String? messageId,
      String? id,
      String? authorId,
      DateTime? createdAt,
      bool? isViewed,
      List<AttachmentEntity> attachments,
      bool? isWebsocketMessage});

  $ChatMemberEntityCopyWith<$Res>? get author;
}

/// @nodoc
class _$MessageEntityCopyWithImpl<$Res, $Val extends MessageEntity>
    implements $MessageEntityCopyWith<$Res> {
  _$MessageEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MessageEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = freezed,
    Object? chatId = freezed,
    Object? forwardedMessageId = freezed,
    Object? repliedMessageId = freezed,
    Object? author = freezed,
    Object? messageId = freezed,
    Object? id = freezed,
    Object? authorId = freezed,
    Object? createdAt = freezed,
    Object? isViewed = freezed,
    Object? attachments = null,
    Object? isWebsocketMessage = freezed,
  }) {
    return _then(_value.copyWith(
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      chatId: freezed == chatId
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as String?,
      forwardedMessageId: freezed == forwardedMessageId
          ? _value.forwardedMessageId
          : forwardedMessageId // ignore: cast_nullable_to_non_nullable
              as String?,
      repliedMessageId: freezed == repliedMessageId
          ? _value.repliedMessageId
          : repliedMessageId // ignore: cast_nullable_to_non_nullable
              as String?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as ChatMemberEntity?,
      messageId: freezed == messageId
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      authorId: freezed == authorId
          ? _value.authorId
          : authorId // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isViewed: freezed == isViewed
          ? _value.isViewed
          : isViewed // ignore: cast_nullable_to_non_nullable
              as bool?,
      attachments: null == attachments
          ? _value.attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as List<AttachmentEntity>,
      isWebsocketMessage: freezed == isWebsocketMessage
          ? _value.isWebsocketMessage
          : isWebsocketMessage // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  /// Create a copy of MessageEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatMemberEntityCopyWith<$Res>? get author {
    if (_value.author == null) {
      return null;
    }

    return $ChatMemberEntityCopyWith<$Res>(_value.author!, (value) {
      return _then(_value.copyWith(author: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MessageEntityImplCopyWith<$Res>
    implements $MessageEntityCopyWith<$Res> {
  factory _$$MessageEntityImplCopyWith(
          _$MessageEntityImpl value, $Res Function(_$MessageEntityImpl) then) =
      __$$MessageEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? text,
      String? chatId,
      String? forwardedMessageId,
      String? repliedMessageId,
      ChatMemberEntity? author,
      String? messageId,
      String? id,
      String? authorId,
      DateTime? createdAt,
      bool? isViewed,
      List<AttachmentEntity> attachments,
      bool? isWebsocketMessage});

  @override
  $ChatMemberEntityCopyWith<$Res>? get author;
}

/// @nodoc
class __$$MessageEntityImplCopyWithImpl<$Res>
    extends _$MessageEntityCopyWithImpl<$Res, _$MessageEntityImpl>
    implements _$$MessageEntityImplCopyWith<$Res> {
  __$$MessageEntityImplCopyWithImpl(
      _$MessageEntityImpl _value, $Res Function(_$MessageEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of MessageEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = freezed,
    Object? chatId = freezed,
    Object? forwardedMessageId = freezed,
    Object? repliedMessageId = freezed,
    Object? author = freezed,
    Object? messageId = freezed,
    Object? id = freezed,
    Object? authorId = freezed,
    Object? createdAt = freezed,
    Object? isViewed = freezed,
    Object? attachments = null,
    Object? isWebsocketMessage = freezed,
  }) {
    return _then(_$MessageEntityImpl(
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      chatId: freezed == chatId
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as String?,
      forwardedMessageId: freezed == forwardedMessageId
          ? _value.forwardedMessageId
          : forwardedMessageId // ignore: cast_nullable_to_non_nullable
              as String?,
      repliedMessageId: freezed == repliedMessageId
          ? _value.repliedMessageId
          : repliedMessageId // ignore: cast_nullable_to_non_nullable
              as String?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as ChatMemberEntity?,
      messageId: freezed == messageId
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      authorId: freezed == authorId
          ? _value.authorId
          : authorId // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isViewed: freezed == isViewed
          ? _value.isViewed
          : isViewed // ignore: cast_nullable_to_non_nullable
              as bool?,
      attachments: null == attachments
          ? _value._attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as List<AttachmentEntity>,
      isWebsocketMessage: freezed == isWebsocketMessage
          ? _value.isWebsocketMessage
          : isWebsocketMessage // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MessageEntityImpl implements _MessageEntity {
  const _$MessageEntityImpl(
      {this.text,
      this.chatId,
      this.forwardedMessageId,
      this.repliedMessageId,
      this.author,
      this.messageId,
      this.id,
      this.authorId,
      this.createdAt,
      this.isViewed,
      final List<AttachmentEntity> attachments = const [],
      this.isWebsocketMessage})
      : _attachments = attachments;

  factory _$MessageEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$MessageEntityImplFromJson(json);

  @override
  final String? text;
  @override
  final String? chatId;
  @override
  final String? forwardedMessageId;
  @override
  final String? repliedMessageId;
  @override
  final ChatMemberEntity? author;
  @override
  final String? messageId;
  @override
  final String? id;
  @override
  final String? authorId;
  @override
  final DateTime? createdAt;
  @override
  final bool? isViewed;
  final List<AttachmentEntity> _attachments;
  @override
  @JsonKey()
  List<AttachmentEntity> get attachments {
    if (_attachments is EqualUnmodifiableListView) return _attachments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_attachments);
  }

  @override
  final bool? isWebsocketMessage;

  @override
  String toString() {
    return 'MessageEntity(text: $text, chatId: $chatId, forwardedMessageId: $forwardedMessageId, repliedMessageId: $repliedMessageId, author: $author, messageId: $messageId, id: $id, authorId: $authorId, createdAt: $createdAt, isViewed: $isViewed, attachments: $attachments, isWebsocketMessage: $isWebsocketMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageEntityImpl &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.chatId, chatId) || other.chatId == chatId) &&
            (identical(other.forwardedMessageId, forwardedMessageId) ||
                other.forwardedMessageId == forwardedMessageId) &&
            (identical(other.repliedMessageId, repliedMessageId) ||
                other.repliedMessageId == repliedMessageId) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.messageId, messageId) ||
                other.messageId == messageId) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.authorId, authorId) ||
                other.authorId == authorId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.isViewed, isViewed) ||
                other.isViewed == isViewed) &&
            const DeepCollectionEquality()
                .equals(other._attachments, _attachments) &&
            (identical(other.isWebsocketMessage, isWebsocketMessage) ||
                other.isWebsocketMessage == isWebsocketMessage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      text,
      chatId,
      forwardedMessageId,
      repliedMessageId,
      author,
      messageId,
      id,
      authorId,
      createdAt,
      isViewed,
      const DeepCollectionEquality().hash(_attachments),
      isWebsocketMessage);

  /// Create a copy of MessageEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageEntityImplCopyWith<_$MessageEntityImpl> get copyWith =>
      __$$MessageEntityImplCopyWithImpl<_$MessageEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MessageEntityImplToJson(
      this,
    );
  }
}

abstract class _MessageEntity implements MessageEntity {
  const factory _MessageEntity(
      {final String? text,
      final String? chatId,
      final String? forwardedMessageId,
      final String? repliedMessageId,
      final ChatMemberEntity? author,
      final String? messageId,
      final String? id,
      final String? authorId,
      final DateTime? createdAt,
      final bool? isViewed,
      final List<AttachmentEntity> attachments,
      final bool? isWebsocketMessage}) = _$MessageEntityImpl;

  factory _MessageEntity.fromJson(Map<String, dynamic> json) =
      _$MessageEntityImpl.fromJson;

  @override
  String? get text;
  @override
  String? get chatId;
  @override
  String? get forwardedMessageId;
  @override
  String? get repliedMessageId;
  @override
  ChatMemberEntity? get author;
  @override
  String? get messageId;
  @override
  String? get id;
  @override
  String? get authorId;
  @override
  DateTime? get createdAt;
  @override
  bool? get isViewed;
  @override
  List<AttachmentEntity> get attachments;
  @override
  bool? get isWebsocketMessage;

  /// Create a copy of MessageEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MessageEntityImplCopyWith<_$MessageEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

NewMessageEntity _$NewMessageEntityFromJson(Map<String, dynamic> json) {
  return _NewMessageEntity.fromJson(json);
}

/// @nodoc
mixin _$NewMessageEntity {
  String get content => throw _privateConstructorUsedError;
  @JsonKey(name: 'chat_id')
  String get chatId => throw _privateConstructorUsedError;
  @JsonKey(name: 'forwarded_message_id')
  String? get forwardedMessageId => throw _privateConstructorUsedError;
  @JsonKey(name: 'replied_message_id')
  String? get repliedMessageId => throw _privateConstructorUsedError;
  List<AttachmentEntity>? get attachments => throw _privateConstructorUsedError;

  /// Serializes this NewMessageEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NewMessageEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NewMessageEntityCopyWith<NewMessageEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewMessageEntityCopyWith<$Res> {
  factory $NewMessageEntityCopyWith(
          NewMessageEntity value, $Res Function(NewMessageEntity) then) =
      _$NewMessageEntityCopyWithImpl<$Res, NewMessageEntity>;
  @useResult
  $Res call(
      {String content,
      @JsonKey(name: 'chat_id') String chatId,
      @JsonKey(name: 'forwarded_message_id') String? forwardedMessageId,
      @JsonKey(name: 'replied_message_id') String? repliedMessageId,
      List<AttachmentEntity>? attachments});
}

/// @nodoc
class _$NewMessageEntityCopyWithImpl<$Res, $Val extends NewMessageEntity>
    implements $NewMessageEntityCopyWith<$Res> {
  _$NewMessageEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NewMessageEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? chatId = null,
    Object? forwardedMessageId = freezed,
    Object? repliedMessageId = freezed,
    Object? attachments = freezed,
  }) {
    return _then(_value.copyWith(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      chatId: null == chatId
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as String,
      forwardedMessageId: freezed == forwardedMessageId
          ? _value.forwardedMessageId
          : forwardedMessageId // ignore: cast_nullable_to_non_nullable
              as String?,
      repliedMessageId: freezed == repliedMessageId
          ? _value.repliedMessageId
          : repliedMessageId // ignore: cast_nullable_to_non_nullable
              as String?,
      attachments: freezed == attachments
          ? _value.attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as List<AttachmentEntity>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NewMessageEntityImplCopyWith<$Res>
    implements $NewMessageEntityCopyWith<$Res> {
  factory _$$NewMessageEntityImplCopyWith(_$NewMessageEntityImpl value,
          $Res Function(_$NewMessageEntityImpl) then) =
      __$$NewMessageEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String content,
      @JsonKey(name: 'chat_id') String chatId,
      @JsonKey(name: 'forwarded_message_id') String? forwardedMessageId,
      @JsonKey(name: 'replied_message_id') String? repliedMessageId,
      List<AttachmentEntity>? attachments});
}

/// @nodoc
class __$$NewMessageEntityImplCopyWithImpl<$Res>
    extends _$NewMessageEntityCopyWithImpl<$Res, _$NewMessageEntityImpl>
    implements _$$NewMessageEntityImplCopyWith<$Res> {
  __$$NewMessageEntityImplCopyWithImpl(_$NewMessageEntityImpl _value,
      $Res Function(_$NewMessageEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of NewMessageEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? chatId = null,
    Object? forwardedMessageId = freezed,
    Object? repliedMessageId = freezed,
    Object? attachments = freezed,
  }) {
    return _then(_$NewMessageEntityImpl(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      chatId: null == chatId
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as String,
      forwardedMessageId: freezed == forwardedMessageId
          ? _value.forwardedMessageId
          : forwardedMessageId // ignore: cast_nullable_to_non_nullable
              as String?,
      repliedMessageId: freezed == repliedMessageId
          ? _value.repliedMessageId
          : repliedMessageId // ignore: cast_nullable_to_non_nullable
              as String?,
      attachments: freezed == attachments
          ? _value._attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as List<AttachmentEntity>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NewMessageEntityImpl implements _NewMessageEntity {
  const _$NewMessageEntityImpl(
      {required this.content,
      @JsonKey(name: 'chat_id') required this.chatId,
      @JsonKey(name: 'forwarded_message_id') this.forwardedMessageId,
      @JsonKey(name: 'replied_message_id') this.repliedMessageId,
      final List<AttachmentEntity>? attachments})
      : _attachments = attachments;

  factory _$NewMessageEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$NewMessageEntityImplFromJson(json);

  @override
  final String content;
  @override
  @JsonKey(name: 'chat_id')
  final String chatId;
  @override
  @JsonKey(name: 'forwarded_message_id')
  final String? forwardedMessageId;
  @override
  @JsonKey(name: 'replied_message_id')
  final String? repliedMessageId;
  final List<AttachmentEntity>? _attachments;
  @override
  List<AttachmentEntity>? get attachments {
    final value = _attachments;
    if (value == null) return null;
    if (_attachments is EqualUnmodifiableListView) return _attachments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'NewMessageEntity(content: $content, chatId: $chatId, forwardedMessageId: $forwardedMessageId, repliedMessageId: $repliedMessageId, attachments: $attachments)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewMessageEntityImpl &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.chatId, chatId) || other.chatId == chatId) &&
            (identical(other.forwardedMessageId, forwardedMessageId) ||
                other.forwardedMessageId == forwardedMessageId) &&
            (identical(other.repliedMessageId, repliedMessageId) ||
                other.repliedMessageId == repliedMessageId) &&
            const DeepCollectionEquality()
                .equals(other._attachments, _attachments));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      content,
      chatId,
      forwardedMessageId,
      repliedMessageId,
      const DeepCollectionEquality().hash(_attachments));

  /// Create a copy of NewMessageEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NewMessageEntityImplCopyWith<_$NewMessageEntityImpl> get copyWith =>
      __$$NewMessageEntityImplCopyWithImpl<_$NewMessageEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NewMessageEntityImplToJson(
      this,
    );
  }
}

abstract class _NewMessageEntity implements NewMessageEntity {
  const factory _NewMessageEntity(
      {required final String content,
      @JsonKey(name: 'chat_id') required final String chatId,
      @JsonKey(name: 'forwarded_message_id') final String? forwardedMessageId,
      @JsonKey(name: 'replied_message_id') final String? repliedMessageId,
      final List<AttachmentEntity>? attachments}) = _$NewMessageEntityImpl;

  factory _NewMessageEntity.fromJson(Map<String, dynamic> json) =
      _$NewMessageEntityImpl.fromJson;

  @override
  String get content;
  @override
  @JsonKey(name: 'chat_id')
  String get chatId;
  @override
  @JsonKey(name: 'forwarded_message_id')
  String? get forwardedMessageId;
  @override
  @JsonKey(name: 'replied_message_id')
  String? get repliedMessageId;
  @override
  List<AttachmentEntity>? get attachments;

  /// Create a copy of NewMessageEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NewMessageEntityImplCopyWith<_$NewMessageEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SentMessageEntity _$SentMessageEntityFromJson(Map<String, dynamic> json) {
  return _SentMessageEntity.fromJson(json);
}

/// @nodoc
mixin _$SentMessageEntity {
  String get schoolId => throw _privateConstructorUsedError;
  String get chatId => throw _privateConstructorUsedError;
  String get messageId => throw _privateConstructorUsedError;

  /// Serializes this SentMessageEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SentMessageEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SentMessageEntityCopyWith<SentMessageEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SentMessageEntityCopyWith<$Res> {
  factory $SentMessageEntityCopyWith(
          SentMessageEntity value, $Res Function(SentMessageEntity) then) =
      _$SentMessageEntityCopyWithImpl<$Res, SentMessageEntity>;
  @useResult
  $Res call({String schoolId, String chatId, String messageId});
}

/// @nodoc
class _$SentMessageEntityCopyWithImpl<$Res, $Val extends SentMessageEntity>
    implements $SentMessageEntityCopyWith<$Res> {
  _$SentMessageEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SentMessageEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? schoolId = null,
    Object? chatId = null,
    Object? messageId = null,
  }) {
    return _then(_value.copyWith(
      schoolId: null == schoolId
          ? _value.schoolId
          : schoolId // ignore: cast_nullable_to_non_nullable
              as String,
      chatId: null == chatId
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as String,
      messageId: null == messageId
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SentMessageEntityImplCopyWith<$Res>
    implements $SentMessageEntityCopyWith<$Res> {
  factory _$$SentMessageEntityImplCopyWith(_$SentMessageEntityImpl value,
          $Res Function(_$SentMessageEntityImpl) then) =
      __$$SentMessageEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String schoolId, String chatId, String messageId});
}

/// @nodoc
class __$$SentMessageEntityImplCopyWithImpl<$Res>
    extends _$SentMessageEntityCopyWithImpl<$Res, _$SentMessageEntityImpl>
    implements _$$SentMessageEntityImplCopyWith<$Res> {
  __$$SentMessageEntityImplCopyWithImpl(_$SentMessageEntityImpl _value,
      $Res Function(_$SentMessageEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of SentMessageEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? schoolId = null,
    Object? chatId = null,
    Object? messageId = null,
  }) {
    return _then(_$SentMessageEntityImpl(
      schoolId: null == schoolId
          ? _value.schoolId
          : schoolId // ignore: cast_nullable_to_non_nullable
              as String,
      chatId: null == chatId
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
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
class _$SentMessageEntityImpl implements _SentMessageEntity {
  const _$SentMessageEntityImpl(
      {required this.schoolId, required this.chatId, required this.messageId});

  factory _$SentMessageEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$SentMessageEntityImplFromJson(json);

  @override
  final String schoolId;
  @override
  final String chatId;
  @override
  final String messageId;

  @override
  String toString() {
    return 'SentMessageEntity(schoolId: $schoolId, chatId: $chatId, messageId: $messageId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SentMessageEntityImpl &&
            (identical(other.schoolId, schoolId) ||
                other.schoolId == schoolId) &&
            (identical(other.chatId, chatId) || other.chatId == chatId) &&
            (identical(other.messageId, messageId) ||
                other.messageId == messageId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, schoolId, chatId, messageId);

  /// Create a copy of SentMessageEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SentMessageEntityImplCopyWith<_$SentMessageEntityImpl> get copyWith =>
      __$$SentMessageEntityImplCopyWithImpl<_$SentMessageEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SentMessageEntityImplToJson(
      this,
    );
  }
}

abstract class _SentMessageEntity implements SentMessageEntity {
  const factory _SentMessageEntity(
      {required final String schoolId,
      required final String chatId,
      required final String messageId}) = _$SentMessageEntityImpl;

  factory _SentMessageEntity.fromJson(Map<String, dynamic> json) =
      _$SentMessageEntityImpl.fromJson;

  @override
  String get schoolId;
  @override
  String get chatId;
  @override
  String get messageId;

  /// Create a copy of SentMessageEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SentMessageEntityImplCopyWith<_$SentMessageEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MessageSentEntity _$MessageSentEntityFromJson(Map<String, dynamic> json) {
  return _MessageSentEntity.fromJson(json);
}

/// @nodoc
mixin _$MessageSentEntity {
  String get type => throw _privateConstructorUsedError;
  MessageEntity? get message => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;
  String? get messageId => throw _privateConstructorUsedError;
  String? get chatId => throw _privateConstructorUsedError;
  DateTime? get seenAt => throw _privateConstructorUsedError;

  /// Serializes this MessageSentEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MessageSentEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MessageSentEntityCopyWith<MessageSentEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageSentEntityCopyWith<$Res> {
  factory $MessageSentEntityCopyWith(
          MessageSentEntity value, $Res Function(MessageSentEntity) then) =
      _$MessageSentEntityCopyWithImpl<$Res, MessageSentEntity>;
  @useResult
  $Res call(
      {String type,
      MessageEntity? message,
      String? userId,
      String? messageId,
      String? chatId,
      DateTime? seenAt});

  $MessageEntityCopyWith<$Res>? get message;
}

/// @nodoc
class _$MessageSentEntityCopyWithImpl<$Res, $Val extends MessageSentEntity>
    implements $MessageSentEntityCopyWith<$Res> {
  _$MessageSentEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MessageSentEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? message = freezed,
    Object? userId = freezed,
    Object? messageId = freezed,
    Object? chatId = freezed,
    Object? seenAt = freezed,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as MessageEntity?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      messageId: freezed == messageId
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as String?,
      chatId: freezed == chatId
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as String?,
      seenAt: freezed == seenAt
          ? _value.seenAt
          : seenAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }

  /// Create a copy of MessageSentEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MessageEntityCopyWith<$Res>? get message {
    if (_value.message == null) {
      return null;
    }

    return $MessageEntityCopyWith<$Res>(_value.message!, (value) {
      return _then(_value.copyWith(message: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MessageSentEntityImplCopyWith<$Res>
    implements $MessageSentEntityCopyWith<$Res> {
  factory _$$MessageSentEntityImplCopyWith(_$MessageSentEntityImpl value,
          $Res Function(_$MessageSentEntityImpl) then) =
      __$$MessageSentEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String type,
      MessageEntity? message,
      String? userId,
      String? messageId,
      String? chatId,
      DateTime? seenAt});

  @override
  $MessageEntityCopyWith<$Res>? get message;
}

/// @nodoc
class __$$MessageSentEntityImplCopyWithImpl<$Res>
    extends _$MessageSentEntityCopyWithImpl<$Res, _$MessageSentEntityImpl>
    implements _$$MessageSentEntityImplCopyWith<$Res> {
  __$$MessageSentEntityImplCopyWithImpl(_$MessageSentEntityImpl _value,
      $Res Function(_$MessageSentEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of MessageSentEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? message = freezed,
    Object? userId = freezed,
    Object? messageId = freezed,
    Object? chatId = freezed,
    Object? seenAt = freezed,
  }) {
    return _then(_$MessageSentEntityImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as MessageEntity?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      messageId: freezed == messageId
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as String?,
      chatId: freezed == chatId
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as String?,
      seenAt: freezed == seenAt
          ? _value.seenAt
          : seenAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MessageSentEntityImpl implements _MessageSentEntity {
  const _$MessageSentEntityImpl(
      {required this.type,
      this.message,
      this.userId,
      this.messageId,
      this.chatId,
      this.seenAt});

  factory _$MessageSentEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$MessageSentEntityImplFromJson(json);

  @override
  final String type;
  @override
  final MessageEntity? message;
  @override
  final String? userId;
  @override
  final String? messageId;
  @override
  final String? chatId;
  @override
  final DateTime? seenAt;

  @override
  String toString() {
    return 'MessageSentEntity(type: $type, message: $message, userId: $userId, messageId: $messageId, chatId: $chatId, seenAt: $seenAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageSentEntityImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.messageId, messageId) ||
                other.messageId == messageId) &&
            (identical(other.chatId, chatId) || other.chatId == chatId) &&
            (identical(other.seenAt, seenAt) || other.seenAt == seenAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, type, message, userId, messageId, chatId, seenAt);

  /// Create a copy of MessageSentEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageSentEntityImplCopyWith<_$MessageSentEntityImpl> get copyWith =>
      __$$MessageSentEntityImplCopyWithImpl<_$MessageSentEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MessageSentEntityImplToJson(
      this,
    );
  }
}

abstract class _MessageSentEntity implements MessageSentEntity {
  const factory _MessageSentEntity(
      {required final String type,
      final MessageEntity? message,
      final String? userId,
      final String? messageId,
      final String? chatId,
      final DateTime? seenAt}) = _$MessageSentEntityImpl;

  factory _MessageSentEntity.fromJson(Map<String, dynamic> json) =
      _$MessageSentEntityImpl.fromJson;

  @override
  String get type;
  @override
  MessageEntity? get message;
  @override
  String? get userId;
  @override
  String? get messageId;
  @override
  String? get chatId;
  @override
  DateTime? get seenAt;

  /// Create a copy of MessageSentEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MessageSentEntityImplCopyWith<_$MessageSentEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MessageDataEntity _$MessageDataEntityFromJson(Map<String, dynamic> json) {
  return _MessageDataEntity.fromJson(json);
}

/// @nodoc
mixin _$MessageDataEntity {
  String get id => throw _privateConstructorUsedError;
  String get chatId => throw _privateConstructorUsedError;
  String get authorId => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  String? get repliedMessageId => throw _privateConstructorUsedError;
  List<AttachmentEntity> get attachments => throw _privateConstructorUsedError;

  /// Serializes this MessageDataEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MessageDataEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MessageDataEntityCopyWith<MessageDataEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageDataEntityCopyWith<$Res> {
  factory $MessageDataEntityCopyWith(
          MessageDataEntity value, $Res Function(MessageDataEntity) then) =
      _$MessageDataEntityCopyWithImpl<$Res, MessageDataEntity>;
  @useResult
  $Res call(
      {String id,
      String chatId,
      String authorId,
      String createdAt,
      String text,
      String? repliedMessageId,
      List<AttachmentEntity> attachments});
}

/// @nodoc
class _$MessageDataEntityCopyWithImpl<$Res, $Val extends MessageDataEntity>
    implements $MessageDataEntityCopyWith<$Res> {
  _$MessageDataEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MessageDataEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? chatId = null,
    Object? authorId = null,
    Object? createdAt = null,
    Object? text = null,
    Object? repliedMessageId = freezed,
    Object? attachments = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      chatId: null == chatId
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as String,
      authorId: null == authorId
          ? _value.authorId
          : authorId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
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
          ? _value.attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as List<AttachmentEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MessageDataEntityImplCopyWith<$Res>
    implements $MessageDataEntityCopyWith<$Res> {
  factory _$$MessageDataEntityImplCopyWith(_$MessageDataEntityImpl value,
          $Res Function(_$MessageDataEntityImpl) then) =
      __$$MessageDataEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String chatId,
      String authorId,
      String createdAt,
      String text,
      String? repliedMessageId,
      List<AttachmentEntity> attachments});
}

/// @nodoc
class __$$MessageDataEntityImplCopyWithImpl<$Res>
    extends _$MessageDataEntityCopyWithImpl<$Res, _$MessageDataEntityImpl>
    implements _$$MessageDataEntityImplCopyWith<$Res> {
  __$$MessageDataEntityImplCopyWithImpl(_$MessageDataEntityImpl _value,
      $Res Function(_$MessageDataEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of MessageDataEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? chatId = null,
    Object? authorId = null,
    Object? createdAt = null,
    Object? text = null,
    Object? repliedMessageId = freezed,
    Object? attachments = null,
  }) {
    return _then(_$MessageDataEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      chatId: null == chatId
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as String,
      authorId: null == authorId
          ? _value.authorId
          : authorId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
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
              as List<AttachmentEntity>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MessageDataEntityImpl implements _MessageDataEntity {
  const _$MessageDataEntityImpl(
      {required this.id,
      required this.chatId,
      required this.authorId,
      required this.createdAt,
      required this.text,
      this.repliedMessageId,
      final List<AttachmentEntity> attachments = const []})
      : _attachments = attachments;

  factory _$MessageDataEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$MessageDataEntityImplFromJson(json);

  @override
  final String id;
  @override
  final String chatId;
  @override
  final String authorId;
  @override
  final String createdAt;
  @override
  final String text;
  @override
  final String? repliedMessageId;
  final List<AttachmentEntity> _attachments;
  @override
  @JsonKey()
  List<AttachmentEntity> get attachments {
    if (_attachments is EqualUnmodifiableListView) return _attachments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_attachments);
  }

  @override
  String toString() {
    return 'MessageDataEntity(id: $id, chatId: $chatId, authorId: $authorId, createdAt: $createdAt, text: $text, repliedMessageId: $repliedMessageId, attachments: $attachments)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageDataEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.chatId, chatId) || other.chatId == chatId) &&
            (identical(other.authorId, authorId) ||
                other.authorId == authorId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.repliedMessageId, repliedMessageId) ||
                other.repliedMessageId == repliedMessageId) &&
            const DeepCollectionEquality()
                .equals(other._attachments, _attachments));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      chatId,
      authorId,
      createdAt,
      text,
      repliedMessageId,
      const DeepCollectionEquality().hash(_attachments));

  /// Create a copy of MessageDataEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageDataEntityImplCopyWith<_$MessageDataEntityImpl> get copyWith =>
      __$$MessageDataEntityImplCopyWithImpl<_$MessageDataEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MessageDataEntityImplToJson(
      this,
    );
  }
}

abstract class _MessageDataEntity implements MessageDataEntity {
  const factory _MessageDataEntity(
      {required final String id,
      required final String chatId,
      required final String authorId,
      required final String createdAt,
      required final String text,
      final String? repliedMessageId,
      final List<AttachmentEntity> attachments}) = _$MessageDataEntityImpl;

  factory _MessageDataEntity.fromJson(Map<String, dynamic> json) =
      _$MessageDataEntityImpl.fromJson;

  @override
  String get id;
  @override
  String get chatId;
  @override
  String get authorId;
  @override
  String get createdAt;
  @override
  String get text;
  @override
  String? get repliedMessageId;
  @override
  List<AttachmentEntity> get attachments;

  /// Create a copy of MessageDataEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MessageDataEntityImplCopyWith<_$MessageDataEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
