import 'package:flutter/material.dart';



class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: TextButton(
              onPressed: () { print('텍스트  버튼 Clicked'); },
              style: TextButton.styleFrom(
                foregroundColor: Colors.red,
              ),
              child: Text("텍스트 버튼"),
            ),
        ),
      ),
    );
  }
}