import 'package:flutter/material.dart';
import 'widgets/widget01_text_widget.dart';
import 'widgets/widget02_button_widget.dart';
import 'widgets/widget03_gesture_detector.dart';
import "widgets/widget04_container_widget.dart";
import "widgets/widget05_sizedbox_widget.dart";
import "widgets/widget06_padding_widget.dart";
import "widgets/widget07_safearea_widget.dart";
import "widgets/widget08_row_widget.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          //child: ButtonExam(),
          //child: TextWidgetExam()
          //child: GestureDetectorExam(),
          //child: ContainerExam(),
          //child: SizedBoxExam(),
          //child: PaddingWidgetExam(),
          //child: SafeAreaExam(),
          child: RowWidgetExam(),
        )
      )
    );
  }
}
