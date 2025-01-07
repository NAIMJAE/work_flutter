// 문제 - 추상 클래스와 동적 바인딩을 활용한 다형성 구현

abstract class Shape {
  double getArea();
}

class Circle implements Shape {
  final double radius;
  Circle(this.radius);

  @override
  double getArea() {
    return 3.14 * radius * radius;
  }
}

class Rectangle implements Shape {
  final double width;
  final double height;
  Rectangle(this.width, this.height);

  @override
  double getArea() {
    return width * height;
  }
}

// + 동적 바인딩을 활용해 보자
void calculateArea(Shape shape) {
  print(shape.getArea());
}

void main() {
  Shape myCircle = Circle(5.0);
  Shape myRectangle = Rectangle(4.0, 6.0);

  calculateArea(myCircle);
  calculateArea(myRectangle);
}
