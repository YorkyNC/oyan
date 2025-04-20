// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_genre_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AddGenreRequest _$AddGenreRequestFromJson(Map<String, dynamic> json) {
  return _AddGenreRequest.fromJson(json);
}

/// @nodoc
mixin _$AddGenreRequest {
  List<int> get genres => throw _privateConstructorUsedError;

  /// Serializes this AddGenreRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AddGenreRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddGenreRequestCopyWith<AddGenreRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddGenreRequestCopyWith<$Res> {
  factory $AddGenreRequestCopyWith(
          AddGenreRequest value, $Res Function(AddGenreRequest) then) =
      _$AddGenreRequestCopyWithImpl<$Res, AddGenreRequest>;
  @useResult
  $Res call({List<int> genres});
}

/// @nodoc
class _$AddGenreRequestCopyWithImpl<$Res, $Val extends AddGenreRequest>
    implements $AddGenreRequestCopyWith<$Res> {
  _$AddGenreRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddGenreRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? genres = null,
  }) {
    return _then(_value.copyWith(
      genres: null == genres
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddGenreRequestImplCopyWith<$Res>
    implements $AddGenreRequestCopyWith<$Res> {
  factory _$$AddGenreRequestImplCopyWith(_$AddGenreRequestImpl value,
          $Res Function(_$AddGenreRequestImpl) then) =
      __$$AddGenreRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<int> genres});
}

/// @nodoc
class __$$AddGenreRequestImplCopyWithImpl<$Res>
    extends _$AddGenreRequestCopyWithImpl<$Res, _$AddGenreRequestImpl>
    implements _$$AddGenreRequestImplCopyWith<$Res> {
  __$$AddGenreRequestImplCopyWithImpl(
      _$AddGenreRequestImpl _value, $Res Function(_$AddGenreRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddGenreRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? genres = null,
  }) {
    return _then(_$AddGenreRequestImpl(
      genres: null == genres
          ? _value._genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddGenreRequestImpl implements _AddGenreRequest {
  const _$AddGenreRequestImpl({required final List<int> genres})
      : _genres = genres;

  factory _$AddGenreRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddGenreRequestImplFromJson(json);

  final List<int> _genres;
  @override
  List<int> get genres {
    if (_genres is EqualUnmodifiableListView) return _genres;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_genres);
  }

  @override
  String toString() {
    return 'AddGenreRequest(genres: $genres)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddGenreRequestImpl &&
            const DeepCollectionEquality().equals(other._genres, _genres));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_genres));

  /// Create a copy of AddGenreRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddGenreRequestImplCopyWith<_$AddGenreRequestImpl> get copyWith =>
      __$$AddGenreRequestImplCopyWithImpl<_$AddGenreRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddGenreRequestImplToJson(
      this,
    );
  }
}

abstract class _AddGenreRequest implements AddGenreRequest {
  const factory _AddGenreRequest({required final List<int> genres}) =
      _$AddGenreRequestImpl;

  factory _AddGenreRequest.fromJson(Map<String, dynamic> json) =
      _$AddGenreRequestImpl.fromJson;

  @override
  List<int> get genres;

  /// Create a copy of AddGenreRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddGenreRequestImplCopyWith<_$AddGenreRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
