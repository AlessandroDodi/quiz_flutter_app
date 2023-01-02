import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  void answerQuestion() {
    print('Answer chosen');
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
        Text('The question'),
        ElevatedButton(onPressed: answerQuestion, child: Text('Answer 1')),
        ElevatedButton(onPressed: answerQuestion, child: Text('Answer 2')),
      ]),
    ));
  }
}
