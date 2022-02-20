import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

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

  void _selectAnswer() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
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

    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('My First Flutter App'),
      ),
      body: Column(
        children: <Widget>[
          Question(
            questions[_questionIndex]['questionText'],
          ),
          ...(questions[_questionIndex]['answers'] as List<String>).map((answer) {
            return Answer(_selectAnswer, answer);
          }).toList()
        ],
      ),
    ));
  }
}
