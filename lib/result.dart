import 'package:flutter/material.dart';

class Result extends StatelessWidget {
final int resultScore;
final Function resetHandler;

Result(this.resultScore, this.resetHandler);

String get resultPhrase {
  var rText = "Quiz is over";
  if(resultScore <=10) {
    rText = 'You are a aware human being. You\'ll be safe from Corona.';

  } else if(resultScore> 10 && resultScore <=20) {
    rText = 'You need to be careful more!';
  } else {
    rText = 'God! You\'re pretty stupid, Corona is looking for you!!';
  }
  return rText;
}
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          
          Container(
            margin: EdgeInsets.all(40),
            child: Text(
              resultPhrase, 
            style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
            ),
          ),
          FlatButton(onPressed: resetHandler, child: Text('Restart'
          ),
          textColor: Colors.blue,
          )
        ],
      ),
      );
  }
}