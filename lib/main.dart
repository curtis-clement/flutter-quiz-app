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
  final _questions = [
    {
      'questionText': 'What is your favourite colour?',
      'answers': ['Blue', 'Red', 'Green', 'Orange'],
    },
    {
      'questionText': 'What is your favourite animal?',
      'answers': ['Dog', 'Elephant', 'Monkey', 'Cat'],
    },
    {
      'questionText': 'Whos is your favourite artist?',
      'answers': ['Beatles', 'Lady Gaga', 'Blink 182', 'Stevie Wonder'],
    },
  ];

  void _selectAnswer() {
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
          : Result(),
    ));
  }
}
