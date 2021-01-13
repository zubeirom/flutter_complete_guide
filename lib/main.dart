import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/answer.dart';
import 'package:flutter_complete_guide/question.dart';
import 'package:flutter_complete_guide/quiz.dart';
import 'package:flutter_complete_guide/restart.dart';
import 'package:flutter_complete_guide/result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var questions = [
    {
      'questionText': "Whats your favorite animal?",
      'answers': ["Lion", "Tiger", "Gorilla"]
    },
    {
      'questionText': "Whats your favorite color?",
      'answers': ["Black", "Black", "Black"]
    },
    {
      'questionText': "Love me?",
      'answers': ["No", "No", "NO"]
    },
    {
      'questionText': "Hate me?",
      'answers': ["Yes", "Yes", "Yes"]
    }
  ];

  void _answerQuestions() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  void _restart() {
    setState(() {
      _questionIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("My First App"),
      ),
      body: _questionIndex < questions.length
          ? Quiz(
              questions: questions,
              handler: _answerQuestions,
              currentIndex: _questionIndex)
          : Column(
              children: [Result(), Restart(_restart)],
            ),
    ));
  }
}
