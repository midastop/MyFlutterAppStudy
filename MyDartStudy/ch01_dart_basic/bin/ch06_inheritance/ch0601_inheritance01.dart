// 상속(Inheritance)
import "../ch05_class/product.dart";

// 상속은 extends 키워드를 사용해 상속 받을 클래스 이름을 지정하면 된다.
// 상속 받은 클래스가 가진 멤버와 메서드를 사용할 수 있다.
class Book extends Product {
  String isbn;

  // 부모 클래스의 프라이빗 변수를 자식 클래스의 생성자에서 접근할 수 있다.
  Book(super._name, super._price, this.isbn);

  // 다음과 같이 자식클래스의 생성자에서 부모 클래스의 생성자를 호출할 수 있다.
  Book.creator(String name, int price, String isbn)
      : this.isbn = isbn,
        super(name, price);
}

void main() {
  Book b1 = Book("플러터&다트 프로그래밍", 33000, "9791163034568");
  print(b1.name);

  Book b2 = Book.creator("플러터 프로그래밍", 39600, "9791194383055");
  print(b2.name);
  b2.productInfo();
}