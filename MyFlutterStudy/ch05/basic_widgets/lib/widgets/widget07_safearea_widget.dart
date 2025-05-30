import 'package:flutter/material.dart';

//
class SafeAreaExam extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
            top: true,
            bottom: true,
            left: true,
            right: true,
            child: Container(
              color: Colors.lightBlue,
              height: 300.0,
              width: 300.0,
            ),

        ),
      ),
    );
  }

}