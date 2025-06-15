import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";

// main_widget04 에서 DatePicker에서 선택된 데이터 적용하기 - StatefulWidget
class MainScreenWidget05 extends StatelessWidget {
  const MainScreenWidget05({super.key});

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
              _MainScreenTop(),
              _MainScreenBottom(),
            ],
          ),
        ),
      ),
    );
  }
}

class _MainScreenTop extends StatefulWidget {
  const _MainScreenTop({super.key});

  @override
  State<_MainScreenTop> createState() => _MainScreenTopState();
}

class _MainScreenTopState extends State<_MainScreenTop> {
  DateTime selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final now = DateTime.now();

    return Expanded(
      child: Container(
        child: Column(
          children: [
            Text(
              "Anniversary",
              style: textTheme.displayLarge,
            ),
            SizedBox(
              height: 30.0,
            ),
            Text(
              "우리 처음 만난날",
              style: textTheme.bodyLarge,
            ),
            Text(
              "${selectedDate.year}.${selectedDate.month}.${selectedDate.day}",
              style: textTheme.bodyMedium,
            ),
            SizedBox(
              height: 20.0,
            ),
            IconButton(
              onPressed: () {
                print("icon button...");
                showCupertinoDialog(
                  context: context,
                  barrierDismissible: true,
                  builder: (BuildContext context) {
                    // 어디에 배치해야 하는지 정렬 속성을 지정하지 않으면 width, height가 적용되지 않고 전체 창 크기로 실행됨
                    return Align(
                      alignment: Alignment.center,
                      child: Container(
                        color: Colors.white,
                        height: 300.0,
                        child: CupertinoDatePicker(
                          // 날짜만 보이도록
                          mode: CupertinoDatePickerMode.date,
                          onDateTimeChanged: (DateTime date) {
                            setState((){
                              selectedDate = date;
                            });
                          },
                          // DatePicker 날짜가 년,월,일 순서로 보이게
                          dateOrder: DatePickerDateOrder.ymd,
                        ),
                      ),
                    );
                  },
                );
              },
              //https://api.flutter.dev/flutter/material/Icons-class.html
              icon: Icon(
                Icons.calendar_month,
                color: Colors.pink,
                size: 40,
              ),
            ),
            Text(
              "D+${now.difference(selectedDate).inDays + 1}",
              style: textTheme.displayMedium,
            ),
          ],
        ),
      ),
    );
  }
}

class _MainScreenBottom extends StatelessWidget {
  const _MainScreenBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: Image.asset("asset/img/middle_image.png"),
      ),
    );
  }
}

