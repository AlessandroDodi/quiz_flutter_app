import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() => runApp(_MyApp());

class _MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<_MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex += 1;
      print(_questionIndex);
    });
  }

  var questions = [
    'What is your favourite color?',
    'What is your favourite animal?'
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text('My first app')),
      body: Column(children: [
        Question(questions[_questionIndex]),
        Answer('A', _answerQuestion),
        Answer('B', _answerQuestion),
      ]),
    ));
  }
}
