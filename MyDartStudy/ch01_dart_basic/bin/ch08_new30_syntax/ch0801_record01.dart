// 레코드 record
// 레코드는 다트 3.0에 새롭게 추가된 새로운 데이터 타입이다.
void main() {
  // 레코드는 포지셔널 파라미터(positional parameter) 또는 네임드 파라미터(named parameter) 방식을 사용할 수 있다.
  (String, int, String) s1 = ("홍길동", 23, "남성");
  print(s1);
  print(s1.$3);

  ({String name, int age, String gender}) s2 = (name: "어머나", age: 33, gender: "여성");
  print(s2);
}