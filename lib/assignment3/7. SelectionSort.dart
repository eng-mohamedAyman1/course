
import '1.getMin.dart';

void main (){
  List<int> array=[ 1, 2, 3, 1, 3, 6 ];
  printWelcomeMessage();
  String choice= getUserChoice();
  if (choice == 'y') {
    array = getUserArray();
  }
  print("Array is: $array");
  SelectionSort(array);



}
void printWelcomeMessage() {
  print(
      "Welcome to my program\n"
          "This program show selection sort\n"
          "Do you want to enter the group?\n"
          "Enter y for yes or n for no"
  );
}
void  SelectionSort(List<int>array){
  for(int j=0;j<array.length;j++){
    int minValue=j;
    for(int i=j+1;i<array.length;i++){
      if(array[minValue]>array[i]){
        minValue=i;
      }
    }
    int swap=array[j];
    array[j]=array[minValue];
    array[minValue]=swap;

  }
  print(array);
}
