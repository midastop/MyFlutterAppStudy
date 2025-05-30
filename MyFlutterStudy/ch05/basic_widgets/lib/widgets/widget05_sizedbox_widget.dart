import 'package:flutter/material.dart';

class SizedBoxExam extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          // SizedBox 위젯은 일반적으로 일정 크기의 공간을 공백으로 둘 때 사용
          // Container 위젯도 가능하지만 성능면에서 SizeBox가 유리함
          child: SizedBox(
            height: 200.0,
            width: 200.0,
            child: Container(
              // SizedBox 위젯은 색상이 없어서 Container를 사용해 색상을 지정함
              color: Colors.red,
            ),
          ),
        ),
      ),
    );
  }
}