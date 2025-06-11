import 'package:flutter/material.dart';
import 'widgets/w01_textwidget.dart';
import 'widgets/w02_imagewidget.dart';
import 'widgets/w03_buttonwidget.dart';
import 'widgets/w04_gesture_detector.dart';
import 'widgets/w09_circular_indicator.dart';
import 'widgets/w10_row_columnwidget.dart';

void main() {
  // WidgetExam 안에서 body를 변경하는 것은 hot reload가 적용됨
  runApp(WidgetExam());

  // runApp()에 위젯을 변경하는 것은 main.dart를 다시 실행해야 함
  //runApp(ImageWidgetExam());
}

class WidgetExam extends StatelessWidget {
  const WidgetExam({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        //body: TextWidgetExam(),
        //body: ImageWidgetExam(),
        //body: ButtonWidgetExam(),
        body: GestureDetectorExam(),
        //body: CircularIndicatorExam(),
        //body: RowAndColumnExam(),
      ),
    );
  }
}

