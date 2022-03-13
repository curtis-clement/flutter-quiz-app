import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHanlder;

  Result(this.resultScore, this.resetHanlder);

  String get resultPhrase {
    String resultText = 'You did it!';
    if (resultScore <= 6) {
      resultText = 'You are awesome!';
    } else if (resultScore <= 9) {
      resultText = 'You did alright';
    } else {
      resultText = 'You are very strange....';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text('Restart Quiz'),
            onPressed: resetHanlder,
            textColor: Colors.blue,
          )
        ],
      ),
    );
  }
}
