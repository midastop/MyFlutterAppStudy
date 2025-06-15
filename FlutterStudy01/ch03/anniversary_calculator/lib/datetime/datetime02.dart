// DateTime의 함수
void main() {
  final DateTime date1 = DateTime(2002, 9, 21);
  final DateTime date2 = DateTime(2012, 9, 21);

  // 현재 시간 데이터가 입력 받은 데이터 보다 이후 날짜 인지 여부를 true/false로 반환
  print(date2.isAfter(date1));

  // 현재 시간 데이터가 입력 받은 데이터 보다 이전 날짜 인지 여부를 true/false로 반환
  print(date2.isBefore(date1));
  DateTime date3 = date1;
  
  // 현재 시간 데이터가 입력 받은 데이터 보다 크면 1, 같으면 0, 작으면 -1을 반환
  print(date1.compareTo(date2));
  print(date1.compareTo(date3));
  print(date2.compareTo(date1));

  // 현재 시간 데이터와 입력 받은 데이터가 같은 값인지 여부를 true/false로 반환
  print(date1.isAtSameMomentAs(date2));
  print(date1.isAtSameMomentAs(date3));

  // 현재 시간을 UTC와 UTC 데이터를 로컬 데이터로 변환
  DateTime utcDate = date1.toUtc();
  print(utcDate);
  DateTime localDate = utcDate.toLocal();
  print(localDate);
}