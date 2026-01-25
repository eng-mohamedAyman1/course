import 'dart:io';
import '../assignment3/6.OptimizedBubbleSort.dart';

void main() {
  printWelcomeMessage();
  List<int> array = getUserArray();
  printCompare(compare(array, culAverage(array)));
}

void printWelcomeMessage() {
  print(
    "Welcome to my program\n"
        "The program compares each score with the average \n",
  );
}

List<int> getUserArray() {
  print("Enter the integers between 0 and 100:");
  List<int> array = [];

  while (true) {
    int number = readValidNumber();
    if (number < 0) {
      return array;
    }
    if (number >= 0 && number <= 100) {
      array.add(number);
      print("Enter the integers between 0 and 100 or enter negative number to stop"
      );
    }
  }
}

int readValidNumber() {
  int? number = int.tryParse(stdin.readLineSync()!);

  while (number == null) {
    print("Please enter a valid number");
    number = int.tryParse(stdin.readLineSync()!);
  }

  return number;
}
double culAverage(List<int>array){
  int average=0;
  array.forEach((element){average+=element;});
  return average/array.length;
}
List<int> compare(List<int>array,double average){
  List<int>count=List.filled(3, 0);
  array.forEach((element){(element>average)?count[0]++:(element==average)?count[1]++:count[2]++;});
  return count;
}
void printCompare(List<int>array){
  print("Number of scores above the average: ${array[0]}\n"
      "Number of scores below the average: ${array[2]}\n"
      "Number of scores equal to the average: ${array[1]}");
}

