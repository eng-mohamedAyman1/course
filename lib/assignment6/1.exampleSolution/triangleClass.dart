import 'dart:math';

import 'GeometricClass.dart';

class Triangle extends GeometricObject {
  late double side1;
  late double side2;
  late double side3;

  Triangle() {
    this.side1 = 1.0;
    this.side2 = 1.0;
    this.side3 = 1.0;
  }

  Triangle.withSides(
    this.side1,
    this.side2,
    this.side3,
      );
  double getArea() {
    double s = (side1 + side2 + side3) / 2;
    return sqrt(s * (s - side1) * (s - side2) * (s - side3));
  }
  double getPerimeter() {
    return side1 + side2 + side3;
  }
  @override
  String toString() {
    return "Triangle: side1 = $side1, side2 = $side2, side3 = $side3";
  }
}
