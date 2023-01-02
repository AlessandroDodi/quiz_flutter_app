import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answer;
  final VoidCallback selectHandler;
  Answer(this.answer, this.selectHandler);
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.only(left: 10, right: 10),
        child: ElevatedButton(
          child: Text(answer),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.black),
            foregroundColor: MaterialStateProperty.all(Colors.white),
          ),
          onPressed: selectHandler,
        ));
  }
}
        // (questions[_questionIndex]['answer'] as List<String>).map(((q) => {
        //   return Answer(q);
        // })),