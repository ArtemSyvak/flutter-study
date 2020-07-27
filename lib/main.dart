import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

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
      {
        'questionText': 'What\'s your favorite color?',
        'answers': ['Black', 'Red', 'Yellow']
      },
      {
        'questionText': 'What\'s your favorite animal?',
        'answers': ['Dog', 'Cat', 'Lions', 'Rabbit', 'Snake']
      },
      {
        'questionText': 'What\'s your favorite band?',
        'answers': ['SPBCH', 'KASABIAN', 'Joy Division', 'Caribou', 'Prodigy']
      }
    ];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('YAPIDY APP'),
        ),
        body: Column(children: [
          Question(questions[_questionIndex]['questionText']),
          ...(questions[_questionIndex]['answers'] as List<String>)
              .map((answer) {
            return Answer(answer, () => _answerQuestion(_questionIndex));
          }).toList()
        ]),
      ),
    );
  }
}
