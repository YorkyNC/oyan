// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_post_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetPostRequest _$GetPostRequestFromJson(Map<String, dynamic> json) {
  return _GetPostRequest.fromJson(json);
}

/// @nodoc
mixin _$GetPostRequest {
  String get postId => throw _privateConstructorUsedError;

  /// Serializes this GetPostRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetPostRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetPostRequestCopyWith<GetPostRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetPostRequestCopyWith<$Res> {
  factory $GetPostRequestCopyWith(
          GetPostRequest value, $Res Function(GetPostRequest) then) =
      _$GetPostRequestCopyWithImpl<$Res, GetPostRequest>;
  @useResult
  $Res call({String postId});
}

/// @nodoc
class _$GetPostRequestCopyWithImpl<$Res, $Val extends GetPostRequest>
    implements $GetPostRequestCopyWith<$Res> {
  _$GetPostRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetPostRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postId = null,
  }) {
    return _then(_value.copyWith(
      postId: null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetPostRequestImplCopyWith<$Res>
    implements $GetPostRequestCopyWith<$Res> {
  factory _$$GetPostRequestImplCopyWith(_$GetPostRequestImpl value,
          $Res Function(_$GetPostRequestImpl) then) =
      __$$GetPostRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String postId});
}

/// @nodoc
class __$$GetPostRequestImplCopyWithImpl<$Res>
    extends _$GetPostRequestCopyWithImpl<$Res, _$GetPostRequestImpl>
    implements _$$GetPostRequestImplCopyWith<$Res> {
  __$$GetPostRequestImplCopyWithImpl(
      _$GetPostRequestImpl _value, $Res Function(_$GetPostRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetPostRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postId = null,
  }) {
    return _then(_$GetPostRequestImpl(
      postId: null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetPostRequestImpl implements _GetPostRequest {
  const _$GetPostRequestImpl({required this.postId});

  factory _$GetPostRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetPostRequestImplFromJson(json);

  @override
  final String postId;

  @override
  String toString() {
    return 'GetPostRequest(postId: $postId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPostRequestImpl &&
            (identical(other.postId, postId) || other.postId == postId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, postId);

  /// Create a copy of GetPostRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetPostRequestImplCopyWith<_$GetPostRequestImpl> get copyWith =>
      __$$GetPostRequestImplCopyWithImpl<_$GetPostRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetPostRequestImplToJson(
      this,
    );
  }
}

abstract class _GetPostRequest implements GetPostRequest {
  const factory _GetPostRequest({required final String postId}) =
      _$GetPostRequestImpl;

  factory _GetPostRequest.fromJson(Map<String, dynamic> json) =
      _$GetPostRequestImpl.fromJson;

  @override
  String get postId;

  /// Create a copy of GetPostRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetPostRequestImplCopyWith<_$GetPostRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
