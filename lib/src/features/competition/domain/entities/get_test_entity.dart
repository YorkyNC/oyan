import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:oyan/src/features/competition/domain/entities/competition_entity.dart';

part 'get_test_entity.freezed.dart';
part 'get_test_entity.g.dart';

@freezed
class GetTestEntity with _$GetTestEntity {
  const factory GetTestEntity({
    Competition? tournament,
    List<Question>? questions,
  }) = _GetTestEntity;

  factory GetTestEntity.fromJson(Map<String, dynamic> json) => _$GetTestEntityFromJson(json);
}

@freezed
class Question with _$Question {
  const factory Question({
    int? id,
    int? test,
    @JsonKey(name: 'question_text') String? questionText,
    @JsonKey(name: 'correct_answer') dynamic correctAnswer,
    @JsonKey(name: 'answer_choices') List<String>? answerChoices,
  }) = _Question;

  factory Question.fromJson(Map<String, dynamic> json) => _$QuestionFromJson(json);
}
