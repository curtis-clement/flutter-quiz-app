import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/result.dart';

import './quiz.dart';
import 'result.dart';

void main() {
  runApp(MyFirstApp());
}

class MyFirstApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyFirstAppState();
  }
}

class _MyFirstAppState extends State<MyFirstApp> {
  var _questionIndex = 0;
  var _totalScore = 0;
  final _questions = [
    {
      'questionText': 'What is your favourite colour?',
      'answers': [
        {'text': 'Blue', 'score': 2},
        {'text': 'Red', 'score': 4},
        {'text': 'Green', 'score': 1},
        {'text': 'Orange', 'score': 3}
      ],
    },
    {
      'questionText': 'What is your favourite animal?',
      'answers': [
        {'text': 'Dog', 'score': 2},
        {'text': 'Elephant', 'score': 3},
        {'text': 'Monkey', 'score': 4},
        {'text': 'Cat', 'score': 1}
      ],
    },
    {
      'questionText': 'Whos is your favourite artist?',
      'answers': [
        {'text': 'Beatles', 'score': 2},
        {'text': 'Lady Gag', 'score': 1},
        {'text': 'Blink 182', 'score': 4},
        {'text': 'Stevie Wonder', 'score': 3}
      ],
    },
  ];

  void _selectAnswer(int score) {

    _totalScore = _totalScore + score;

    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    }
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('My First Flutter App'),
      ),
      body: _questionIndex < _questions.length
          ? Quiz(
              selectAnswer: _selectAnswer,
              questionIndex: _questionIndex,
              questions: _questions,
            )
          : Result(_totalScore),
    ));
  }
}
