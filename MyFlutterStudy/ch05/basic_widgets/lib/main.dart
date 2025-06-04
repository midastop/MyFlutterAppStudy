import 'package:flutter/material.dart';
import 'widgets/widget01_text_widget.dart';
import 'widgets/widget02_button_widget.dart';
import 'widgets/widget03_gesture_detector.dart';
import "widgets/widget04_container_widget.dart";
import "widgets/widget05_sizedbox_widget.dart";
import "widgets/widget06_padding_widget.dart";
import "widgets/widget07_safearea_widget.dart";
import "widgets/widget08_row_widget.dart";
import "widgets/widget09_column_widget.dart";
import "widgets/Widget10_flexible_widget.dart";
import "widgets/widget11_expanded_widget.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          //child: TextWidgetExam()
          //child: ButtonExam(),
          //child: GestureDetectorExam(),
          //child: ContainerExam(),
          //child: SizedBoxExam(),
          //child: PaddingWidgetExam(),
          //child: SafeAreaExam(),
          //child: RowWidgetExam(),
          //child: ColumnWidgetExam(),
          //child: FlexibleExam(),
          child: ExpandedExam(),
        )
      )
    );
  }
}
