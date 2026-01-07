import 'dart:io';

import '1.getMin.dart';

void main (){
  List<int> array=[ 1, 4, 2, 5, -1, 8 ];
  printWelcomeMessage();
  String choice= getUserChoice();
  if (choice == 'y') {
    array = getUserArray();
  }
  print("Array is: $array");
  stdout.write(" the result of sum even values is: ");
   sumEvenValueOfArray(array);


}
void printWelcomeMessage() {
  print(
      "Welcome to my program\n"
          "This program prints the sum even values of a group\n"
          "Do you want to enter the group?\n"
          "Enter y for yes or n for no"
  );
}
void sumEvenValueOfArray(List<int> array){
  if (array.isEmpty) {
    print("Array is empty");
    return;
  }
  int sum =0;
  for(int i=1;i<array.length ;i++){
    if(array[i]%2==0){
      sum+=array[i];
    }
  }
  print(sum);
}