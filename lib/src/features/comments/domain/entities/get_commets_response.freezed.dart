// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_commets_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetCommentsResponse _$GetCommentsResponseFromJson(Map<String, dynamic> json) {
  return _GetCommentsResponse.fromJson(json);
}

/// @nodoc
mixin _$GetCommentsResponse {
  String? get status => throw _privateConstructorUsedError;
  int? get count => throw _privateConstructorUsedError;
  String? get next => throw _privateConstructorUsedError;
  String? get previous => throw _privateConstructorUsedError;
  List<Comment>? get results => throw _privateConstructorUsedError;

  /// Serializes this GetCommentsResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetCommentsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetCommentsResponseCopyWith<GetCommentsResponse> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetCommentsResponseCopyWith<$Res> {
  factory $GetCommentsResponseCopyWith(GetCommentsResponse value, $Res Function(GetCommentsResponse) then) =
      _$GetCommentsResponseCopyWithImpl<$Res, GetCommentsResponse>;
  @useResult
  $Res call({String? status, int? count, String? next, String? previous, List<Comment>? results});
}

/// @nodoc
class _$GetCommentsResponseCopyWithImpl<$Res, $Val extends GetCommentsResponse>
    implements $GetCommentsResponseCopyWith<$Res> {
  _$GetCommentsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetCommentsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? count = freezed,
    Object? next = freezed,
    Object? previous = freezed,
    Object? results = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      previous: freezed == previous
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as String?,
      results: freezed == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Comment>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetCommentsResponseImplCopyWith<$Res> implements $GetCommentsResponseCopyWith<$Res> {
  factory _$$GetCommentsResponseImplCopyWith(
          _$GetCommentsResponseImpl value, $Res Function(_$GetCommentsResponseImpl) then) =
      __$$GetCommentsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? status, int? count, String? next, String? previous, List<Comment>? results});
}

/// @nodoc
class __$$GetCommentsResponseImplCopyWithImpl<$Res>
    extends _$GetCommentsResponseCopyWithImpl<$Res, _$GetCommentsResponseImpl>
    implements _$$GetCommentsResponseImplCopyWith<$Res> {
  __$$GetCommentsResponseImplCopyWithImpl(
      _$GetCommentsResponseImpl _value, $Res Function(_$GetCommentsResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetCommentsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? count = freezed,
    Object? next = freezed,
    Object? previous = freezed,
    Object? results = freezed,
  }) {
    return _then(_$GetCommentsResponseImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      previous: freezed == previous
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as String?,
      results: freezed == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Comment>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetCommentsResponseImpl implements _GetCommentsResponse {
  const _$GetCommentsResponseImpl({this.status, this.count, this.next, this.previous, final List<Comment>? results})
      : _results = results;

  factory _$GetCommentsResponseImpl.fromJson(Map<String, dynamic> json) => _$$GetCommentsResponseImplFromJson(json);

  @override
  final String? status;
  @override
  final int? count;
  @override
  final String? next;
  @override
  final String? previous;
  final List<Comment>? _results;
  @override
  List<Comment>? get results {
    final value = _results;
    if (value == null) return null;
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'GetCommentsResponse(status: $status, count: $count, next: $next, previous: $previous, results: $results)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCommentsResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.next, next) || other.next == next) &&
            (identical(other.previous, previous) || other.previous == previous) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, status, count, next, previous, const DeepCollectionEquality().hash(_results));

  /// Create a copy of GetCommentsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCommentsResponseImplCopyWith<_$GetCommentsResponseImpl> get copyWith =>
      __$$GetCommentsResponseImplCopyWithImpl<_$GetCommentsResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetCommentsResponseImplToJson(
      this,
    );
  }
}

abstract class _GetCommentsResponse implements GetCommentsResponse {
  const factory _GetCommentsResponse(
      {final String? status,
      final int? count,
      final String? next,
      final String? previous,
      final List<Comment>? results}) = _$GetCommentsResponseImpl;

  factory _GetCommentsResponse.fromJson(Map<String, dynamic> json) = _$GetCommentsResponseImpl.fromJson;

  @override
  String? get status;
  @override
  int? get count;
  @override
  String? get next;
  @override
  String? get previous;
  @override
  List<Comment>? get results;

  /// Create a copy of GetCommentsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetCommentsResponseImplCopyWith<_$GetCommentsResponseImpl> get copyWith => throw _privateConstructorUsedError;
}

Comment _$CommentFromJson(Map<String, dynamic> json) {
  return _Comment.fromJson(json);
}

/// @nodoc
mixin _$Comment {
  int? get id => throw _privateConstructorUsedError;
  int? get user => throw _privateConstructorUsedError;
  String? get username => throw _privateConstructorUsedError;
  String? get avatar => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;
  String? get rate => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;

  /// Serializes this Comment to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Comment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CommentCopyWith<Comment> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentCopyWith<$Res> {
  factory $CommentCopyWith(Comment value, $Res Function(Comment) then) = _$CommentCopyWithImpl<$Res, Comment>;
  @useResult
  $Res call(
      {int? id,
      int? user,
      String? username,
      String? avatar,
      String? content,
      String? rate,
      @JsonKey(name: 'created_at') DateTime? createdAt});
}

/// @nodoc
class _$CommentCopyWithImpl<$Res, $Val extends Comment> implements $CommentCopyWith<$Res> {
  _$CommentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Comment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? user = freezed,
    Object? username = freezed,
    Object? avatar = freezed,
    Object? content = freezed,
    Object? rate = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as int?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      rate: freezed == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CommentImplCopyWith<$Res> implements $CommentCopyWith<$Res> {
  factory _$$CommentImplCopyWith(_$CommentImpl value, $Res Function(_$CommentImpl) then) =
      __$$CommentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int? user,
      String? username,
      String? avatar,
      String? content,
      String? rate,
      @JsonKey(name: 'created_at') DateTime? createdAt});
}

/// @nodoc
class __$$CommentImplCopyWithImpl<$Res> extends _$CommentCopyWithImpl<$Res, _$CommentImpl>
    implements _$$CommentImplCopyWith<$Res> {
  __$$CommentImplCopyWithImpl(_$CommentImpl _value, $Res Function(_$CommentImpl) _then) : super(_value, _then);

  /// Create a copy of Comment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? user = freezed,
    Object? username = freezed,
    Object? avatar = freezed,
    Object? content = freezed,
    Object? rate = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_$CommentImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as int?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      rate: freezed == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CommentImpl implements _Comment {
  const _$CommentImpl(
      {this.id,
      this.user,
      this.username,
      this.avatar,
      this.content,
      this.rate,
      @JsonKey(name: 'created_at') this.createdAt});

  factory _$CommentImpl.fromJson(Map<String, dynamic> json) => _$$CommentImplFromJson(json);

  @override
  final int? id;
  @override
  final int? user;
  @override
  final String? username;
  @override
  final String? avatar;
  @override
  final String? content;
  @override
  final String? rate;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;

  @override
  String toString() {
    return 'Comment(id: $id, user: $user, username: $username, avatar: $avatar, content: $content, rate: $rate, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.username, username) || other.username == username) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.rate, rate) || other.rate == rate) &&
            (identical(other.createdAt, createdAt) || other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, user, username, avatar, content, rate, createdAt);

  /// Create a copy of Comment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentImplCopyWith<_$CommentImpl> get copyWith => __$$CommentImplCopyWithImpl<_$CommentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CommentImplToJson(
      this,
    );
  }
}

abstract class _Comment implements Comment {
  const factory _Comment(
      {final int? id,
      final int? user,
      final String? username,
      final String? avatar,
      final String? content,
      final String? rate,
      @JsonKey(name: 'created_at') final DateTime? createdAt}) = _$CommentImpl;

  factory _Comment.fromJson(Map<String, dynamic> json) = _$CommentImpl.fromJson;

  @override
  int? get id;
  @override
  int? get user;
  @override
  String? get username;
  @override
  String? get avatar;
  @override
  String? get content;
  @override
  String? get rate;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;

  /// Create a copy of Comment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CommentImplCopyWith<_$CommentImpl> get copyWith => throw _privateConstructorUsedError;
}
