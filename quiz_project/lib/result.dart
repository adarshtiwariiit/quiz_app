import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int _totalScore;
  final VoidCallback _resetHandler;
  String get resultPhrase {
    String toreturn;
    if (_totalScore == 3)
      toreturn = "You are a Topper of the Quiz Congrats!";
    else if (_totalScore == 2)
      toreturn =
          "Great just one step more! \nI'll buy you a cake from Mio Amore!";
    else if (_totalScore == 1)
      toreturn = "You have a low score! \nCome on practice more!";
    else
      toreturn = "Too low! \nVery long way to go!";
    return toreturn;
  }

  Result(this._totalScore, this._resetHandler);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(
                fontSize: 36, fontWeight: FontWeight.bold, color: Colors.blue),
            textAlign: TextAlign.center,
          ),
          TextButton(
            onPressed: _resetHandler,
            child: Text(
              "🔄 Reset Quiz",
              style: TextStyle(
                color: Colors.blue,
                fontSize: 24,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
