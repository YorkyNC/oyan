// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_comments_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AddCommentResponse _$AddCommentResponseFromJson(Map<String, dynamic> json) {
  return _AddCommentResponse.fromJson(json);
}

/// @nodoc
mixin _$AddCommentResponse {
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'new_rating')
  double? get newRating => throw _privateConstructorUsedError;

  /// Serializes this AddCommentResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AddCommentResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddCommentResponseCopyWith<AddCommentResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddCommentResponseCopyWith<$Res> {
  factory $AddCommentResponseCopyWith(
          AddCommentResponse value, $Res Function(AddCommentResponse) then) =
      _$AddCommentResponseCopyWithImpl<$Res, AddCommentResponse>;
  @useResult
  $Res call({String? status, @JsonKey(name: 'new_rating') double? newRating});
}

/// @nodoc
class _$AddCommentResponseCopyWithImpl<$Res, $Val extends AddCommentResponse>
    implements $AddCommentResponseCopyWith<$Res> {
  _$AddCommentResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddCommentResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? newRating = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      newRating: freezed == newRating
          ? _value.newRating
          : newRating // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddCommentResponseImplCopyWith<$Res>
    implements $AddCommentResponseCopyWith<$Res> {
  factory _$$AddCommentResponseImplCopyWith(_$AddCommentResponseImpl value,
          $Res Function(_$AddCommentResponseImpl) then) =
      __$$AddCommentResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? status, @JsonKey(name: 'new_rating') double? newRating});
}

/// @nodoc
class __$$AddCommentResponseImplCopyWithImpl<$Res>
    extends _$AddCommentResponseCopyWithImpl<$Res, _$AddCommentResponseImpl>
    implements _$$AddCommentResponseImplCopyWith<$Res> {
  __$$AddCommentResponseImplCopyWithImpl(_$AddCommentResponseImpl _value,
      $Res Function(_$AddCommentResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddCommentResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? newRating = freezed,
  }) {
    return _then(_$AddCommentResponseImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      newRating: freezed == newRating
          ? _value.newRating
          : newRating // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddCommentResponseImpl implements _AddCommentResponse {
  const _$AddCommentResponseImpl(
      {this.status, @JsonKey(name: 'new_rating') this.newRating});

  factory _$AddCommentResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddCommentResponseImplFromJson(json);

  @override
  final String? status;
  @override
  @JsonKey(name: 'new_rating')
  final double? newRating;

  @override
  String toString() {
    return 'AddCommentResponse(status: $status, newRating: $newRating)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddCommentResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.newRating, newRating) ||
                other.newRating == newRating));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, newRating);

  /// Create a copy of AddCommentResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddCommentResponseImplCopyWith<_$AddCommentResponseImpl> get copyWith =>
      __$$AddCommentResponseImplCopyWithImpl<_$AddCommentResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddCommentResponseImplToJson(
      this,
    );
  }
}

abstract class _AddCommentResponse implements AddCommentResponse {
  const factory _AddCommentResponse(
          {final String? status,
          @JsonKey(name: 'new_rating') final double? newRating}) =
      _$AddCommentResponseImpl;

  factory _AddCommentResponse.fromJson(Map<String, dynamic> json) =
      _$AddCommentResponseImpl.fromJson;

  @override
  String? get status;
  @override
  @JsonKey(name: 'new_rating')
  double? get newRating;

  /// Create a copy of AddCommentResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddCommentResponseImplCopyWith<_$AddCommentResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
