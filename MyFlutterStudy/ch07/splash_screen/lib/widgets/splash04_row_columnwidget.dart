import 'package:flutter/material.dart';

class SplashRowColumnExam extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            color: Colors.deepOrange,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                //crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/flutter_log.png',
                    width: 200,
                  ),
                  SizedBox(
                    height: 50.0,
                  ),
                  CircularProgressIndicator(
                    color: Colors.white,
                  ),
                ]
              ),
            ]
          ),
        ),
      ),
    );
  }

}