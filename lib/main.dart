import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('YAPIDY APP'),
        ),
        body: Text('Discover Mountains!!!'),
      ),
    );    
  }
}
