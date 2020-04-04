import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  void answerQuestion() {
    print('The chosen answer is');
  }

  @override
  Widget build(BuildContext context) {
    var questions = ['Are you still hanging out with friends?', 'Are you roaming around the town', 'Still partying on Friday nights?'];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Will you survive this pandemic?"),
        ),
        body: Column(children: [
          Text(questions.elementAt(0)),
          RaisedButton(
            child: Text('Answer 1'),
            onPressed: answerQuestion,
          ),
          RaisedButton(
            child: Text('Answer 2'),
            onPressed: answerQuestion,
          ),
          RaisedButton(
            child: Text('Answer 3'),
            onPressed: answerQuestion,
          ),
        ]),
      ),
    );
  }
}
