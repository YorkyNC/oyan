// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_my_books_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetMyBooksEntity _$GetMyBooksEntityFromJson(Map<String, dynamic> json) {
  return _GetMyBooksEntity.fromJson(json);
}

/// @nodoc
mixin _$GetMyBooksEntity {
  @JsonKey(name: 'count')
  int? get count => throw _privateConstructorUsedError;
  @JsonKey(name: 'next')
  String? get next => throw _privateConstructorUsedError;
  @JsonKey(name: 'previous')
  String? get previous => throw _privateConstructorUsedError;
  @JsonKey(name: 'results')
  List<Book>? get results => throw _privateConstructorUsedError;

  /// Serializes this GetMyBooksEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetMyBooksEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetMyBooksEntityCopyWith<GetMyBooksEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetMyBooksEntityCopyWith<$Res> {
  factory $GetMyBooksEntityCopyWith(
          GetMyBooksEntity value, $Res Function(GetMyBooksEntity) then) =
      _$GetMyBooksEntityCopyWithImpl<$Res, GetMyBooksEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'count') int? count,
      @JsonKey(name: 'next') String? next,
      @JsonKey(name: 'previous') String? previous,
      @JsonKey(name: 'results') List<Book>? results});
}

/// @nodoc
class _$GetMyBooksEntityCopyWithImpl<$Res, $Val extends GetMyBooksEntity>
    implements $GetMyBooksEntityCopyWith<$Res> {
  _$GetMyBooksEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetMyBooksEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = freezed,
    Object? next = freezed,
    Object? previous = freezed,
    Object? results = freezed,
  }) {
    return _then(_value.copyWith(
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
              as List<Book>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetMyBooksEntityImplCopyWith<$Res>
    implements $GetMyBooksEntityCopyWith<$Res> {
  factory _$$GetMyBooksEntityImplCopyWith(_$GetMyBooksEntityImpl value,
          $Res Function(_$GetMyBooksEntityImpl) then) =
      __$$GetMyBooksEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'count') int? count,
      @JsonKey(name: 'next') String? next,
      @JsonKey(name: 'previous') String? previous,
      @JsonKey(name: 'results') List<Book>? results});
}

/// @nodoc
class __$$GetMyBooksEntityImplCopyWithImpl<$Res>
    extends _$GetMyBooksEntityCopyWithImpl<$Res, _$GetMyBooksEntityImpl>
    implements _$$GetMyBooksEntityImplCopyWith<$Res> {
  __$$GetMyBooksEntityImplCopyWithImpl(_$GetMyBooksEntityImpl _value,
      $Res Function(_$GetMyBooksEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetMyBooksEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = freezed,
    Object? next = freezed,
    Object? previous = freezed,
    Object? results = freezed,
  }) {
    return _then(_$GetMyBooksEntityImpl(
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
              as List<Book>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetMyBooksEntityImpl implements _GetMyBooksEntity {
  const _$GetMyBooksEntityImpl(
      {@JsonKey(name: 'count') this.count,
      @JsonKey(name: 'next') this.next,
      @JsonKey(name: 'previous') this.previous,
      @JsonKey(name: 'results') final List<Book>? results})
      : _results = results;

  factory _$GetMyBooksEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetMyBooksEntityImplFromJson(json);

  @override
  @JsonKey(name: 'count')
  final int? count;
  @override
  @JsonKey(name: 'next')
  final String? next;
  @override
  @JsonKey(name: 'previous')
  final String? previous;
  final List<Book>? _results;
  @override
  @JsonKey(name: 'results')
  List<Book>? get results {
    final value = _results;
    if (value == null) return null;
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'GetMyBooksEntity(count: $count, next: $next, previous: $previous, results: $results)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetMyBooksEntityImpl &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.next, next) || other.next == next) &&
            (identical(other.previous, previous) ||
                other.previous == previous) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, count, next, previous,
      const DeepCollectionEquality().hash(_results));

  /// Create a copy of GetMyBooksEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetMyBooksEntityImplCopyWith<_$GetMyBooksEntityImpl> get copyWith =>
      __$$GetMyBooksEntityImplCopyWithImpl<_$GetMyBooksEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetMyBooksEntityImplToJson(
      this,
    );
  }
}

abstract class _GetMyBooksEntity implements GetMyBooksEntity {
  const factory _GetMyBooksEntity(
          {@JsonKey(name: 'count') final int? count,
          @JsonKey(name: 'next') final String? next,
          @JsonKey(name: 'previous') final String? previous,
          @JsonKey(name: 'results') final List<Book>? results}) =
      _$GetMyBooksEntityImpl;

  factory _GetMyBooksEntity.fromJson(Map<String, dynamic> json) =
      _$GetMyBooksEntityImpl.fromJson;

  @override
  @JsonKey(name: 'count')
  int? get count;
  @override
  @JsonKey(name: 'next')
  String? get next;
  @override
  @JsonKey(name: 'previous')
  String? get previous;
  @override
  @JsonKey(name: 'results')
  List<Book>? get results;

  /// Create a copy of GetMyBooksEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetMyBooksEntityImplCopyWith<_$GetMyBooksEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
