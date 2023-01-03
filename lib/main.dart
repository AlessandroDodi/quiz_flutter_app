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
      'answer': [
        {'text': 'Interstellar', 'score': 10},
        {'text': 'La vita è bella', 'score': 20},
        {'text': 'Good Will Hunting', 'score': 30},
      ],
    },
    {
      'question': 'What is your favourite animal?',
      'answer': [
        {'text': 'Lion', 'score': 3},
        {'text': 'Dog', 'score': 5},
        {'text': 'Cat', 'score': 1},
      ],
    },
    {
      'question': 'What is your favourite book?',
      'answer': ['The picture of Dorian Gray', 'War and Peace', 'White nights'],
    }
  ];
  var _totalScore = 0;
  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex < _questions.length - 1 ? _questionIndex += 1 : null;
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
                : Result(_totalScore, _resetQuiz)));
  }
}
