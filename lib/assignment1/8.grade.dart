import "dart:io";

void main() {
  print(" please enter the your grade as (A, B, C, D, F):");
  String grade = stdin.readLineSync()!;
  switch (grade) {
    case 'A'||'a':
      print("Excellent");
      break;
    case 'B'||'b':
      print("Outstanding");
      break;
    case 'C'||'c':
      print("Good");
      break;
    case 'D'||'d':
      print("Can Do Better");
      break;
    case 'F'||'f':
      print("Failed!");
      break;
    default:
      print("Invalid grade");
  }
}
