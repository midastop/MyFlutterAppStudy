// final과 const 키워드 - 상수
void main() {
  // final은 런타입, const는 빌드 타입 상수이다.
  final String name = "홍길동";
  //name = "이순신"; //오류 발생
  const String grade = "1";
  // grade = "3";
  // 코드가 실행될 때 값이 확정되면 final
  final DateTime now = DateTime.now();
  print(now);

  // 코드가 실행되기 전에 값이 확정되면 const
  //const DateTime now2 = DateTime.now();
  //print(now);
  final int i = 10;
  const int i2 = 10;
}

