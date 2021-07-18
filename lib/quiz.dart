import 'package:flutter/material.dart';
import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final VoidCallback answerQuestion;
  final List<Map<String, Object>> questions;
  final int questionIndex;


  Quiz(this.answerQuestion,  this.questions,  this.questionIndex);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(
          questions[questionIndex]['questionText']! as String
        ),
        ...(questions[questionIndex]['answers'] as List<String>)
            .map((answer) {
          return Answer(answerQuestion, answer);
        }).toList(),
      ],
    );
  }
}
