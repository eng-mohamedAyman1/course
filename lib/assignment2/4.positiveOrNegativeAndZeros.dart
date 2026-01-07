import 'dart:io';
void main(){
  print("How many Number you want to check ?");
  int input=int.parse(stdin.readLineSync()!);
  int  positive = 0, negative = 0, zeros = 0,number=0;
  print("Enter $input numbers");
  for(int counter=0;counter<input;counter++){
    print("Please enter number ${counter + 1}:");
    number=int.parse(stdin.readLineSync()!);
    (number>0)?positive++:(number==0)?zeros++:negative++;
  }
  print("You Entered $positive positive numbers And $negative negative and $zeros Zero");
}