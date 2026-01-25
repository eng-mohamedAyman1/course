import 'dart:io';
import '1.checkElement.dart' ;

void main() {
  List<int> array = [1, 9, 0, 5, 4, 2 ];
  printWelcomeMessage();
  String choice = getUserChoice();
  if (choice == 'y') {
    array = getUserArray();
  }
  double result = calAverage(array);

  print("the average of Array $array is  : $result");
   result = array.fold<int>(0, (total, current) => total + current)/array.length;
print("------------------------------------------------------------");
  print("the average of Array $array is  : $result");
}

void printWelcomeMessage() {
  print(
    "Welcome to my program\n"
        "This program is calculation the average values in array \n"
        "Do you want to enter the group?\n"
        "Enter y for yes or n for no",
  );
}
double calAverage(List<int>array){
  int result=0;
  for(int x in array){
    result+=x;
  }
  return result/array.length;

}



