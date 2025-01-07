// 02. Mixin 인스턴스화
//
// 기본적으로 Mixin은 클래스가 아닌 코드 조각에 가까워 인스턴스화 불가능
// Mixin은 생성자를 정의할 수 없으며, 독립적인 객체로 존재할 수 없음

// mixin class
// mixin의 특징과 class의 특징을 모두 가지고 있음
//
//
mixin class Engine {
  int power = 3000;
}

mixin class Wheel {
  String wheelName = '4륜 구동 바퀴';
}

class BMW with Engine, Wheel {}

void main() {
  BMW bmw1 = BMW();
  print('bmw1 power : ${bmw1.power}');
  print('bmw1 wheelName : ${bmw1.wheelName}');

  // Mixin Class는 인스턴스화 가능
  Engine engine = Engine();
  Wheel wheel = Wheel();
  print('engine : ${engine.power}');
  print('wheel : ${wheel.wheelName}');
}
