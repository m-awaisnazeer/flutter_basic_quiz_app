import 'package:flutter/material.dart';

import './question.dart';

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
  int _questionsIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionsIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'what\'s your favorite color?',
      "What'\s your favorite animal?",
      'what\'s your favorite Laptop?',
      "What'\s your favorite Phone?",
    ];

    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("My First App"),
      ),
      body: Column(
        children: <Widget>[
          Question(questions[_questionsIndex]),
          RaisedButton(
            child: Text("Answer 1"),
            onPressed: _answerQuestion,
          ),
          RaisedButton(
            child: Text("Answer 2"),
            onPressed: _answerQuestion,
          ),
          RaisedButton(
            child: Text("Answer 3"),
            onPressed: _answerQuestion,
          ),
        ],
      ),
    ));
  }
}
