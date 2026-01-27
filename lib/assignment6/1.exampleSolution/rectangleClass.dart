import 'GeometricClass.dart';

class Rectangle extends GeometricObject {
late  double height;
late  double width;

  // No-arg constructor
  Rectangle(){
    height = 1.0;
    width = 1.0;
  }



  Rectangle.withProperties(this.width, this.height);

  double getArea() {
    return width * height;
  }

  double getPerimeter() {
    return 2 * (width + height);
  }
  @override
  String toString() {
    return "Rectangle: height = $height, width = $width";
  }
}