// [Flutter] Dart 언어 기본 문법 #03 - 클래스와 인스턴스
// Ⅰ 클래스
// 01. 클래스

// 클래스(Class)란?
// 클래스는 객체(인스턴스)를 정의하는 설계도

// 객체(Object)란?
// 클래스를 통해서 프로그램에서 실제로 생성되는 인스턴스
// 객체는 보통 속성(상태)과 행위를 가질 수 있다.

// 객체 지향 프로그래밍(OOP)란?
// 객체와 객체간에 관계를 형성하고, 그 상호작용을 통해 애플리케이션을 설계, 구현하는 프로그래밍 패러다임

// ※ 참고 : OOP의 주요 목적은 복잡한 문제를 더 작은 객체로 나누는 것에 있습니다.

void main() {
  // 02. 클래스 생성
  // Dog p1 = new Dog();
  Dog d1 = Dog(); // dart에서는 new 키워드를 생략할 수 있다.

  print('이름 : ${d1.name}');
  print('나이 : ${d1.age}');
  print('색상 : ${d1.color}');
  print('목마름 지수 : ${d1.thirsty}');

  // 03. 메서드 생성
  Dog d2 = Dog();

  print('목마름 지수 : ${d2.thirsty}');

  d2.drinkWater();

  print('목마름 지수 : ${d2.thirsty}');
}

// dart 에서는 접근제어지시자 2개만 존재 (public, private) / 명시 안하면 public
class Dog {
  String name = '토토';
  int age = 5;
  String color = '블랙';
  int thirsty = 100;

  // 물을 마실 때 마다 갈증 지수가 10씩 내려간다.
  void drinkWater() {
    thirsty -= 10;
  }
}

class Water {
  double liter = 2000; // 물 2000ml

  void drink() {
    liter -= 10;
  }
}
