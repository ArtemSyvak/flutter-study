import 'package:flutter/material.dart';
import './question.dart';

void main() => runApp(App());

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AppState();
  }
}

class _AppState extends State<App> {
  var _questionIndex = 0;

  void _answerQuestion(index) {
    setState(() {
      _questionIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite color?',
      'What\'s your favorite animal?',
      'What\'s your favorite band?',
    ];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('YAPIDY APP'),
        ),
        body: Column(children: [
          Question(questions[_questionIndex]),
          RaisedButton(
            child: Text('Color answer'),
            onPressed: () => _answerQuestion(0),
          ),         
          RaisedButton(
            child: Text('Animal answer'),
            onPressed: () => _answerQuestion(1),
          ),
          RaisedButton(
            child: Text('Band answer'),
            onPressed: () => _answerQuestion(2),
          )
        ]),
      ),
    );
  }
}
