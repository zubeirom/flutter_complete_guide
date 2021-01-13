import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/answer.dart';
import 'package:flutter_complete_guide/question.dart';

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
      print(questions.length);
      if (_questionIndex == questions.length - 1) {
        _questionIndex = 0;
      } else {
        _questionIndex = _questionIndex + 1;
      }
      print(_questionIndex);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("My First App"),
      ),
      body: Column(children: [
        Question(questions[_questionIndex]['questionText']),
        ...(questions[_questionIndex]['answers'] as List<String>)
            .map((e) => Answer(_answerQuestions, e))
            .toList(),
      ]),
    ));
  }
}
