import 'package:flutter/material.dart';

void main() {
  runApp(MyFirstApp());
}

class MyFirstApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return MyFirstAppState();
  }

}

class MyFirstAppState extends State<MyFirstApp> {
  var questionIndex = 0;

  void selectAnswer() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print(questionIndex);
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
          Text(
            questions[questionIndex],
          ),
          RaisedButton(
            child: Text('Answer 1'),
            onPressed: selectAnswer,
          ),
          RaisedButton(
            child: Text('Answer 2'),
            onPressed:  selectAnswer,
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
