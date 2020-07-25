import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AppState();
  }
}

class AppState extends State<App> {
  var questionIndex = 0;

  void answerQuestion(index) {
    setState(() {
      questionIndex = index;
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
          Text(questions[questionIndex]),
          RaisedButton(
            child: Text('Color answer'),
            onPressed:() => answerQuestion(0),
          ),
          RaisedButton(
            child: Text('Animal answer'),
            onPressed:() => answerQuestion(1),
          ),
          RaisedButton(
            child: Text('Band answer'),
            onPressed:() => answerQuestion(2),
          )
        ]),
      ),
    );
  }
}
