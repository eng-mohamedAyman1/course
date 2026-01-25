import 'dart:io';
import '1.checkElement.dart' ;

void main() {
  List<int> array = [1, 9, 0, 5, 4, 2 ];
  printWelcomeMessage();
  String choice = getUserChoice();
  if (choice == 'y') {
    array = getUserArray();
  }
  int? result = findSecondNumber(array);

  print(" the second smallest element in an array $array is  : $result");
   array.sort();
   result=array[1]??0;
  print("------------------------------------------------------------");
  print(" the second smallest element in an array $array is  : $result");
}

void printWelcomeMessage() {
  print(
    "Welcome to my program\n"
        "This program is print tne second smallest element  in array \n"
        "Do you want to enter the group?\n"
        "Enter y for yes or n for no",
  );
}
int? findSecondNumber(List<int> array) {
  if (array.length < 2) return null;

  int firstNumber = array[0];
  int secondNumber = array[0];

  for (int number in array) {
    if (number < firstNumber) {
      secondNumber = firstNumber;
      firstNumber = number;
    } else if (number > firstNumber && number < secondNumber) {
      secondNumber = number;
    }
  }

  return secondNumber;
}




