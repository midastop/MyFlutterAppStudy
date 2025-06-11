import 'package:flutter/material.dart';

// 버튼 위젯들(Button Widgets)
class ButtonWidgetExam extends StatelessWidget {
  const ButtonWidgetExam({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      // Column 위젯은 children 파라미터를 통해 여러 자식 위젯을 가질 수 있으며
      // 자식 위젯을 세로 방향으로 배치하는 위젯이다.
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // 버튼은 사용자의 제스처에 반응하는 위젯으로 사용자가 버튼 위젯을 누르거나
          // 또는 길게 누를 때 등의 이벤트를 처리할 수 있는 파라미터를 제공한다.
          // 사용자가 키보드로 글자를 입력하는 것을 제외한 모든 행위를 제스처(Gesture)라 함
          TextButton(
            onPressed: () { // 버튼이 눌릴 때 이벤트 처리
              print('TextButton Clicked');
            },
            style: TextButton.styleFrom(foregroundColor: Colors.red),
            child: Text("텍스트 버튼"),
          ),
          OutlinedButton(
            onPressed: () {
              print('OutlinedButton Clicked');
            },
            style: OutlinedButton.styleFrom(foregroundColor: Colors.blue),
            child: Text("아웃라인 버튼"),
          ),
          // SizedBox 위젯은 일반적으로 일정 크기의 공간을 공백으로 둘 때 사용
          // Container 위젯도 가능하지만 성능면에서 SizeBox가 유리함
          SizedBox(height: 40.0),
          ElevatedButton(
            onPressed: () {
              print('ElevatedButton Clicked');
            },
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.red,
            ),
            child: Text("엘리베이트 버튼"),
          ),
          IconButton(
            onPressed: () {
              print("IconButton");
            },
            icon: Icon(Icons.home),
          ),
        ],
      ),
    );
  }
}
