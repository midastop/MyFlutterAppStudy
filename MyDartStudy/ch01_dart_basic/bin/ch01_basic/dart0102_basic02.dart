// var과 dynamic 키워드
void main() {

  var name = '코드 팩토리';
  print(name);

  name = "골든 래빗";
  print(name);
  // var 변수에 값이 들어가면 자동으로 타입을 추론
  // 컴파일 될 때 추론된 타입으로 var이 치환된다.
  //name = 1;
  dynamic grade = 10;
  print(grade);
  grade = '학년';
  print(grade);
}