import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback reset;

  Result(this.resultScore, this.reset);
  String get resulPhrase {
    String text;
    if (resultScore <= 8) {
      text = 'You are awesome and innocent!';
    } else if (resultScore <= 20) {
      text = 'Pretty likeable!';
    } else {
      text = 'You are bad';
    }
    return text;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
            child: Text(
          resulPhrase,
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        )),
        ElevatedButton(onPressed: reset, child: Text('Restart quiz'))
      ],
    );
  }
}
