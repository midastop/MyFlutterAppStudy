import 'package:flutter/material.dart';

class FlexibleExam extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column (
          children: [
            // Flexible 위젯은 Row 또는 Column에서 사용하는 위젯으로 이 위젯에서
            // 사용하는 child의 크기를 최소한으로 차지할게 할 수 있다. flex 속성은
            // Flexible 위젯이 얼마 만큼의 비율로 공간을 차지할지 지정하는 속성으로
            // 기본 값은 1이다.
            Flexible(
              // flex는 부모의 여유 공간을 얼마나 차지할지 비율로 지정하는 속성
              flex: 1,
              child: Container(
                color: Colors.blue,
              )
            ),
            Flexible(
              flex: 2,
              child: Container(
                color: Colors.red,
              )
            )
          ],
        ),
      ),
    );
  }

}