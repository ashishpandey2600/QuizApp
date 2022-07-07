import 'package:flutter/material.dart';
import './question.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  var questions = [
    'what\'s your favorite color ? ',
    'what\'s your favorite animal?'
  ];

  void _answerQuestion() {
    setState(() {
     _questionIndex = _questionIndex + 1; 
    });//fuction to rerender the user state
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    //function in a class
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first App'),
        ),
        body: Column(
          children: [
            Question(questions[_questionIndex]),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed:_answerQuestion,
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed:_answerQuestion,
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed:_answerQuestion,
            ),
          ],
        ),
      ),
    );
  }
}
