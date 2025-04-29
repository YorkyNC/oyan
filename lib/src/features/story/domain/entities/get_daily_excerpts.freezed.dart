// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_daily_excerpts.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetDailyExcerpts _$GetDailyExcerptsFromJson(Map<String, dynamic> json) {
  return _GetDailyExcerpts.fromJson(json);
}

/// @nodoc
mixin _$GetDailyExcerpts {
  @JsonKey(name: 'status')
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'dailyexcerpts')
  List<DailyExcerpt>? get dailyExcerpts => throw _privateConstructorUsedError;

  /// Serializes this GetDailyExcerpts to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetDailyExcerpts
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetDailyExcerptsCopyWith<GetDailyExcerpts> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetDailyExcerptsCopyWith<$Res> {
  factory $GetDailyExcerptsCopyWith(
          GetDailyExcerpts value, $Res Function(GetDailyExcerpts) then) =
      _$GetDailyExcerptsCopyWithImpl<$Res, GetDailyExcerpts>;
  @useResult
  $Res call(
      {@JsonKey(name: 'status') String? status,
      @JsonKey(name: 'dailyexcerpts') List<DailyExcerpt>? dailyExcerpts});
}

/// @nodoc
class _$GetDailyExcerptsCopyWithImpl<$Res, $Val extends GetDailyExcerpts>
    implements $GetDailyExcerptsCopyWith<$Res> {
  _$GetDailyExcerptsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetDailyExcerpts
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? dailyExcerpts = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      dailyExcerpts: freezed == dailyExcerpts
          ? _value.dailyExcerpts
          : dailyExcerpts // ignore: cast_nullable_to_non_nullable
              as List<DailyExcerpt>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetDailyExcerptsImplCopyWith<$Res>
    implements $GetDailyExcerptsCopyWith<$Res> {
  factory _$$GetDailyExcerptsImplCopyWith(_$GetDailyExcerptsImpl value,
          $Res Function(_$GetDailyExcerptsImpl) then) =
      __$$GetDailyExcerptsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'status') String? status,
      @JsonKey(name: 'dailyexcerpts') List<DailyExcerpt>? dailyExcerpts});
}

/// @nodoc
class __$$GetDailyExcerptsImplCopyWithImpl<$Res>
    extends _$GetDailyExcerptsCopyWithImpl<$Res, _$GetDailyExcerptsImpl>
    implements _$$GetDailyExcerptsImplCopyWith<$Res> {
  __$$GetDailyExcerptsImplCopyWithImpl(_$GetDailyExcerptsImpl _value,
      $Res Function(_$GetDailyExcerptsImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetDailyExcerpts
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? dailyExcerpts = freezed,
  }) {
    return _then(_$GetDailyExcerptsImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      dailyExcerpts: freezed == dailyExcerpts
          ? _value._dailyExcerpts
          : dailyExcerpts // ignore: cast_nullable_to_non_nullable
              as List<DailyExcerpt>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetDailyExcerptsImpl implements _GetDailyExcerpts {
  const _$GetDailyExcerptsImpl(
      {@JsonKey(name: 'status') this.status,
      @JsonKey(name: 'dailyexcerpts') final List<DailyExcerpt>? dailyExcerpts})
      : _dailyExcerpts = dailyExcerpts;

  factory _$GetDailyExcerptsImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetDailyExcerptsImplFromJson(json);

  @override
  @JsonKey(name: 'status')
  final String? status;
  final List<DailyExcerpt>? _dailyExcerpts;
  @override
  @JsonKey(name: 'dailyexcerpts')
  List<DailyExcerpt>? get dailyExcerpts {
    final value = _dailyExcerpts;
    if (value == null) return null;
    if (_dailyExcerpts is EqualUnmodifiableListView) return _dailyExcerpts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'GetDailyExcerpts(status: $status, dailyExcerpts: $dailyExcerpts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetDailyExcerptsImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._dailyExcerpts, _dailyExcerpts));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, status, const DeepCollectionEquality().hash(_dailyExcerpts));

  /// Create a copy of GetDailyExcerpts
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetDailyExcerptsImplCopyWith<_$GetDailyExcerptsImpl> get copyWith =>
      __$$GetDailyExcerptsImplCopyWithImpl<_$GetDailyExcerptsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetDailyExcerptsImplToJson(
      this,
    );
  }
}

abstract class _GetDailyExcerpts implements GetDailyExcerpts {
  const factory _GetDailyExcerpts(
      {@JsonKey(name: 'status') final String? status,
      @JsonKey(name: 'dailyexcerpts')
      final List<DailyExcerpt>? dailyExcerpts}) = _$GetDailyExcerptsImpl;

  factory _GetDailyExcerpts.fromJson(Map<String, dynamic> json) =
      _$GetDailyExcerptsImpl.fromJson;

  @override
  @JsonKey(name: 'status')
  String? get status;
  @override
  @JsonKey(name: 'dailyexcerpts')
  List<DailyExcerpt>? get dailyExcerpts;

  /// Create a copy of GetDailyExcerpts
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetDailyExcerptsImplCopyWith<_$GetDailyExcerptsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DailyExcerpt _$DailyExcerptFromJson(Map<String, dynamic> json) {
  return _DailyExcerpt.fromJson(json);
}

/// @nodoc
mixin _$DailyExcerpt {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'text')
  String? get text => throw _privateConstructorUsedError;
  @JsonKey(name: 'book')
  int? get book => throw _privateConstructorUsedError;
  @JsonKey(name: 'generated_image_url')
  String? get generatedImageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'date')
  DateTime? get date => throw _privateConstructorUsedError;

  /// Serializes this DailyExcerpt to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DailyExcerpt
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DailyExcerptCopyWith<DailyExcerpt> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DailyExcerptCopyWith<$Res> {
  factory $DailyExcerptCopyWith(
          DailyExcerpt value, $Res Function(DailyExcerpt) then) =
      _$DailyExcerptCopyWithImpl<$Res, DailyExcerpt>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'text') String? text,
      @JsonKey(name: 'book') int? book,
      @JsonKey(name: 'generated_image_url') String? generatedImageUrl,
      @JsonKey(name: 'date') DateTime? date});
}

/// @nodoc
class _$DailyExcerptCopyWithImpl<$Res, $Val extends DailyExcerpt>
    implements $DailyExcerptCopyWith<$Res> {
  _$DailyExcerptCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DailyExcerpt
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? text = freezed,
    Object? book = freezed,
    Object? generatedImageUrl = freezed,
    Object? date = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      book: freezed == book
          ? _value.book
          : book // ignore: cast_nullable_to_non_nullable
              as int?,
      generatedImageUrl: freezed == generatedImageUrl
          ? _value.generatedImageUrl
          : generatedImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DailyExcerptImplCopyWith<$Res>
    implements $DailyExcerptCopyWith<$Res> {
  factory _$$DailyExcerptImplCopyWith(
          _$DailyExcerptImpl value, $Res Function(_$DailyExcerptImpl) then) =
      __$$DailyExcerptImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'text') String? text,
      @JsonKey(name: 'book') int? book,
      @JsonKey(name: 'generated_image_url') String? generatedImageUrl,
      @JsonKey(name: 'date') DateTime? date});
}

/// @nodoc
class __$$DailyExcerptImplCopyWithImpl<$Res>
    extends _$DailyExcerptCopyWithImpl<$Res, _$DailyExcerptImpl>
    implements _$$DailyExcerptImplCopyWith<$Res> {
  __$$DailyExcerptImplCopyWithImpl(
      _$DailyExcerptImpl _value, $Res Function(_$DailyExcerptImpl) _then)
      : super(_value, _then);

  /// Create a copy of DailyExcerpt
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? text = freezed,
    Object? book = freezed,
    Object? generatedImageUrl = freezed,
    Object? date = freezed,
  }) {
    return _then(_$DailyExcerptImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      book: freezed == book
          ? _value.book
          : book // ignore: cast_nullable_to_non_nullable
              as int?,
      generatedImageUrl: freezed == generatedImageUrl
          ? _value.generatedImageUrl
          : generatedImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DailyExcerptImpl implements _DailyExcerpt {
  const _$DailyExcerptImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'text') this.text,
      @JsonKey(name: 'book') this.book,
      @JsonKey(name: 'generated_image_url') this.generatedImageUrl,
      @JsonKey(name: 'date') this.date});

  factory _$DailyExcerptImpl.fromJson(Map<String, dynamic> json) =>
      _$$DailyExcerptImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'text')
  final String? text;
  @override
  @JsonKey(name: 'book')
  final int? book;
  @override
  @JsonKey(name: 'generated_image_url')
  final String? generatedImageUrl;
  @override
  @JsonKey(name: 'date')
  final DateTime? date;

  @override
  String toString() {
    return 'DailyExcerpt(id: $id, text: $text, book: $book, generatedImageUrl: $generatedImageUrl, date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DailyExcerptImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.book, book) || other.book == book) &&
            (identical(other.generatedImageUrl, generatedImageUrl) ||
                other.generatedImageUrl == generatedImageUrl) &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, text, book, generatedImageUrl, date);

  /// Create a copy of DailyExcerpt
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DailyExcerptImplCopyWith<_$DailyExcerptImpl> get copyWith =>
      __$$DailyExcerptImplCopyWithImpl<_$DailyExcerptImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DailyExcerptImplToJson(
      this,
    );
  }
}

abstract class _DailyExcerpt implements DailyExcerpt {
  const factory _DailyExcerpt(
      {@JsonKey(name: 'id') final int? id,
      @JsonKey(name: 'text') final String? text,
      @JsonKey(name: 'book') final int? book,
      @JsonKey(name: 'generated_image_url') final String? generatedImageUrl,
      @JsonKey(name: 'date') final DateTime? date}) = _$DailyExcerptImpl;

  factory _DailyExcerpt.fromJson(Map<String, dynamic> json) =
      _$DailyExcerptImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'text')
  String? get text;
  @override
  @JsonKey(name: 'book')
  int? get book;
  @override
  @JsonKey(name: 'generated_image_url')
  String? get generatedImageUrl;
  @override
  @JsonKey(name: 'date')
  DateTime? get date;

  /// Create a copy of DailyExcerpt
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DailyExcerptImplCopyWith<_$DailyExcerptImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
