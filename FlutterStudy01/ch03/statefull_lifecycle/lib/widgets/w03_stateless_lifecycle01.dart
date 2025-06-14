import "package:flutter/material.dart";

// 스테이트리스 위젯의 생명주기
class StatelessLifeCycle01 extends StatelessWidget {
  const StatelessLifeCycle01({super.key});

  // build() 함수는 최초 실행될 때 두 번 호출됨
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MyWidget(),
          ],
        ),
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  MyWidget({super.key}) {
    print("[1] MyWidget 생성자 실행됨");
  }

  @override
  Widget build(BuildContext context) {
    print("[2] MyWidget build() 실행됨");
    return Container(
      color: Colors.green,
      width: 50.0,
      height: 50,
    );
  }
}

