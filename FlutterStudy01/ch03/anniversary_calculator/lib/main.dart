import 'package:flutter/material.dart';
import 'widgets/main_widget01.dart';
import 'widgets/main_widget02.dart';
import 'widgets/main_widget03.dart';
import 'widgets/main_widget04.dart';
import 'widgets/main_widget05.dart';
import 'widgets/main_widget06.dart';
import 'widgets/main_widget07.dart';

// Theme 적용
void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        // 기본 fontFamily 설정 - fontFamily가 설정되지 않은 테마에 적용됨
        fontFamily: "Sunflower",
        textTheme: TextTheme(
          displayLarge: TextStyle(
            color: Colors.white,
            fontSize: 80.0,
            fontFamily: 'Parisienne',
          ),
          displayMedium: TextStyle(
            color: Colors.white,
            fontSize: 50.0,
            fontWeight: FontWeight.w600,
          ),
          bodyLarge: TextStyle(
            color: Colors.white,
            fontSize: 30.0,
          ),
          bodyMedium: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
          ),
        ),
      ),

    //home: MainScreenWidget01(),

    //home: MainScreenWidget02(),
    //home: MainScreenWidget03(),
    //home: MainScreenWidget04(),
    //home: MainScreenWidget05()
    //home: MainScreenWidget06(),
    home: MainScreenWidget07(),
  ));
}





