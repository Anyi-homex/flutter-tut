import 'dart:math';

class Bicycle {
  Bicycle(this.cadence, this.gear);
  int cadence;
  int _speed = 0;
  int gear;

  int get speed => _speed;

  @override
  String toString() => 'Bicycle: $speed mph';

  void applyBrake(int decrement) {
    _speed -= decrement;
  }

  void speedUp(int increment) {
    _speed += increment;
  }
}

// void main() {
//   var bike = Bicycle(2, 1);
//   print(bike);
//   print(bike.cadence);
// }

class Rectangle {
  Rectangle({this.origin = const Point(0, 0), this.width = 0, this.height = 0});
  int width;
  int height;
  Point origin;

  @override
  String toString() =>
      'Origin: (${origin.x}, ${origin.y}), width: $width, height: $height';
}

// main() {
//   print(Rectangle(origin: const Point(10, 20), width: 100, height: 200));
//   print(Rectangle(origin: const Point(10, 10)));
//   print(Rectangle(width: 200));
//   print(Rectangle());
// }

abstract class Shape {
//   factory Shape(String type) {
//     if (type == 'circle') return Circle(2);
//     if (type == 'square') return Square(2);
//     throw 'Can\'t create $type.';
//   }
  num get area;
}

class Circle implements Shape {
  final num radius;
  Circle(this.radius);
  num get area => pi * pow(radius, 2);
}

class CircleMock implements Circle {
  num area = 0;
  num radius = 0;
}

class Square implements Shape {
  final num side;
  Square(this.side);
  num get area => pow(side, 2);
}

Shape shapeFactory(String type) {
  if (type == 'circle') return Circle(2);
  if (type == 'square') return Square(2);
  throw 'Can\'t create $type.';
}


// main() {
// //   final circle = Circle(2);
// //   final square = Square(2);
// //   print(circle.area);
// //   print(square.area);
  
  
//   final circle = shapeFactory('circle');
//   final square = shapeFactory('square');

//   print(circle.area);
//   print(square.area);
// }