import "package:flutter/material.dart";

// Stateful 위젯의 상태 변경이 없는 생명주기
class StatefulLifeCycle01 extends StatefulWidget {
  const StatefulLifeCycle01({super.key});

  @override
  State<StatefulLifeCycle01> createState() => _StatefulLifeCycle01State();
}

class _StatefulLifeCycle01State extends State<StatefulLifeCycle01> {
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
    return Container(color: Colors.green, width: 100, height: 100);
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
