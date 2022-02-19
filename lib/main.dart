import 'package:flutter/material.dart';

import './question.dart';

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
      'What is your favourite colour?',
      'What is your favourite animal?',
    ];

    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('My First Flutter App'),
      ),
      body: Column(
        children: <Widget>[
          Question(
            questions[_questionIndex],
          ),
          RaisedButton(
            child: Text('Answer 1'),
            onPressed: _selectAnswer,
          ),
          RaisedButton(
            child: Text('Answer 2'),
            onPressed:  _selectAnswer,
          ),
          RaisedButton(
            child: Text('Answer 3'),
            onPressed: null,
          ),
        ],
      ),
    ));
  }
}
