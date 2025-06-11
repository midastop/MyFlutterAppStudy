import "package:flutter/material.dart";

class TextWidgetExam extends StatelessWidget {
  const TextWidgetExam({super.key});

  @override
  Widget build(BuildContext context) {
    // Container 위젯은 하위에 다른 위젯을 담을 때 사용하며
    // 위젯의 크기, 배경색, 테두리 등을 지정할 때 주로 사용한다.
    return Container(
      // BoxDecoration 위젯은 Container 위젯의 디자인 적용하는
      // 위젯으로 컨테이너의 배경색, 테두리 등의 속성을 설정할 수 있다.
      decoration: BoxDecoration(
        color: Colors.deepOrange,
        border: Border.all(width: 10.0, color: Colors.green),
        borderRadius: BorderRadius.circular(24.0),
      ),

      // Center 위젯은 자식 위젯을 가운데 배치하는 위젯이다.
      child: Center(
        child: Text(
          "Text Widget",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}
