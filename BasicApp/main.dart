import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());                            //runApp is the funtion in the material package of flutter which initiates the running of application.
}

class MyApp extends StatelessWidget {         //we have to extend either stateful or statless widget to any class used in flutter
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
        appBar: AppBar(                       //appbar is the head of the app which normally contains the heading 
          title: Text('Hello User'),
        ),
        body: Column(
          children: [
            Text('The Questions are here'),
            RaisedButton(                   //raider button is a type of button which can be pressed
              child: Text('Answer 1'),
              onPressed: answers,           //onPressed takes a method as an input. Note- when passing the method you have to pass it
            ),                              // without paranthesis. therfore the method answers is without paranthesis.
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: () => print('Answer 2'),    //This is another way to pass a single lined method
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
