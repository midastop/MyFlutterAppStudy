import 'package:flutter/material.dart';

void main() {
  // 플러터 앱을 실행해 주는 함수
  runApp(
    // MaterialApp은 Material 디자인을 사용할 수 있도록 지원하는 위젯으로
    // Flutter 앱에서 항상 최상위에 MaterialApp 위젯을 사용해야 함
    const MaterialApp(

      // 화면 우측 상단에 표시되는 DEBUG 베너 제거 설정
      debugShowCheckedModeBanner: false,
      title: "First Flutter App",
      
      // MaterialApp 바로 아래의 home 파라미터에 Scaffold 위젯을 사용
      // Scaffold 위젯은 화면 전체 구조를 만들 수 있도록 지원하는 위젯
      home: Scaffold(
        backgroundColor: Colors.blue,
      
        // Scaffold의 body 파라미터에 다양한 위젯을 배치해 화면을 구성함
        body: Center(
      
          // 위젯은 child 또는 children 파라미터를 사용해 하위에 자식 위젯을 배치하며
          // child는 하나의 위젯을 지정할 수 있고 children은 여러 위젯을 지정할 수 있다.
          // child와 children 파라미터 두 가지를 모두 제공하지는 않으며 위젯에 따라서
          // child 파라미터를 제공하거나 children 파라미터를 제공한다.
          child: Text(
            "Hello Flutter",
            style: TextStyle(color: Color(0xFFFFFFFF)),
          ),
        ),
      ),
    ),
  );
}
