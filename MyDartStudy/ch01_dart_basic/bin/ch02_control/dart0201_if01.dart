// if 문
void main() {
  int score = 69;
  if(score >= 70) {
    print("합격");
  } else {
    print("불합격");
  }

  if(score >= 90) {
    print("$score점 : A학점");
  } else if(score >= 80) {
    print("$score점 : B학점");
  } else if(score >= 70) {
    print("$score점 : C학점");
  } else if(score >= 60) {
    print("$score점 : D학점");
  } else {
    print("$score점 : F학점");
  }

}