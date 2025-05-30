import 'package:flutter/material.dart';

// 제스처 디텍터(Gesture Dector)와 플로팅 액션 버트(Floating Action Button)
class GestureDetectorExam extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
            onPressed: () { print("floating clicked"); },
            child: Text('클릭')
        ),
        body: Center(
          child: GestureDetector(
            onTap: () { print('on Tap'); },
            onDoubleTap: () { print('on Double Tap'); },
            onLongPress: () { print("on long Press"); },
            child: Container(
              decoration: BoxDecoration(
                color: Colors.red,
              ),
              width: 100.0,
              height: 100.0,
            ),
          ),
        ),
      ),
    );
  }
}