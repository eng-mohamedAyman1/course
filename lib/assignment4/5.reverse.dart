import 'dart:io';
import '../assignment3/6.OptimizedBubbleSort.dart';

void main() {
  printWelcomeMessage();
  List<int> array = getUserArray();
  print("${array.reversed.join(' ')}");
  print("-------------------------------");
  reverse(array);
}

void printWelcomeMessage() {
  print(
    "Welcome to my program\n"
    "This program is reverse the input \n",
  );
}

List<int> getUserArray() {
  print("please Enter 10 numbers");
  List<int> array = [];

  for (int i = 1; i <= 10; i++) {
    print("Number $i:");
    int number = readValidNumber();
    array.add(number);
  }

  return array;
}

int readValidNumber() {
  int? number = int.tryParse(stdin.readLineSync()!);

  while (number == null) {
    print("Please enter a valid number");
    number = int.tryParse(stdin.readLineSync()!);
  }

  return number;
}
void reverse(List<int>array){
  for(int i =array.length-1;i>=0;i--){
    stdout.write("${array[i]} ");
  }
}
