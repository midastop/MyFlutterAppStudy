import 'package:flutter/material.dart';

class SplashImageExam extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            color: Colors.deepOrange,
          ),
          child: Center(
            child: Image.asset('assets/flutter_log.png'),
          ),
        ),
      ),
    );
  }

}