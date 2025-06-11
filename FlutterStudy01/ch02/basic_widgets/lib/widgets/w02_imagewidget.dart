import 'package:flutter/material.dart';

class ImageWidgetExam extends StatelessWidget {
  const ImageWidgetExam({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Color(0xFFFFFFFF)),
      child: Center(child: Image.asset('assets/flutter_log.png')),
    );
  }
}
