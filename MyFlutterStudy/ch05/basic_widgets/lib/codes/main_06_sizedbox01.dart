import 'package:flutter/material.dart';



class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: SizedBox(
            height: 200.0,
            width: 200.0,
            child: Container(
              color: Colors.red,
            ),
          ),
        ),
      ),
    );
  }
}