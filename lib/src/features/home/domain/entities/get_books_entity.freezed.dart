// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_books_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetBooksEntity _$GetBooksEntityFromJson(Map<String, dynamic> json) {
  return _GetBooksEntity.fromJson(json);
}

/// @nodoc
mixin _$GetBooksEntity {
  int? get count => throw _privateConstructorUsedError;
  String? get next => throw _privateConstructorUsedError;
  String? get previous => throw _privateConstructorUsedError;
  List<Book>? get results => throw _privateConstructorUsedError;

  /// Serializes this GetBooksEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetBooksEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetBooksEntityCopyWith<GetBooksEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetBooksEntityCopyWith<$Res> {
  factory $GetBooksEntityCopyWith(
          GetBooksEntity value, $Res Function(GetBooksEntity) then) =
      _$GetBooksEntityCopyWithImpl<$Res, GetBooksEntity>;
  @useResult
  $Res call({int? count, String? next, String? previous, List<Book>? results});
}

/// @nodoc
class _$GetBooksEntityCopyWithImpl<$Res, $Val extends GetBooksEntity>
    implements $GetBooksEntityCopyWith<$Res> {
  _$GetBooksEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetBooksEntity
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
abstract class _$$GetBooksEntityImplCopyWith<$Res>
    implements $GetBooksEntityCopyWith<$Res> {
  factory _$$GetBooksEntityImplCopyWith(_$GetBooksEntityImpl value,
          $Res Function(_$GetBooksEntityImpl) then) =
      __$$GetBooksEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? count, String? next, String? previous, List<Book>? results});
}

/// @nodoc
class __$$GetBooksEntityImplCopyWithImpl<$Res>
    extends _$GetBooksEntityCopyWithImpl<$Res, _$GetBooksEntityImpl>
    implements _$$GetBooksEntityImplCopyWith<$Res> {
  __$$GetBooksEntityImplCopyWithImpl(
      _$GetBooksEntityImpl _value, $Res Function(_$GetBooksEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetBooksEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = freezed,
    Object? next = freezed,
    Object? previous = freezed,
    Object? results = freezed,
  }) {
    return _then(_$GetBooksEntityImpl(
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
class _$GetBooksEntityImpl implements _GetBooksEntity {
  const _$GetBooksEntityImpl(
      {this.count, this.next, this.previous, final List<Book>? results})
      : _results = results;

  factory _$GetBooksEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetBooksEntityImplFromJson(json);

  @override
  final int? count;
  @override
  final String? next;
  @override
  final String? previous;
  final List<Book>? _results;
  @override
  List<Book>? get results {
    final value = _results;
    if (value == null) return null;
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'GetBooksEntity(count: $count, next: $next, previous: $previous, results: $results)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetBooksEntityImpl &&
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

  /// Create a copy of GetBooksEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetBooksEntityImplCopyWith<_$GetBooksEntityImpl> get copyWith =>
      __$$GetBooksEntityImplCopyWithImpl<_$GetBooksEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetBooksEntityImplToJson(
      this,
    );
  }
}

abstract class _GetBooksEntity implements GetBooksEntity {
  const factory _GetBooksEntity(
      {final int? count,
      final String? next,
      final String? previous,
      final List<Book>? results}) = _$GetBooksEntityImpl;

  factory _GetBooksEntity.fromJson(Map<String, dynamic> json) =
      _$GetBooksEntityImpl.fromJson;

  @override
  int? get count;
  @override
  String? get next;
  @override
  String? get previous;
  @override
  List<Book>? get results;

  /// Create a copy of GetBooksEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetBooksEntityImplCopyWith<_$GetBooksEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
