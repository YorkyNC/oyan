import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oyan/src/core/extensions/build_context_extension.dart';
import 'package:oyan/src/core/services/injectable/injectable_service.dart';
import 'package:oyan/src/features/competition/domain/requests/test_add_request.dart';
import 'package:oyan/src/features/competition/domain/requests/test_request.dart';
import 'package:oyan/src/features/competition/presentation/bloc/competition_bloc.dart';

class TestPage extends StatefulWidget {
  final int tournamentId;
  const TestPage({Key? key, required this.tournamentId}) : super(key: key);

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  late CompetitionBloc _competitionBloc;
  final Map<int, int> _selectedAnswers = {};
  Timer? _timer;
  int _seconds = 0;

  @override
  void initState() {
    super.initState();
    _competitionBloc = getIt<CompetitionBloc>();
    _competitionBloc.add(CompetitionEvent.getTest(TestRequest(tournamentId: widget.tournamentId)));
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        _seconds++;
      });
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _competitionBloc,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: const Color(0xFF6C73E1),
          elevation: 0,
          centerTitle: true,
          title: const Text(
            'THE BOOK TEST',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 20,
              letterSpacing: 1.2,
            ),
          ),
          iconTheme: const IconThemeData(color: Colors.white),
        ),
        body: BlocBuilder<CompetitionBloc, CompetitionState>(
          builder: (context, state) {
            return state.maybeWhen(
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (msg) => Center(child: Text(msg)),
              loaded: (viewModel) {
                print(viewModel);
                final test = viewModel.test;
                if (test == null || test.questions == null) {
                  return const Center(child: Text('No test available.'));
                }
                final questions = test.questions!;
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 16.0),
                      child: Text('Time: [34m$_seconds[0m s', style: const TextStyle(fontSize: 16)),
                    ),
                    Expanded(
                      child: ListView.separated(
                        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
                        itemCount: questions.length,
                        separatorBuilder: (_, __) => const SizedBox(height: 32),
                        itemBuilder: (context, qIdx) {
                          final question = questions[qIdx];
                          final answerChoices = question.answerChoices;
                          final isTrueFalse = (answerChoices == null) ||
                              (answerChoices.isEmpty) ||
                              (answerChoices.length == 1 && answerChoices[0].trim().isEmpty) ||
                              (question.correctAnswer is bool) ||
                              (answerChoices.length == 2 &&
                                  answerChoices.contains("True") &&
                                  answerChoices.contains("False"));
                          final choices = isTrueFalse ? ["True", "False"] : (answerChoices ?? []);

                          // Debug print
                          print(
                              'Q[32m${qIdx + 1}[0m: answerChoices=$answerChoices, correctAnswer=${question.correctAnswer}');

                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '${qIdx + 1}. ${question.questionText}',
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                ),
                              ),
                              const SizedBox(height: 18),
                              ...List.generate(
                                choices.length,
                                (aIdx) {
                                  final selected = _selectedAnswers[qIdx] == aIdx;
                                  return Padding(
                                    padding: const EdgeInsets.only(bottom: 12),
                                    child: InkWell(
                                      borderRadius: BorderRadius.circular(24),
                                      onTap: () {
                                        setState(() {
                                          _selectedAnswers[qIdx] = aIdx;
                                        });
                                      },
                                      child: Row(
                                        children: [
                                          Container(
                                            width: 28,
                                            height: 28,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              border: Border.all(
                                                color: context.colors.main,
                                                width: 2,
                                              ),
                                            ),
                                            child: selected
                                                ? Center(
                                                    child: Container(
                                                      width: 16,
                                                      height: 16,
                                                      decoration: BoxDecoration(
                                                        color: context.colors.main,
                                                        shape: BoxShape.circle,
                                                      ),
                                                    ),
                                                  )
                                                : null,
                                          ),
                                          const SizedBox(width: 16),
                                          Expanded(
                                            child: Text(
                                              choices[aIdx],
                                              style: const TextStyle(
                                                fontSize: 16,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: context.colors.main,
                            foregroundColor: Colors.white,
                            padding: const EdgeInsets.symmetric(vertical: 12),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          onPressed: () {
                            int correctCount = 0;
                            for (int qIdx = 0; qIdx < questions.length; qIdx++) {
                              final selectedIdx = _selectedAnswers[qIdx];
                              final question = questions[qIdx];
                              final answerChoices = question.answerChoices;
                              final isTrueFalse = (answerChoices == null) ||
                                  (answerChoices.isEmpty) ||
                                  (answerChoices.length == 1 && answerChoices[0].trim().isEmpty) ||
                                  (question.correctAnswer is bool) ||
                                  (answerChoices.length == 2 &&
                                      answerChoices.contains("True") &&
                                      answerChoices.contains("False"));
                              final choices = isTrueFalse ? ["True", "False"] : (answerChoices ?? []);
                              final selectedValue =
                                  (selectedIdx != null && selectedIdx < choices.length) ? choices[selectedIdx] : null;
                              if (selectedValue != null) {
                                if (question.correctAnswer is bool) {
                                  if ((selectedValue == "True" && question.correctAnswer == true) ||
                                      (selectedValue == "False" && question.correctAnswer == false)) {
                                    correctCount++;
                                  }
                                } else if (question.correctAnswer is String) {
                                  if (selectedValue == question.correctAnswer) {
                                    correctCount++;
                                  }
                                }
                              }
                            }
                            print('Score: $correctCount/[32m${questions.length}[0m, Time: $_seconds seconds');
                            _timer?.cancel();
                            _competitionBloc.add(
                              CompetitionEvent.testAdd(
                                TestAddRequest(
                                  tournamentId: widget.tournamentId,
                                  score: correctCount,
                                  time: _seconds.toString(),
                                ),
                              ),
                            );
                          },
                          child: Text(
                            context.loc.send,
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              },
              orElse: () => const SizedBox(),
            );
          },
        ),
      ),
    );
  }
}
