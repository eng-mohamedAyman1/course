import "dart:io";

void main() {
  print("please enter an integer:");
  int number = int.parse(stdin.readLineSync()!);
  if (number > 0) {
    print("The number is “Positive”");
  } else if (number < 0) {
    print("The number is “Negative”");
  } else {
    print("The number is “Zero”");
  }
}
