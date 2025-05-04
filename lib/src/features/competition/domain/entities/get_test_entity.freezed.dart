// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_test_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetTestEntity _$GetTestEntityFromJson(Map<String, dynamic> json) {
  return _GetTestEntity.fromJson(json);
}

/// @nodoc
mixin _$GetTestEntity {
  Competition? get tournament => throw _privateConstructorUsedError;
  List<Question>? get questions => throw _privateConstructorUsedError;

  /// Serializes this GetTestEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetTestEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetTestEntityCopyWith<GetTestEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetTestEntityCopyWith<$Res> {
  factory $GetTestEntityCopyWith(
          GetTestEntity value, $Res Function(GetTestEntity) then) =
      _$GetTestEntityCopyWithImpl<$Res, GetTestEntity>;
  @useResult
  $Res call({Competition? tournament, List<Question>? questions});

  $CompetitionCopyWith<$Res>? get tournament;
}

/// @nodoc
class _$GetTestEntityCopyWithImpl<$Res, $Val extends GetTestEntity>
    implements $GetTestEntityCopyWith<$Res> {
  _$GetTestEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetTestEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tournament = freezed,
    Object? questions = freezed,
  }) {
    return _then(_value.copyWith(
      tournament: freezed == tournament
          ? _value.tournament
          : tournament // ignore: cast_nullable_to_non_nullable
              as Competition?,
      questions: freezed == questions
          ? _value.questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<Question>?,
    ) as $Val);
  }

  /// Create a copy of GetTestEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CompetitionCopyWith<$Res>? get tournament {
    if (_value.tournament == null) {
      return null;
    }

    return $CompetitionCopyWith<$Res>(_value.tournament!, (value) {
      return _then(_value.copyWith(tournament: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GetTestEntityImplCopyWith<$Res>
    implements $GetTestEntityCopyWith<$Res> {
  factory _$$GetTestEntityImplCopyWith(
          _$GetTestEntityImpl value, $Res Function(_$GetTestEntityImpl) then) =
      __$$GetTestEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Competition? tournament, List<Question>? questions});

  @override
  $CompetitionCopyWith<$Res>? get tournament;
}

/// @nodoc
class __$$GetTestEntityImplCopyWithImpl<$Res>
    extends _$GetTestEntityCopyWithImpl<$Res, _$GetTestEntityImpl>
    implements _$$GetTestEntityImplCopyWith<$Res> {
  __$$GetTestEntityImplCopyWithImpl(
      _$GetTestEntityImpl _value, $Res Function(_$GetTestEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetTestEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tournament = freezed,
    Object? questions = freezed,
  }) {
    return _then(_$GetTestEntityImpl(
      tournament: freezed == tournament
          ? _value.tournament
          : tournament // ignore: cast_nullable_to_non_nullable
              as Competition?,
      questions: freezed == questions
          ? _value._questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<Question>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetTestEntityImpl implements _GetTestEntity {
  const _$GetTestEntityImpl({this.tournament, final List<Question>? questions})
      : _questions = questions;

  factory _$GetTestEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetTestEntityImplFromJson(json);

  @override
  final Competition? tournament;
  final List<Question>? _questions;
  @override
  List<Question>? get questions {
    final value = _questions;
    if (value == null) return null;
    if (_questions is EqualUnmodifiableListView) return _questions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'GetTestEntity(tournament: $tournament, questions: $questions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetTestEntityImpl &&
            (identical(other.tournament, tournament) ||
                other.tournament == tournament) &&
            const DeepCollectionEquality()
                .equals(other._questions, _questions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, tournament, const DeepCollectionEquality().hash(_questions));

  /// Create a copy of GetTestEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetTestEntityImplCopyWith<_$GetTestEntityImpl> get copyWith =>
      __$$GetTestEntityImplCopyWithImpl<_$GetTestEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetTestEntityImplToJson(
      this,
    );
  }
}

abstract class _GetTestEntity implements GetTestEntity {
  const factory _GetTestEntity(
      {final Competition? tournament,
      final List<Question>? questions}) = _$GetTestEntityImpl;

  factory _GetTestEntity.fromJson(Map<String, dynamic> json) =
      _$GetTestEntityImpl.fromJson;

  @override
  Competition? get tournament;
  @override
  List<Question>? get questions;

  /// Create a copy of GetTestEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetTestEntityImplCopyWith<_$GetTestEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Question _$QuestionFromJson(Map<String, dynamic> json) {
  return _Question.fromJson(json);
}

/// @nodoc
mixin _$Question {
  int? get id => throw _privateConstructorUsedError;
  int? get test => throw _privateConstructorUsedError;
  @JsonKey(name: 'question_text')
  String? get questionText => throw _privateConstructorUsedError;
  @JsonKey(name: 'correct_answer')
  dynamic get correctAnswer => throw _privateConstructorUsedError;
  @JsonKey(name: 'answer_choices')
  List<String>? get answerChoices => throw _privateConstructorUsedError;

  /// Serializes this Question to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Question
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuestionCopyWith<Question> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionCopyWith<$Res> {
  factory $QuestionCopyWith(Question value, $Res Function(Question) then) =
      _$QuestionCopyWithImpl<$Res, Question>;
  @useResult
  $Res call(
      {int? id,
      int? test,
      @JsonKey(name: 'question_text') String? questionText,
      @JsonKey(name: 'correct_answer') dynamic correctAnswer,
      @JsonKey(name: 'answer_choices') List<String>? answerChoices});
}

/// @nodoc
class _$QuestionCopyWithImpl<$Res, $Val extends Question>
    implements $QuestionCopyWith<$Res> {
  _$QuestionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Question
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? test = freezed,
    Object? questionText = freezed,
    Object? correctAnswer = freezed,
    Object? answerChoices = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      test: freezed == test
          ? _value.test
          : test // ignore: cast_nullable_to_non_nullable
              as int?,
      questionText: freezed == questionText
          ? _value.questionText
          : questionText // ignore: cast_nullable_to_non_nullable
              as String?,
      correctAnswer: freezed == correctAnswer
          ? _value.correctAnswer
          : correctAnswer // ignore: cast_nullable_to_non_nullable
              as dynamic,
      answerChoices: freezed == answerChoices
          ? _value.answerChoices
          : answerChoices // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuestionImplCopyWith<$Res>
    implements $QuestionCopyWith<$Res> {
  factory _$$QuestionImplCopyWith(
          _$QuestionImpl value, $Res Function(_$QuestionImpl) then) =
      __$$QuestionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int? test,
      @JsonKey(name: 'question_text') String? questionText,
      @JsonKey(name: 'correct_answer') dynamic correctAnswer,
      @JsonKey(name: 'answer_choices') List<String>? answerChoices});
}

/// @nodoc
class __$$QuestionImplCopyWithImpl<$Res>
    extends _$QuestionCopyWithImpl<$Res, _$QuestionImpl>
    implements _$$QuestionImplCopyWith<$Res> {
  __$$QuestionImplCopyWithImpl(
      _$QuestionImpl _value, $Res Function(_$QuestionImpl) _then)
      : super(_value, _then);

  /// Create a copy of Question
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? test = freezed,
    Object? questionText = freezed,
    Object? correctAnswer = freezed,
    Object? answerChoices = freezed,
  }) {
    return _then(_$QuestionImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      test: freezed == test
          ? _value.test
          : test // ignore: cast_nullable_to_non_nullable
              as int?,
      questionText: freezed == questionText
          ? _value.questionText
          : questionText // ignore: cast_nullable_to_non_nullable
              as String?,
      correctAnswer: freezed == correctAnswer
          ? _value.correctAnswer
          : correctAnswer // ignore: cast_nullable_to_non_nullable
              as dynamic,
      answerChoices: freezed == answerChoices
          ? _value._answerChoices
          : answerChoices // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuestionImpl implements _Question {
  const _$QuestionImpl(
      {this.id,
      this.test,
      @JsonKey(name: 'question_text') this.questionText,
      @JsonKey(name: 'correct_answer') this.correctAnswer,
      @JsonKey(name: 'answer_choices') final List<String>? answerChoices})
      : _answerChoices = answerChoices;

  factory _$QuestionImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuestionImplFromJson(json);

  @override
  final int? id;
  @override
  final int? test;
  @override
  @JsonKey(name: 'question_text')
  final String? questionText;
  @override
  @JsonKey(name: 'correct_answer')
  final dynamic correctAnswer;
  final List<String>? _answerChoices;
  @override
  @JsonKey(name: 'answer_choices')
  List<String>? get answerChoices {
    final value = _answerChoices;
    if (value == null) return null;
    if (_answerChoices is EqualUnmodifiableListView) return _answerChoices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Question(id: $id, test: $test, questionText: $questionText, correctAnswer: $correctAnswer, answerChoices: $answerChoices)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.test, test) || other.test == test) &&
            (identical(other.questionText, questionText) ||
                other.questionText == questionText) &&
            const DeepCollectionEquality()
                .equals(other.correctAnswer, correctAnswer) &&
            const DeepCollectionEquality()
                .equals(other._answerChoices, _answerChoices));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      test,
      questionText,
      const DeepCollectionEquality().hash(correctAnswer),
      const DeepCollectionEquality().hash(_answerChoices));

  /// Create a copy of Question
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestionImplCopyWith<_$QuestionImpl> get copyWith =>
      __$$QuestionImplCopyWithImpl<_$QuestionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuestionImplToJson(
      this,
    );
  }
}

abstract class _Question implements Question {
  const factory _Question(
          {final int? id,
          final int? test,
          @JsonKey(name: 'question_text') final String? questionText,
          @JsonKey(name: 'correct_answer') final dynamic correctAnswer,
          @JsonKey(name: 'answer_choices') final List<String>? answerChoices}) =
      _$QuestionImpl;

  factory _Question.fromJson(Map<String, dynamic> json) =
      _$QuestionImpl.fromJson;

  @override
  int? get id;
  @override
  int? get test;
  @override
  @JsonKey(name: 'question_text')
  String? get questionText;
  @override
  @JsonKey(name: 'correct_answer')
  dynamic get correctAnswer;
  @override
  @JsonKey(name: 'answer_choices')
  List<String>? get answerChoices;

  /// Create a copy of Question
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuestionImplCopyWith<_$QuestionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
