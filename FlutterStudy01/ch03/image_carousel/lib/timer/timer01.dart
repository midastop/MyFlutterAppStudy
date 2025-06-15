// Timer
import "dart:async";

void main() {
  Timer timer1 = Timer(Duration(seconds: 1), () {
    print("1초 후 한 번 실행함");
  });

  int number = 0;
  Timer timer2 = Timer.periodic(
    Duration(seconds: 1),
    (timer) {
      number++;
      if (number > 5) {
        timer.cancel();
        return;
      }
      print("1초 마다 실행 : $number");
    });
}
