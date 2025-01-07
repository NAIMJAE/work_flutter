// Ⅱ Mixin
// 01. Mixin이란?
// Mixin은 Dart에서 클래스 간의 코드를 재사용하기 위한 메커니즘, 일종의 코드 조각
// Mixin을 사용해 다중 상속의 문제를 해결할 수 있으며, 컴퍼지션을 사용하지 않고 여러 클래스의 기능을 공유할 수 있음

// Mixin의 필요성
// Java에서는 하나의 클래스는 오직 하나의 클래스만 상속할 수 있는 단일 상속만 허용
// 대신 interface를 통해 다중 구현이 가능하지만, 메서드의 구체적인 구현이 제한
// Mixin을 활용하면 다중 상속 문제를 해결하고, 다른 클래스의 기능을 재사용 가능

// with 키워드
// Mixin을 클래스에 주입할 때 사용
// 다른 클래스의 코드를 상속 없이 재사용하기 위해 사용
// 만약 Mixin 주입 과정에서 코드 충돌이 발생할 경우 마지막에 주입된 Mixin의 메서드가 우선 적용

// Mixin 예제
mixin Engine {
  int power = 5000;
}

mixin Wheel {
  String wheelName = '4륜 구동 바퀴';
}

class BMW with Engine, Wheel {}

void main() {
  // BMW 객체 인스턴스화
  BMW bmw1 = BMW();
  print('bmw1 power : ${bmw1.power}');
  print('bmw1 wheelName : ${bmw1.wheelName}');

  // Wheel wheel1 = Wheel(); // Mixin은 인스턴스화 불가능
}

// Mixin은 인스턴스화 불가능
// Mixin은 컴파일 과정에서 주입되는 class로 병합되어 하나의 인스턴스가 됨
// 즉, Mixin은 독립적으로 인스턴스화 할 수 없음
