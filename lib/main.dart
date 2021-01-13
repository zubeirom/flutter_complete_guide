import 'package:flutter/material.dart';
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
  var questions = ["Whats your favorite animal?", "Whats your favorite color?"];

  void _answerQuestions() {
    setState(() {
      if (_questionIndex == 1) {
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
        Question(questions[_questionIndex]),
        RaisedButton(
          child: Text('Answer 1'),
          onPressed: _answerQuestions,
        ),
        RaisedButton(
          child: Text('Answer 2'),
          onPressed: _answerQuestions,
        ),
        RaisedButton(
          child: Text('Answer 3'),
          onPressed: _answerQuestions,
        )
      ]),
    ));
  }
}
