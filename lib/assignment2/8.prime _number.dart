import 'dart:io';

void main() {
  print("please enter number");
  int input = int.parse(stdin.readLineSync()!);
  if (input > 1) {
    for (int i = 2; i < input; i++) {
      if (input % i == 0) {
        print('no');
        return;
      }
    }
    print('yes');
  } else {
    print('no');
  }
}
