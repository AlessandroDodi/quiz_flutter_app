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
  final questions = [
    {
      'question': 'What is your favourite movie?',
      'answer': ['Interstellar', 'La vita è bella', 'Good Will Hunting'],
    },
    {
      'question': 'What is your favourite animal?',
      'answer': ['Lion', 'Dog', 'Cat'],
    }
  ];

  void _answerQuestion() {
    setState(() {
      print(_questionIndex);
      print(questions.length);
      _questionIndex < questions.length - 1 ? _questionIndex += 1 : null;
      print(_questionIndex);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text('My first app')),
            body: Column(children: [
              Question(
                questions[_questionIndex]['question'],
              ),
              ...(questions[_questionIndex]['answer'] as List<String>)
                  .map((answer) {
                return Answer(answer, _answerQuestion);
              }).toList(),
            ])));
  }
}
