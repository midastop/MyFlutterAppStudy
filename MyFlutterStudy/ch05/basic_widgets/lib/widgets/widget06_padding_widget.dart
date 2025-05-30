import 'package:flutter/material.dart';


class PaddingWidgetExam extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            color: Colors.pink,
            child: Container(
              color: Colors.blue,
              margin: EdgeInsets.all(16.0),
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Container(
                 color: Colors.red,
                 width: 100.0,
                 height: 100.0,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

}