import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  void answers() {
    print('Answers');
  }

  @override
  Widget build(BuildContext context) {
    var Questions = [
      'What is Your Fav Colour ? ',
      'What is your favourite animal?'
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hello User'),
        ),
        body: Column(
          children: [
            Text('The Questions are here'),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: answers,
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: answers,
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: answers,
            )
          ],
        ),
      ),
    );

    throw UnimplementedError();
  }
}
