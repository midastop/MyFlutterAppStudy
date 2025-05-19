// 콜백 함수(callback function)
void order() {
  print("음식을 주문 받음");
}

void cooking(callback) {

  Future.delayed(Duration(seconds: 3), () {
    print("음식을 조리 중...");

    /* 콜백 함수는 이벤트 처리나 비동기 처리에서 사용되는 함수로 특정 이벤트가
     * 발생하거나 작업이 완료되면 자동으로 호출되는 함수를 말한다.
     **/
    callback();
  });
}

void complete() {
  print("조리 완료");
}

void main() {
  /* 다음과 콜백 함수(callback function)를 사용하면 비동기 처리를 하면서 
   * 코드의 실행 순서를 제어할 수 있다.
   **/
  order();
  cooking(complete);
}
/*
  //실행결과
  음식을 주문 받음
  음식을 조리 중...
  조리 완료
 */