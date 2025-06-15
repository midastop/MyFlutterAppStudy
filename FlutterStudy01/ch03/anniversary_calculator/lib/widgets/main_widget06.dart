import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";

// main_widget05 에서 상태 위로 올리기 작업
// 상태를 효율적으로 관리하기 위해서 중앙화, _MainScreenTop, _MainScreenBottom이
// 모두 사용되는 곳에서 하는게 효율적이며 이렇게 상위로 상태 관리를 이동하는 것을 상태 올리기라고 함
class MainScreenWidget06 extends StatefulWidget {
  const MainScreenWidget06({super.key});

  @override
  State<MainScreenWidget06> createState() => _MainScreenWidget06State();
}

class _MainScreenWidget06State extends State<MainScreenWidget06> {
  DateTime selectedDate = DateTime.now();

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
              _MainScreenTop(
                selectedDate: selectedDate,
                onPressed: onCalendarPressed,
              ),
              _MainScreenBottom(),
            ],
          ),
        ),
      ),
    );
  }

  onCalendarPressed() {
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
                setState(() {
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
  }
}

class _MainScreenTop extends StatelessWidget {
  final DateTime selectedDate;
  final VoidCallback onPressed;

  const _MainScreenTop({
    super.key,
    required this.selectedDate,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final now = DateTime.now();

    return Expanded(
      child: Container(
        child: Column(
          children: [
            Text("Anniversary", style: textTheme.displayLarge),
            SizedBox(height: 30.0),
            Text("우리 처음 만난날", style: textTheme.bodyLarge),
            Text(
              "${selectedDate.year}.${selectedDate.month}.${selectedDate.day}",
              style: textTheme.bodyMedium,
            ),
            SizedBox(height: 20.0),
            IconButton(
              onPressed: onPressed,
              //https://api.flutter.dev/flutter/material/Icons-class.html
              icon: Icon(Icons.calendar_month, color: Colors.pink, size: 40),
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
      child: Container(child: Image.asset("asset/img/middle_image.png")),
    );
  }
}
