import "dart:io";
import"dart:math";
void main() {
  print("please enter the radius of the cylinder:");
  double radius = double.parse(stdin.readLineSync()!);

  print("please enter the length of the cylinder:");
  double length = double.parse(stdin.readLineSync()!);
  // solution1
  double area = radius * radius *3.14;
  double volume = area * length;
  print("The area is $area");
  print("The volume is $volume");
  print("---------------------");
  // solution2
   area = radius * radius *pi;
   volume = area * length;

  print("The area is $area");
  print("The volume is $volume");
}
