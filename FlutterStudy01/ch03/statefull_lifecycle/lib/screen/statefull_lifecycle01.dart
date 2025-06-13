import "package:flutter/material.dart";

class StatefullLifeCycle01 extends StatefulWidget {
  const StatefullLifeCycle01({super.key});

  @override
  State<StatefullLifeCycle01> createState() => _StatefullLifeCycle01State();
}

class _StatefullLifeCycle01State extends State<StatefullLifeCycle01> {
  bool show = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if(show) MyWidget(),
            SizedBox(height: 24.0),
            ElevatedButton(
              onPressed: () {
                //print("Clicked ~");
                setState(() {
                  show = !show;
                });
              },
              child: Text("클릭해서 보이기/안보이기")
            ),
          ],
        ),
      ),
    );
  }
}

class MyWidget extends StatefulWidget {
  MyWidget({super.key}) {
    print("MyWidget 생성자");
  }

  @override
  State<MyWidget> createState() {
    print("createState() 호출");

    return _MyWidgetState();
  }
}

class _MyWidgetState extends State<MyWidget> {

  @override
  void initState() {
    print("initState() 호출");
    super.initState();
  }

  @override
  void didChangeDependencies() {
    print("didChangeDependencies() 호출");
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    print("build() 호출");
    return Container(
      color: Colors.red,
      width: 50.0,
      height: 50,
    );
  }

  @override
  void deactivate() {
    print("deactivate() 호출됨");
    super.deactivate();
  }

  @override
  void dispose() {
    print("dispose() 호출됨");
    super.dispose();
  }
}

