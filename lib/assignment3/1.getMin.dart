import 'dart:io';

void main (){
  List<int> array=[8, 0, 1, 5];
  printWelcomeMessage();
 String choice= getUserChoice();
  if (choice == 'y') {
    array = getUserArray();
  }
  int? minValue = getMinOfArray(array);
  if (minValue != null) {
    print("Array is: $array");
    print("Minimum value is: $minValue");
  }
  
}
void printWelcomeMessage() {
  print(
      "Welcome to my program\n"
          "This program prints the minimum value of a group\n"
          "Do you want to enter the group?\n"
          "Enter y for yes or n for no"
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

void getMin(List<int> array){
  if (array.isEmpty) {
    print("Array is empty");
    return;
  }
  int min =array[0];
  for(int i=1;i<array.length ;i++){
    if(array[i]<min){
      min=array[i];
    }
  }
  print(min);
}
int? getMinOfArray(List<int> array){
  if (array.isEmpty) {
    print("Array is empty");
    return null;
  }
  int min =array[0];
  for(int element in array){
    if(element<min){
      min=element;
    }
  }
  return min;
}
