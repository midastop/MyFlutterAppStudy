// DateTime과 Duration 01
void main() {
  // 생성자에 year, month, day, hour, minute, second, millisecondm,
  // microsecond를 지정해 날짜와 시간 정보를 다루는 DateTime 객체를 생성할 수 있음
  // 첫 번째 인수인 year은 필수 입력이며 나머지는 기본 값이 있음
  final DateTime date1 = DateTime(2002, 09, 21);
  print(date1);

  // 시간의 기간(간격) 정보를 다루는 Duration 객체 생성
  final Duration duration = Duration(days: 1);

  final DateTime date2 = date1.add(duration);
  print(date2);

  final DateTime date3 = date1.subtract(duration);
  print(date3);
}

