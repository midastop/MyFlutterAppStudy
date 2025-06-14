import "package:flutter/material.dart";

// Stateful 위젯의 State에서 build() 함수를 다시 실행할 때 생명쥐
class StatefulLifeCycle02 extends StatefulWidget {
  const StatefulLifeCycle02({super.key});

  @override
  State<StatefulLifeCycle02> createState() => _StatefulLifeCycle02State();
}

class _StatefulLifeCycle02State extends State<StatefulLifeCycle02> {
  bool show = false;

  // build() 함수는 최초 실행될 때 두 번 호출됨
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (show) MyWidget(),
            SizedBox(height: 24.0),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  show = !show;
                });
              },
              child: Text(show ? "감추기" : "보이기"),
            ),
          ],
        ),
      ),
    );
  }
}

class MyWidget extends StatefulWidget {
  MyWidget({super.key}) {
    print("[1] MyWidget 생성자 실행됨");
  }

  @override
  State<MyWidget> createState() {
    print("[2] MyWidget - createState() 실행됨");
    return _MyWidgetState();
  }
}

class _MyWidgetState extends State<MyWidget> {
  Color color = Colors.pink;

  @override
  void initState() {
    print("[3] _MyWidgetState - initState() 실행됨");
    super.initState();
  }

  @override
  void didChangeDependencies() {
    print("[4] _MyWidgetState - didChangeDependencies() 실행됨");
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    print("[5] _MyWidgetState - build() 실행됨");
    return GestureDetector(
      onTap: () {
        setState(() {
          if(color == Colors.pink) {
            color = Colors.lightBlue;
          } else {
            color = Colors.pink;
          }
        });
      },
      child: Container(color: color, width: 100, height: 100),
    );
  }

  @override
  void deactivate() {
    print("[6] _MyWidgetState - deactivate() 실행됨");
    super.deactivate();
  }

  @override
  void dispose() {
    print("[7] _MyWidgetState - dispose() 실행됨");
    super.dispose();
  }
}
