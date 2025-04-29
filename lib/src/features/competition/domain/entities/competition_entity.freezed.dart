// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'competition_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Competition _$CompetitionFromJson(Map<String, dynamic> json) {
  return _Competition.fromJson(json);
}

/// @nodoc
mixin _$Competition {
  int? get id => throw _privateConstructorUsedError;
  int? get book => throw _privateConstructorUsedError;
  @JsonKey(name: 'from_date')
  DateTime? get fromDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'to_date')
  DateTime? get toDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'page_from')
  int? get pageFrom => throw _privateConstructorUsedError;
  @JsonKey(name: 'page_to')
  int? get pageTo => throw _privateConstructorUsedError;
  String? get prize => throw _privateConstructorUsedError;
  int? get players => throw _privateConstructorUsedError;
  int? get questions => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  CompetitionStatus? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this Competition to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Competition
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CompetitionCopyWith<Competition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompetitionCopyWith<$Res> {
  factory $CompetitionCopyWith(
          Competition value, $Res Function(Competition) then) =
      _$CompetitionCopyWithImpl<$Res, Competition>;
  @useResult
  $Res call(
      {int? id,
      int? book,
      @JsonKey(name: 'from_date') DateTime? fromDate,
      @JsonKey(name: 'to_date') DateTime? toDate,
      @JsonKey(name: 'page_from') int? pageFrom,
      @JsonKey(name: 'page_to') int? pageTo,
      String? prize,
      int? players,
      int? questions,
      String? description,
      CompetitionStatus? status,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class _$CompetitionCopyWithImpl<$Res, $Val extends Competition>
    implements $CompetitionCopyWith<$Res> {
  _$CompetitionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Competition
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? book = freezed,
    Object? fromDate = freezed,
    Object? toDate = freezed,
    Object? pageFrom = freezed,
    Object? pageTo = freezed,
    Object? prize = freezed,
    Object? players = freezed,
    Object? questions = freezed,
    Object? description = freezed,
    Object? status = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      book: freezed == book
          ? _value.book
          : book // ignore: cast_nullable_to_non_nullable
              as int?,
      fromDate: freezed == fromDate
          ? _value.fromDate
          : fromDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      toDate: freezed == toDate
          ? _value.toDate
          : toDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      pageFrom: freezed == pageFrom
          ? _value.pageFrom
          : pageFrom // ignore: cast_nullable_to_non_nullable
              as int?,
      pageTo: freezed == pageTo
          ? _value.pageTo
          : pageTo // ignore: cast_nullable_to_non_nullable
              as int?,
      prize: freezed == prize
          ? _value.prize
          : prize // ignore: cast_nullable_to_non_nullable
              as String?,
      players: freezed == players
          ? _value.players
          : players // ignore: cast_nullable_to_non_nullable
              as int?,
      questions: freezed == questions
          ? _value.questions
          : questions // ignore: cast_nullable_to_non_nullable
              as int?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CompetitionStatus?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CompetitionImplCopyWith<$Res>
    implements $CompetitionCopyWith<$Res> {
  factory _$$CompetitionImplCopyWith(
          _$CompetitionImpl value, $Res Function(_$CompetitionImpl) then) =
      __$$CompetitionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int? book,
      @JsonKey(name: 'from_date') DateTime? fromDate,
      @JsonKey(name: 'to_date') DateTime? toDate,
      @JsonKey(name: 'page_from') int? pageFrom,
      @JsonKey(name: 'page_to') int? pageTo,
      String? prize,
      int? players,
      int? questions,
      String? description,
      CompetitionStatus? status,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class __$$CompetitionImplCopyWithImpl<$Res>
    extends _$CompetitionCopyWithImpl<$Res, _$CompetitionImpl>
    implements _$$CompetitionImplCopyWith<$Res> {
  __$$CompetitionImplCopyWithImpl(
      _$CompetitionImpl _value, $Res Function(_$CompetitionImpl) _then)
      : super(_value, _then);

  /// Create a copy of Competition
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? book = freezed,
    Object? fromDate = freezed,
    Object? toDate = freezed,
    Object? pageFrom = freezed,
    Object? pageTo = freezed,
    Object? prize = freezed,
    Object? players = freezed,
    Object? questions = freezed,
    Object? description = freezed,
    Object? status = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$CompetitionImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      book: freezed == book
          ? _value.book
          : book // ignore: cast_nullable_to_non_nullable
              as int?,
      fromDate: freezed == fromDate
          ? _value.fromDate
          : fromDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      toDate: freezed == toDate
          ? _value.toDate
          : toDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      pageFrom: freezed == pageFrom
          ? _value.pageFrom
          : pageFrom // ignore: cast_nullable_to_non_nullable
              as int?,
      pageTo: freezed == pageTo
          ? _value.pageTo
          : pageTo // ignore: cast_nullable_to_non_nullable
              as int?,
      prize: freezed == prize
          ? _value.prize
          : prize // ignore: cast_nullable_to_non_nullable
              as String?,
      players: freezed == players
          ? _value.players
          : players // ignore: cast_nullable_to_non_nullable
              as int?,
      questions: freezed == questions
          ? _value.questions
          : questions // ignore: cast_nullable_to_non_nullable
              as int?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CompetitionStatus?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CompetitionImpl implements _Competition {
  const _$CompetitionImpl(
      {this.id,
      this.book,
      @JsonKey(name: 'from_date') this.fromDate,
      @JsonKey(name: 'to_date') this.toDate,
      @JsonKey(name: 'page_from') this.pageFrom,
      @JsonKey(name: 'page_to') this.pageTo,
      this.prize,
      this.players,
      this.questions,
      this.description,
      this.status,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt});

  factory _$CompetitionImpl.fromJson(Map<String, dynamic> json) =>
      _$$CompetitionImplFromJson(json);

  @override
  final int? id;
  @override
  final int? book;
  @override
  @JsonKey(name: 'from_date')
  final DateTime? fromDate;
  @override
  @JsonKey(name: 'to_date')
  final DateTime? toDate;
  @override
  @JsonKey(name: 'page_from')
  final int? pageFrom;
  @override
  @JsonKey(name: 'page_to')
  final int? pageTo;
  @override
  final String? prize;
  @override
  final int? players;
  @override
  final int? questions;
  @override
  final String? description;
  @override
  final CompetitionStatus? status;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'Competition(id: $id, book: $book, fromDate: $fromDate, toDate: $toDate, pageFrom: $pageFrom, pageTo: $pageTo, prize: $prize, players: $players, questions: $questions, description: $description, status: $status, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompetitionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.book, book) || other.book == book) &&
            (identical(other.fromDate, fromDate) ||
                other.fromDate == fromDate) &&
            (identical(other.toDate, toDate) || other.toDate == toDate) &&
            (identical(other.pageFrom, pageFrom) ||
                other.pageFrom == pageFrom) &&
            (identical(other.pageTo, pageTo) || other.pageTo == pageTo) &&
            (identical(other.prize, prize) || other.prize == prize) &&
            (identical(other.players, players) || other.players == players) &&
            (identical(other.questions, questions) ||
                other.questions == questions) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      book,
      fromDate,
      toDate,
      pageFrom,
      pageTo,
      prize,
      players,
      questions,
      description,
      status,
      createdAt,
      updatedAt);

  /// Create a copy of Competition
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CompetitionImplCopyWith<_$CompetitionImpl> get copyWith =>
      __$$CompetitionImplCopyWithImpl<_$CompetitionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CompetitionImplToJson(
      this,
    );
  }
}

abstract class _Competition implements Competition {
  const factory _Competition(
          {final int? id,
          final int? book,
          @JsonKey(name: 'from_date') final DateTime? fromDate,
          @JsonKey(name: 'to_date') final DateTime? toDate,
          @JsonKey(name: 'page_from') final int? pageFrom,
          @JsonKey(name: 'page_to') final int? pageTo,
          final String? prize,
          final int? players,
          final int? questions,
          final String? description,
          final CompetitionStatus? status,
          @JsonKey(name: 'created_at') final DateTime? createdAt,
          @JsonKey(name: 'updated_at') final DateTime? updatedAt}) =
      _$CompetitionImpl;

  factory _Competition.fromJson(Map<String, dynamic> json) =
      _$CompetitionImpl.fromJson;

  @override
  int? get id;
  @override
  int? get book;
  @override
  @JsonKey(name: 'from_date')
  DateTime? get fromDate;
  @override
  @JsonKey(name: 'to_date')
  DateTime? get toDate;
  @override
  @JsonKey(name: 'page_from')
  int? get pageFrom;
  @override
  @JsonKey(name: 'page_to')
  int? get pageTo;
  @override
  String? get prize;
  @override
  int? get players;
  @override
  int? get questions;
  @override
  String? get description;
  @override
  CompetitionStatus? get status;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;

  /// Create a copy of Competition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CompetitionImplCopyWith<_$CompetitionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
