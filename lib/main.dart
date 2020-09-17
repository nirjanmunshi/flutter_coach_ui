import 'package:coach_ui/screens/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coach UI',
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
