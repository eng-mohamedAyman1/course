import 'dart:io';
import '../assignment3/6.OptimizedBubbleSort.dart';

void main() {
  printWelcomeMessage();
  List<int> array = getUserArray();
  showGrades(array);
}

void printWelcomeMessage() {
  print(
    "Welcome to my program\n"
    "This program is show students grades \n",
  );
}

List<int> getUserArray() {
  print("How many students do you want to enter?");
  int count = readValidNumber();

  List<int> array = [];

  for (int i = 1; i <= count; i++) {
    print("student $i:");
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
int maxValue(List<int> array){
  int max = array[0];

  for (int element in array) {
    if (element > max) {
      max = element;
    }
  }
  return max;
}
void showGrades(List<int> array) {
  int bestGrade = maxValue(array);

  for (int i = 0; i < array.length; i++) {
    String grade;

    if (array[i] >= bestGrade - 10) {
      grade = 'A';
    } else if (array[i] >= bestGrade - 20) {
      grade = 'B';
    } else if (array[i] >= bestGrade - 30) {
      grade = 'C';
    } else if (array[i] >= bestGrade - 40) {
      grade = 'D';
    } else {
      grade = 'F';
    }

    print('Student ${i + 1} score is ${array[i]} and grade is $grade');
  }
}
