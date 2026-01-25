import 'dart:io';
import '../assignment3/6.OptimizedBubbleSort.dart';

void main() {
  printWelcomeMessage();
  List<int> array = getUserArray();
  printOccurrences(countOccurrences(array));
  print("-------------------------------");
  occurrences(array);
}

void printWelcomeMessage() {
  print(
    "Welcome to my program\n"
        "This program is counts the occurrences of each element in array \n",
  );
}

List<int> getUserArray() {
  print("Enter the integers between 1 and 100:");
  List<int> array = [];

  while (true) {
    int number = readValidNumber();
      if (number == 0) {
        return array;
      }
      if (number >= 1 && number <= 100) {
        array.add(number);
        print("Enter the integers between 1 and 100 or enter 0 to exit"
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
Map<int, int> countOccurrences(List<int> array) {
  Map<int, int> countMap = {};

  for (int element in array) {
    countMap[element] = (countMap[element] ?? 0) + 1;
  }

  return countMap;
}

void printOccurrences(Map<int, int>map){
  map.forEach((key, value) {
    print('$key occurs $value ${value == 1 ? 'time' : 'times'}');
  });
}
void occurrences(List<int>array){
  List<int> count = List.filled(101, 0);
  for(int element in array){
    count[element+1]++;
  }

  for(int i=0;i<count.length;i++){
    if(count[i]>0){
      print('${i-1} occurs ${count[i]} ${count[i] == 1 ? 'time' : 'times'}');

    }

  }
}
