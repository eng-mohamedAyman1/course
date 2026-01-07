import 'dart:io';

import '1.getMin.dart';

void main (){
  List<int> array=[ 1, 5, 2, 2, 5, 2 ];
  printWelcomeMessage();
  String choice= getUserChoice();
  if (choice == 'y') {
    array = getUserArray();
  }
  print("Array is: $array");
  int occurrences=count2(array);
  stdout.write("The number 2 appears $occurrences time(s) in the array.");



}void printWelcomeMessage() {
  print(
      "Welcome to my program\n"
          "This program prints the number of times the number 2 appears of a group\n"
          "Do you want to enter the group?\n"
          "Enter y for yes or n for no"
  );
}
int count2(List<int> array){
  if (array.isEmpty) {
    print("Array is empty");
    return 0;
  }
  int sum =0;
  for(int i=0;i<array.length ;i++){
    if(array[i]==2){
      sum++;
    }
  }
  return sum;
}