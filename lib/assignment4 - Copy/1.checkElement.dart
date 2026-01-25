import 'dart:io';

void main() {
  List<int> array = [8, 0, 1, 5];
  printWelcomeMessage();
  String choice = getUserChoice();
  if (choice == 'y') {
    array = getUserArray();
  }
  print("Please enter a number to check");
  int number = readValidNumber();
  String result = checkNumber(array, number);

  print("Array $array is contains number $number : $result");
  print("------------------------------------------------------------");
  result = array.contains(number) ? "yes" : "no";
  print("Array $array is contains number $number : $result");
}

void printWelcomeMessage() {
  print(
    "Welcome to my program\n"
    "This program  test if an array contains a specific value or not\n"
    "Do you want to enter the group?\n"
    "Enter y for yes or n for no",
  );
}

String getUserChoice() {
  String input = stdin.readLineSync()!;

  while (input != 'y' && input != 'n') {
    print("Please enter y or n");
    input = stdin.readLineSync()!;
  }

  return input;
}

List<int> getUserArray() {
  print("How many numbers do you want to enter?");
  int count = readValidNumber();

  List<int> array = [];

  for (int i = 1; i <= count; i++) {
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

String checkNumber(List<int> array, int number) {
  if (array.isEmpty) {
    print("Array is empty");
    return 'no';
  }
  for (int element in array) {
    if (element == number) {
      return 'yes';
    }
  }
  return 'no';
}
