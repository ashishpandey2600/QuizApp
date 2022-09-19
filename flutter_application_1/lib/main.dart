import 'package:flutter/material.dart';
import 'package:flutter_application_1/result.dart';
import './quiz.dart';
import 'result.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  @override
  void _answerQuestion() {
   
    setState(() {
      _questionIndex = _questionIndex + 1;
    }); //fuction to rerender the user state
    print(_questionIndex);
     if (_questionIndex < _questions.length) {
      print('we have no more question!');
    }
  }

  final _questions = const [
    {
      'questionText': 'what\'s your favorite color ? ',
      'answers': ['black', 'Red', 'Green', 'white']
    },
    {
      'questionText': 'what\'s your favorite animal?',
      'answers': ['Rabbit', 'Snake', 'Elephent', 'Lion']
    },
    {
      'questionText': 'what\'s your favorite name ?',
      'answers': ['Ashish', 'pandey Ashish', 'pandey', 'Ashish Pandey']
    },
  ];

  Widget build(BuildContext context) {
    //function in a class
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My first App'),
          ),
          body: _questionIndex< _questions.length 
          ? Quiz(
            answerQuestion: _answerQuestion, 
            questionIndex: _questionIndex, 
            questions: _questions,) :
            Result(),

          ),
    );
  }
}
