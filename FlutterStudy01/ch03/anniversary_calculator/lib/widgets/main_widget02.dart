import "package:flutter/material.dart";

// main_widget01 에서 배경 색상 및 폰트 적용해 디자인 마무리
class MainScreenWidget02 extends StatelessWidget {
  const MainScreenWidget02({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[100],
      body: SafeArea(
        // top, bottom, left, right 지정 가능, 기본 값 : true
        bottom: false,
        child: SizedBox(
          //width: double.infinity,
          // MediaQuery를 사용해서 현재 앱이 실행되는 너비와 높이 등을 알 수 있음
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Expanded(
                child: Container(
                  child: Column(
                    children: [
                      Text(
                        "Anniversary",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Parisienne',
                          fontSize: 80,
                        ),
                      ),
                      Text(
                        "우리 처음 만난날",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Sunflower',
                          fontSize: 30.0,
                        ),
                      ),
                      Text(
                        "2025-02-18",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Sunflower',
                          fontSize: 20.0,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        //https://api.flutter.dev/flutter/material/Icons-class.html
                        icon: Icon(
                          Icons.calendar_month,
                          color: Colors.pink,
                          size: 40,
                        ),
                      ),
                      Text(
                        "D+1",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Sunflower',
                          fontSize: 50.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
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
