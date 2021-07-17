import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  int questionsIndex = 0;

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
          Text(questions[questionsIndex]),
          RaisedButton(
            child: Text("Answer 1"),
            onPressed: () {
              setState(() {

                if (questionsIndex < questions.length) {
                  questionsIndex++;
                }

              });
              print(questionsIndex);
            },
          ),
          RaisedButton(
            child: Text("Answer 2"),
            onPressed: () {

              setState(() {
                if (questionsIndex < questions.length) {
                  questionsIndex++;
                }
              });

              print(questionsIndex);
            },
          ),
          RaisedButton(
            child: Text("Answer 3"),
            onPressed: () {

              setState(() {
                if (questionsIndex < questions.length) {
                  questionsIndex++;
                }
              });

              print(questionsIndex);
            },
          ),
        ],
      ),
    ));
  }
}
