import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState(); //it returns the state
    throw UnimplementedError();
  }
}

class _MyAppState extends State<MyApp> {
  //<MyApp> says that this state belongs to my app class
  static const _Questions = [
    //this is now List of Maps.
    {
      'QuestionText': 'What is your favourite Colour ? ',
      'AnswerText': [
        {'text': 'Blue', 'score': 1},
        {'text': 'Yellow', 'score': 2},
        {'text': 'Green', 'score': 3},
        {'text': 'Red', 'score': 4}
      ]
    },
    {
      'QuestionText': 'What is your favourite animal ?',
      'AnswerText': [
        {'text': 'Dog', 'score': 1},
        {'text': 'Cat', 'score': 2},
        {'text': 'Racoon', 'score': 3},
        {'text': 'Rabbit', 'score': 4}
      ]
    },
    {
      'QuestionText': 'What is you favourite cusine ?',
      'AnswerText': [
        {'text': 'Indian', 'score': 1},
        {'text': 'Chinese', 'score': 2},
        {'text': 'Mexican', 'score': 3},
        {'text': 'Thai', 'score': 4}
      ]
    },
    {
      'QuestionText': 'What is your favourite season ?',
      'AnswerText': [
        {'text': 'Spring', 'score': 1},
        {'text': 'Winter', 'score': 2},
        {'text': 'Monsoon', 'score': 3},
        {'text': 'Summer', 'score': 4}
      ]
    },
  ];

  var _Questionindex = 0;
  int _totalScore = 0;
  void Restart() {
    setState(() {
      _Questionindex = 0;
      _totalScore = 0;
    });
  }

  void answers(int score) {
    _totalScore += score;

    setState(() {
      //used to change the state of the UI
      print(_Questions[_Questionindex]['AnswerText']);
      if (_Questionindex < _Questions.length) _Questionindex += 1;
      //else
      //_Questionindex = 0;
    });

    print('Answer');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hello User'),
        ),
        body: _Questionindex < _Questions.length
            ? Quiz(
                answerQuestions: answers,
                questions: _Questions,
                index: _Questionindex)
            : Result(_totalScore, Restart),
      ),
    );
  }
}
