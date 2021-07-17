import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final Function answerQuestions;
  final List<Map<String, Object>> questions;
  final int index;

  Quiz({this.answerQuestions, this.questions, this.index});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[index]['QuestionText']),
        ...(questions[index]['AnswerText'] as List<Map<String, Object>>)
            .map((ans) {
          return Answer(() => answerQuestions(ans['score']), ans['text']);
        }).toList()
      ],
    );
  }
}
