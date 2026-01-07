import "dart:io";

void main() {
  print("please enter  your age ");
  int age = int.parse(stdin.readLineSync()!);

  if (age >= 21) {
    print("Congratulation! You are eligible for casting your vote");
  } else {
    print("Sorry! You are not eligible for casting your vote");
  }
}