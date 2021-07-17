import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function reset;

  Result(this.resultScore, this.reset);
  String get resultPhrase {
    String resultText;
    if (resultScore <= 5)
      resultText = 'You are Awesome !!!';
    else if (resultScore > 5 && resultScore <= 12)
      resultText = 'You might be Likable';
    else
      resultText = 'I Don\'t Like you ';

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 38, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          OutlineButton(
            child: Text(
              'Restart The Quiz',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            textColor: Colors.blue,
            highlightedBorderColor: Colors.orange,
            focusColor: Colors.orange,
            onPressed: reset,
          )
        ],
      ),
    );
  }
}
