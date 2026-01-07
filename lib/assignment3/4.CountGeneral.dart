
import '1.getMin.dart';

void main (){
  List<int> array=[ 1, 2, 3, 1, 3, 6 ];
  printWelcomeMessage();
  String choice= getUserChoice();
  if (choice == 'y') {
    array = getUserArray();
  }
  print("Array is: $array");
  CountGeneral(array);



}
void printWelcomeMessage() {
  print(
      "Welcome to my program\n"
          "This program prints the number of times the numbers appear in the set.\n"
          "Do you want to enter the group?\n"
          "Enter y for yes or n for no"
  );
}
void CountGeneral(List<int> array) {
  if (array.isEmpty) {
    print("Array is empty");
    return;
  }

  for (int j = 0; j < array.length; j++) {
    bool alreadyCounted = false;
    for (int i = 0; i < j; i++) {
      if (array[i] == array[j]) {
        alreadyCounted = true;
        break;
      }
    }
    if (alreadyCounted) continue;
    int sum = 0;
    for (int i = 0; i < array.length; i++) {
      if (array[i] == array[j]) {
        sum++;
      }
    }

    print("${array[j]} -> $sum");
  }
}

