import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex += 1;
      print(questionIndex);
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
        Text(questions.elementAt(questionIndex)),
        ElevatedButton(onPressed: answerQuestion, child: Text('Answer 1')),
        ElevatedButton(onPressed: answerQuestion, child: Text('Answer 2')),
      ]),
    ));
  }
}
