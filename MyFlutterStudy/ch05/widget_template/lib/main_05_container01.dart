import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            color: Colors.red,
            border: Border.all(
              width: 16.0,
              color: Colors.black,
            ),
            borderRadius: BorderRadius.circular(
              16.0
            ),
          ),
          width: 200.0,
          height: 300.0,
        ),
      ),
    );
  }

}