// 포지셔널 파리미터(positional parameter), 네임드 파라미터(named parameter)
void main() {


}

int subtract(int a, int b) {
  return a - b;
}

int multiple({required int a, required int b}) {
  return a * b;
}

// 이름을 받아서 인사말을 직접 출력하는 함수 정의
// 아래와 같이 순서가 있는 매개변수를 순서가 고정된 매개변수(위치 매개변수, positional parameter)라고 한다.ㅊ
String hello(String name, [int age = 20]) {
  return "안녕 $name 당신은 $age세 군요";
}

String greeting({required String name, int age=20}) {
  return "안녕 $name 당신은 $age세 군요";
}
