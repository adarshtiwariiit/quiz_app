import 'package:flutter/material.dart';
import 'package:test_project/question.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;
  Quiz(
      {required this.questions,
      required this.answerQuestion,
      required this.questionIndex});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        question(questions[questionIndex]["questionText"].toString()),
        ...(questions[questionIndex]["answers"] as List<Map<String, Object>>)
            .map((answers) {
          return answer(() => answerQuestion(answers["score"]),
              answers["text"] as String);
        }).toList()
      ],
    );
  }
}
