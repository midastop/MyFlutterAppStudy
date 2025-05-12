// null 관련 연산자와 타입 비교 연산자
// null은 아무 값도 없음을 의미하는 키워드로 0과는 다르다.
void main() {
  // 다트 언어에서는 변수가 null 값을 가질 수 있는지를 명시적으로 지정해야 한다.
  // 변수 type 뒤에 ?를 지정하면 그 변수는 null 값을 가질 수 있다.
  int? num1 = 1;

  // 오류발생 - 변수 type 뒤에 ?를 명시하지 않아 null 값을 가질 수 없다.
  //int num2 = null;

  // 다음과 같이 변수를 선언하면 자동으로 null 값이 할당 된다.
  int? num3;

  // 대입 연산자 앞에 ??를 사용하면 변수 값이 null일 때만 값이 저장된다.
  num1 ??= 10;
  num3 ??= 5;
  print(num1);
  print(num3);

  // is 연산자는 변수가 지정한 타입인지 비교하여 논리 값을 반환한다.
  // 다음은 변수 num1이 int 타입이면 true를 int가 아니면 false를 반환한다.
  print(num1 is int);
  print(num1 is String);

  // is! 연산자는 변수가 지정한 타입이 아닌지 비교하여 논리 값을 반환한다.
  // 다음은 변수 num3가 int가 아니면 true를 int 타입이면 false를 반환한다.
  print(num3 is! int);
  print(num3 is! bool);
}