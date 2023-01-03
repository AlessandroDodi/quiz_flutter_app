import 'package:flutter/material.dart';
import './quiz.dart';
import 'result.dart';

void main() => runApp(_MyApp());

class _MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<_MyApp> {
  var _questionIndex = 0;
  final _questions = const [
    {
      'question': 'What is your favourite movie?',
      'answer': ['Interstellar', 'La vita è bella', 'Good Will Hunting'],
    },
    {
      'question': 'What is your favourite animal?',
      'answer': ['Lion', 'Dog', 'Cat'],
    },
    {
      'question': 'What is your favourite book?',
      'answer': ['The picture of Dorian Gray', 'War and Peace', 'White nights'],
    }
  ];

  void _answerQuestion() {
    setState(() {
      print(_questionIndex);
      print(_questions.length);
      _questionIndex < _questions.length - 1 ? _questionIndex += 1 : null;
      print(_questionIndex);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text('My first app')),
            body: _questionIndex < (_questions.length - 1)
                ? Quiz(
                    questions: _questions,
                    answerQuestion: _answerQuestion,
                    questionIndex: _questionIndex)
                : Result()));
  }
}
