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
          child: Column(
              children: [
                TextButton(
                  onPressed: () { print('텍스트  버튼 Clicked'); },
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.red,
                  ),
                  child: Text("텍스트 버튼"),
                ),
                OutlinedButton(
                  onPressed: () { print('아웃라인드 버튼 Clicked'); },
                  style: OutlinedButton.styleFrom(
                    foregroundColor: Colors.blue,
                  ),
                  child: Text("아웃라인드 버튼"),
                ),
                ElevatedButton(
                  onPressed: () { print('엘리베이티드 버튼 Clicked');},
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.red,
                  ),
                  child: Text("엘리베이티드 버튼"),
                ),
                IconButton(
                  onPressed: () { print("IconButton"); },
                  icon: Icon(Icons.home),
                ),
              ],
          ),
        ),
      ),
    );
  }

}