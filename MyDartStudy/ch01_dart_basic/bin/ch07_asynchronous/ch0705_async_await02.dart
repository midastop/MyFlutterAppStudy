// async와 await 02 - 반환 값이 있는 함수
// https://dart-ko.dev/codelabs/async-await
void order() async {
  print("음식을 주문 받음");
}

/* 비동기 처리를 위한 함수의 반환 값은 Future<T>와 같이 제네릭을 사용한다. 아래는 반환
 * 값이 문자열이므로 <String>을 사용한다. 그리고 async 키워드를 함수의 매개변수 정의와
 * 함수 본문 사이에 지정하고 await 키워드를 대기 시킬 비동기 함수 앞에 지정하면 된다.
 **/
Future<String> cooking() async {
  String result = "";
  await Future.delayed(Duration(seconds: 3), () {
    result = "음식을 조리 중...";
  });
  return result;
}

void complete() {
  print("조리 완료");
}

void main() async {

  order();
  String result = await cooking();
  print(result);
  complete();
}
/*
  //실행결과
  음식을 주문 받음
  음식을 조리 중...
  조리 완료
 */