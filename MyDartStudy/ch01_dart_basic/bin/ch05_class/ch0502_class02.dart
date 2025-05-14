// 생성자(Constructor)
class Tv {
  // late는 변수의 초기화를 미루겠다는 의미
  late String name;
  bool isPower = false;
  late int? channel;

  // 생성자 이름은 클래스 이름과 동일해야 한다.
  //Tv(String name, int channel) {
  //  this.name = name; this.channel=channel; }

  // 위의 생성자를 중괄호 없이 콜론(:) 기호를 사용해 다음과 같이 정의할 수 있다.
  // 다트는 자바나 C++ 처럼 메소드 오버로딩을 지원하지 않는다.
  // Tv(String name) : this.name = name, this.channel = channel;

  // 위의 생성자를 다음과 같이 간단히 정의할 수 있으며 해당 변수에 매개변수 값이 할당된다.
  Tv(this.name, this.channel);

  // 네임드 생성자(named constructor)
  // "클래스명.네임드 생성자명" 형식으로 생성자를 정의할 수 있으며 나머지는 위와 같다.
  Tv.fromNamed(Map<String, dynamic> map)
      : this.name = map["name"],
        this.isPower = map['power'];

  // 다트는 오버로딩을 지원하지 않지만 다음과 같이 강력한 선택적 매개변수를 사용할 수 있다.
  // null이 허용되지 않는 프로퍼티는 required를 붙여줘야 한다.
  Tv.creator({required this.name, this.channel, this.isPower=false});

  void power() {
    isPower = !isPower;
  }

  int? channelUp() {
    channel = channel != null ? channel! + 1 : 1; //channel ??= 1;

    return channel = channel! + 1;
  }

  int channelDown() {
    return --channel;
  }
}