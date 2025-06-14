import "package:flutter/material.dart";

class MyStatelessWidget extends StatelessWidget {
  Color color = Colors.deepOrange;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(width: 100.0, height: 100.0, color: color),
            SizedBox(height: 24.0),
            ElevatedButton(
              onPressed: () {
                color = color == Colors.deepOrange
                    ? Colors.lightBlue
                    : Colors.deepOrange;
                print("color 변경됨 : $color");
              },
              child: Text("색상 변경"),
            ),
          ],
        ),
      ),
    );
  }
}
