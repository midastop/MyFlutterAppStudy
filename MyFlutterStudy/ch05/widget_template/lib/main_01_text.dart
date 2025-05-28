import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text(
              "안녕 플러터",
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w700,
              color: Colors.blue,
            ),
          ),
        ),
      ),
    );
  }

}