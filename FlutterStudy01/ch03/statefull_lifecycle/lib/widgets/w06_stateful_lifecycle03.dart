import "package:flutter/material.dart";

// Stateful 위젯의 생성자 매개변수가 변경되었을 때 생명주기
class StatefulLifeCycle03 extends StatefulWidget {
  const StatefulLifeCycle03({super.key});

  @override
  State<StatefulLifeCycle03> createState() => _StatefulLifeCycle03State();
}

class _StatefulLifeCycle03State extends State<StatefulLifeCycle03> {
  bool show = false;
  Color color = Colors.green;

  // build() 함수는 최초 실행될 때 두 번 호출됨
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (show) GestureDetector(
              onTap: () {
                setState(() {
                  color = color == Colors.green ? Colors.orange : Colors.green;
                });
              },
              child: MyWidget(color: color)
            ),
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
  final Color color;

  MyWidget({super.key, required this.color}) {
    print("[1] MyWidget 생성자 실행됨");
  }

  @override
  State<MyWidget> createState() {
    print("[2] MyWidget - createState() 실행됨");
    return _MyWidgetState();
  }
}

class _MyWidgetState extends State<MyWidget> {
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
    return Container(color: widget.color, width: 100, height: 100);
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
