import "dart:io";

void main() {
  print("please enter your name:");
  String name = stdin.readLineSync()!;
  print("please enter your age:");
  int age = int.parse(stdin.readLineSync()!);
  int yearsLeft = 100 - age;
  print("Hi, $name, you have $yearsLeft years left to be 100 years old");
}
