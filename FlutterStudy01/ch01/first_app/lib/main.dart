import 'package:flutter/material.dart';

void main() {
  // 플러터 앱을 실행해 주는 함수
  runApp(
    // MaterialApp은 Material 디자인을 사용할 수 있도록 지원하는 위젯으로
    // Flutter 앱에서 항상 최상위에 MaterialApp 위젯을 사용해야 함
    const MaterialApp(
      // 화면 우측 상단에 표시되는 DEBUG 베너 제거
      debugShowCheckedModeBanner: false,
      title: "First Flutter App",
      // MaterialApp 바로 아래의 home 파라미터에 Scaffold 위젯을 사용
      // Scaffold 위젯은 화면 전체 구조를 만들 수 있도록 지원하는 위젯
      home: Scaffold(
        backgroundColor: Colors.blue,
        // Scaffold의 body 파라미터에 다양한 위젯을 배치해 화면을 구성
        body: Center(
          // 모든 위젯은 child 또는 children 파라미터로 하위에 자식 위젯을 배치함
          child: Text(
            "Hello Flutter",
            style: TextStyle(color: Color(0xFFFFFFFF)),
          ),
        ),
      ),
    ),
  );
}
