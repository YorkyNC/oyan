// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_test_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetTestEntityImpl _$$GetTestEntityImplFromJson(Map<String, dynamic> json) =>
    _$GetTestEntityImpl(
      tournament: json['tournament'] == null
          ? null
          : Competition.fromJson(json['tournament'] as Map<String, dynamic>),
      questions: (json['questions'] as List<dynamic>?)
          ?.map((e) => Question.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GetTestEntityImplToJson(_$GetTestEntityImpl instance) =>
    <String, dynamic>{
      'tournament': instance.tournament,
      'questions': instance.questions,
    };

_$QuestionImpl _$$QuestionImplFromJson(Map<String, dynamic> json) =>
    _$QuestionImpl(
      id: (json['id'] as num?)?.toInt(),
      test: (json['test'] as num?)?.toInt(),
      questionText: json['question_text'] as String?,
      correctAnswer: json['correct_answer'],
      answerChoices: (json['answer_choices'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$QuestionImplToJson(_$QuestionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'test': instance.test,
      'question_text': instance.questionText,
      'correct_answer': instance.correctAnswer,
      'answer_choices': instance.answerChoices,
    };
