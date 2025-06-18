// 연산자
void main() {
  int i = 10;
  print(i / 3);
  print(i % 3);

  int j = i++;

  print("j = $j, i = $i, j + i = ${j + i}");

  String result = i > 3 ? "큰수":'';
  print(result);

  int? num1;
  //int num2 = num1! + 1;
  num1 ??= 10;
  j ??= 100;
  print('num1 : $num1, j : $j');
  print(num1 is int);
  print(num1 is! int);
}
