import 'package:flutter/material.dart';
import 'package:second/quiz.dart';
import 'package:second/result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'Are you still hanging out with friends?',
      'answers': [
        {'text': 'Yes', 'score': 10},
        {'text': 'No', 'score': 5},
        {'text': 'Sometimes', 'score': 7}
      ]
    },
    {
      'questionText': 'Are you roaming around the town',
      'answers': [
        {'text': 'Yes', 'score': 15},
        {'text': 'No', 'score': 5},
        {'text': 'Sometimes', 'score': 10}
      ]
    },
    {
      'questionText': 'Still partying on Friday nights?',
      'answers': [
        {'text': 'Yes', 'score': 15},
        {'text': 'No', 'score': 5},
        {'text': 'Sometimes', 'score': 10}
      ]
    },
    {
      'questionText': 'How many times you\'re washing your hands in a day?',
      'answers': [
        {'text': 'Less than 3', 'score': 15},
        {'text': '4-7 times', 'score': 5},
        {'text': 'More than 7', 'score': 10}
      ]
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
     _questionIndex = 0;
      _totalScore = 0;
    });

  }
  void _answerQuestion(int score) {
     _totalScore+= score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    if (_questionIndex < _questions.length) {
      print("More que");
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Will you survive this pandemic?"),
          ),
          body: _questionIndex < _questions.length
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionIndex,
                  questions: _questions,
                )
              : Result(_totalScore, _resetQuiz )),
    );
  }
}
