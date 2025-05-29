import 'package:flutter/material.dart';
import 'widgets/widget01_text_widget.dart';
import 'widgets/widget02_button_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: ButtonsExam()
        )
      )
    );
  }
}
