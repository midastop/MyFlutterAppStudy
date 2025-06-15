import "package:flutter/material.dart";

// 프로젝트 생성, 폰트 에셋 추가 및 기본 레이아웃 잡기
class MainScreenWidget01 extends StatelessWidget {
  const MainScreenWidget01({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        // top, bottom, left, right 지정 가능, 기본 값 : true
        bottom: false,
        child: SizedBox(
          //width: double.infinity,
          // MediaQuery를 사용해서 현재 앱이 실행되는 너비와 높이 등을 알 수 있음
          width: MediaQuery.of(context).size.width,
          child: Column (
            children: [
              Expanded(
                child: Container(
                  color: Colors.red,
                  child: Column(
                    children: [
                      Text("Anniversary"),
                      Text("우리 처음 만난날"),
                      IconButton(
                        onPressed: () {},
                        //https://api.flutter.dev/flutter/material/Icons-class.html
                        icon: Icon(Icons.memory),
                      ),
                      Text("D+1")
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                color: Colors.blue,
                  child: Image.asset("asset/img/middle_image.png"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
