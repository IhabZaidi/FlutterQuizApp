import 'package:QuizzApp/answer.dart';
import 'package:QuizzApp/qustions.dart';
import 'package:flutter/material.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int qindex;
  final Function answerQuestion;
  Quiz(
      {@required this.questions,
      @required this.answerQuestion,
      @required this.qindex});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[qindex]['questiontxt']),
        ...(questions[qindex]['answers'] as List<Map<String, Object>>).map((answer) {
          return Answer(() => answerQuestion(answer['score']), answer['text']);
        }).toList()
      ],
    );
  }
}
