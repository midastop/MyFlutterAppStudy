import 'package:flutter/material.dart';

class RowAndColumnExam extends StatelessWidget {
  const RowAndColumnExam({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // BoxDecoration 위젯은 Container 위젯의 디자인 적용하는 위젯으로
      // 컨테이너의 배경색, 테두리 등의 속성을 설정할 수 있음
      decoration: BoxDecoration(color: Colors.deepOrange),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('assets/flutter_log.png', width: 200),
              SizedBox(height: 50.0),
              CircularProgressIndicator(color: Colors.white),
            ],
          ),
        ],
      ),
    );
  }
}
