import 'package:flutter/material.dart';
//import 'screen/home_screen.dart';
import 'package:blog_webapp/screen/home_screen.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MaterialApp(
      home: HomeScreen(),
    ),
  );
}


