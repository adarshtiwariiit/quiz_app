import 'package:flutter/material.dart';

class answer extends StatelessWidget {
  final VoidCallback _answerQuestion;
  final String _answerString;
  answer(this._answerQuestion, this._answerString);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: _answerQuestion,
        child: Text("$_answerString"),
      ),
    );
  }
}
