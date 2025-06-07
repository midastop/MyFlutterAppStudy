import 'package:flutter/material.dart';

class SplashProgressExam extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            color: Colors.deepOrange,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Image.asset(
                  'assets/flutter_log.png',
                  width: 200,
                ),
              ),
              Flexible(
                child: CircularProgressIndicator(),
              ),
            ]
          ),
        ),
      ),
    );
  }

}