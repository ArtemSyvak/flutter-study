import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answerText;
  final Function onPressedHandle;

  Answer(this.answerText, this.onPressedHandle);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 15, right: 15),
      width: double.infinity,
      child: RaisedButton(
        color: Colors.purple[900],
        child: Text(
          answerText,
          style: TextStyle(color: Colors.white),  
        ),
        onPressed: onPressedHandle,
      ),
    );
  }
}
