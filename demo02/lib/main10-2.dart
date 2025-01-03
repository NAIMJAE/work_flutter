// 05. 생성자
// 생성자란?
// 객체가 생성될 때 호출되는 메서드로, 주로 클래스의 필드를 초기화하는 데 사용합니다.
// Dart에서 기본 생성자를 만들지 않으면, 컴파일러가 자동으로 생성합니다.
void main() {
  Dog dog = Dog('토토', 5, '블랙', 100);
}

class Dog {
  String name;
  int age;
  String color;
  int thirsty;

  // Dog(this.name, this.age, this.color, this.thirsty) {}
  Dog(this.name, this.age, this.color, this.thirsty); // 생성자 구현 부분 생략 가능
// Dog(this.name, this.age); --> dart 언어에서는 생성자 오버로딩 불가능
// Dart 언어에서는 다른 방법으로 동일한 기능을 제공
// 오버로딩보다 더 강력한 선택적 매개변수가 있기 때문에 dart에서는 오버로딩이 없다.
}
// dart 언어는 기본적으로 null 값을 허용하지 않습니다.
// 그래서 변수를 선언하고 초기화하지 않으면 사용할 수 없습니다.
// 초기화 하지 않은 변수를 사용하기 위해서는 생성자를 만들어줘야 합니다.
