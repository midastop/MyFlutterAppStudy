import 'package:flutter/material.dart';


class StackExam extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        // Stack 위젯은 자식 위젯을 겹쳐서 배치하는 위젯으로
        // 위젯 위에 위젯을 올려 놓은 효과를 줄 수 있다.
        body: Stack(
          children: [
            Container(
              width: 300.0,
              height: 300.0,
              color: Colors.red,
            ),
            Container(
              width: 200.0,
              height: 200.0,
              color: Colors.green,
            ),
            Container(
              width: 100.0,
              height: 100.0,
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
