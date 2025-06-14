import "package:flutter/material.dart";

// 스테이트풀 위젯이 되려면 StatefullWidget 클래스를 상속 받아야 함
class MyStatefulWidget extends StatefulWidget {
  
  // createState() 함수를 반드시 오버라이드 해야함
  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

// 스테이트풀 위젯에 상태 관리를 위한 클래스가 필요하며 이 클래스는 State 클래스를 상속받아 구현한다.
// State 클래스를 상속 받을 때 제네릭에 스테이트풀 위젯의 클래스 이름을 지정한다.
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  Color color = Colors.pink;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(width: 100.0, height: 100.0, color: color),
            SizedBox(height: 24.0),
            ElevatedButton(
              onPressed: () {
                color = color == Colors.pink
                    ? Colors.blue
                    : Colors.pink;
                // State 클래스를 상속 받으면 setState() 함수를 사용할 수 있고
                // 이 함수를 호출하면 build() 함수가 다시 실행되고 변경된 값을 적용할 수 있음
                setState(() { });
                print("color 변경됨 : $color");
              },
              child: Text("색상 변경"),
            ),
          ],
        ),
      ),
    );
  }
}
