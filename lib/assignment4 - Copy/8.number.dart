import 'dart:io';
import '../assignment3/6.OptimizedBubbleSort.dart';

void main() {
  printWelcomeMessage();
  List<int> array = getUserArray();
print("The number of distinct number is ${array.toSet().length}");
print("The distinct numbers are: ${array.toSet().join(" ")}");

}

void printWelcomeMessage() {
  print(
    "Welcome to my program\n"
        "The program reads ten numbers, removes duplicates, and displays the number of distinct values along with the distinct numbers in their original order. \n",
  );
}

List<int> getUserArray() {
  print("please enter 10 number");
  List<int> array = [];
int i=1;
  while (array.length<10) {
    print("Number $i:");
    int number = readValidNumber();


      array.add(number);
    i++;
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

