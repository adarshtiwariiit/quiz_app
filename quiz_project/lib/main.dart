import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';
import './result.dart';
import './quiz.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = [
    {
      "questionText": "how many day's in a week?",
      "answers": [
        {"text": "1", "score": 0},
        {"text": "4", "score": 0},
        {"text": "5", "score": 0},
        {"text": "7", "score": 1},
      ]
    },
    {
      "questionText": "how many hour's in a day?",
      "answers": [
        {"text": "12", "score": 0},
        {"text": "18", "score": 0},
        {"text": "24", "score": 1},
        {"text": "365", "score": 0},
      ]
    },
    {
      "questionText": "how many minutes in a day?",
      "answers": [
        {"text": "1440", "score": 1},
        {"text": "3260", "score": 0},
        {"text": "1496", "score": 0},
        {"text": "5456", "score": 0},
      ]
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;
  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex++;
    });
    print("answer question");
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("My First App")),
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex)
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
