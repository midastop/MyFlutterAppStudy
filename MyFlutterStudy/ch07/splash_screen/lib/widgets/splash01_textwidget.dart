import "package:flutter/material.dart";

class SplashTextExam extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            color: Colors.deepOrange,
          ),
          child: Center(
            child: Text(
              "App Start...",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              )
            ),
          ),
        ),
      ),
    );
  }
}