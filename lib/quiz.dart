import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/question.dart';

import 'answer.dart';

class Quiz extends StatelessWidget {
  final List questions;
  final Function handler;
  final currentIndex;

  Quiz(
      {@required this.questions,
      @required this.handler,
      @required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Question(questions[currentIndex]['questionText']),
      ...(questions[currentIndex]['answers'] as List<String>)
          .map((e) => Answer(handler, e))
          .toList(),
    ]);
  }
}
