import 'package:flutter/material.dart';

class CircularIndicatorExam extends StatelessWidget {
  const CircularIndicatorExam({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // Container 위젯의 width를 최대한의 크기로 지정
      width: double.infinity,
      decoration: BoxDecoration(color: Colors.deepOrange),
      child: Column(
        // Column 위젯에서 주축의 기본 크기는 부모의 여유 공간을 최대로 채우는
        // 크기를 가지며 교차축의 기본 크기는 컨텐츠의 크기가 됨
        mainAxisSize: MainAxisSize.max,
        // 주축의 기본 정렬은 start이며 교차축은 center 임
        mainAxisAlignment: MainAxisAlignment.center,        
        //crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset('assets/flutter_log.png'),
          SizedBox(height: 50.0),
          CircularProgressIndicator(),
          //Expanded(child: Image.asset('assets/flutter_log.png')),
          //Flexible(child: CircularProgressIndicator()),
        ],
      ),
    );
  }
}
