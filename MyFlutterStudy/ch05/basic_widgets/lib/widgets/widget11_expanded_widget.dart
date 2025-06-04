import "package:flutter/material.dart";

class ExpandedExam extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            // Expanded 위젯은 Flexible 위젯을 상속한 위젯으로 Row나 Column에서
            // 이 위젯을 사용하면 남아 있는 공간을 최대한으로 차지하게 설정할 수 있다.
            // flex 기본 값은 1이며 FlexFit.tight가 기본값
            // FlexFit.loose : 자식 위젯의 크기 만큼 차지,
            // FlexFit.tight : 부모의 남은 공간 모두 채움
            Expanded(
              child: Container(
                color: Colors.red,
              )
            ),
            Expanded(
              child: Container(
                color: Colors.blue,
              )
            ),
          ],
        ),
      ),
    );
  }

}

