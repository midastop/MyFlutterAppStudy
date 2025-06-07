import 'package:flutter/material.dart';
import 'widgets/splash01_textwidget.dart';
import 'widgets/splash02_imagewidget.dart';
import 'widgets/splash03_progress_indicator.dart';
import 'widgets/splash04_row_columnwidget.dart';

void main() {
  // SplashScreenExam 안에서 body를 변겨하는 것은 hot reload가 적용됨
  runApp(SplashScreenExam());
  // runApp()에 위짓을 변경하는 것은 main.dart를 다시 실행해야 함
  //runApp(SplashTextExam());
}

class SplashScreenExam extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          //child: SplashTextExam(),
          //child: SplashImageExam(),
          //child: SplashProgressExam(),
          child: SplashRowColumnExam(),
        ),
      ),
    );
  }
}

