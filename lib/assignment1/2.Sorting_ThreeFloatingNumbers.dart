/*
Sorting Three Floating Numbers
Write a program that reads from user three floating-point numbers and sorts them. Your code
should handle all cases
*/
import"dart:io";
import "dart:math";
void main (){
  print("please enter 3 number \nnumber 1=" );
  double  number1=double.parse(stdin.readLineSync()!);
  print("number 2=" );
  double  number2=double.parse(stdin.readLineSync()!);
  print("number 3=" );
  double  number3=double.parse(stdin.readLineSync()!);
  double  temp=0;
//Solution 1
  if((number1>=number2)&&(number1>=number3)){
    if(number2>=number3){
      print("$number3\n$number2\n$number1");
    }else{
      print("$number2\n$number3\n$number1");
    }

   }else if((number2>=number1)&&(number2>=number3)){
    if(number1>=number3){
      print("$number3\n$number1\n$number2");
    }else{
      print("$number1\n$number3\n$number2");
    }
    }else {
    if(number1>=number2){
      print("$number2\n$number1\n$number3");
    }else{
      print("$number1\n$number2\n$number3");
    }
    }

  print("----------------------------------------");
  //Solution 2
  if (number1 > number2) {
    temp = number1;
    number1 = number2;
    number2 = temp;
  }
  if (number1 > number3) {
    temp = number1;
    number1 = number3;
    number3= temp;
  }
  if (number2 > number3) {
    temp = number2;
    number2 = number3;
    number3 = temp;
  }
  print("$number1\n$number2\n$number3");
  print("---------------------------");
  //Solution 3
  List<double> array = [number1, number2, number3];
  array.sort();
  for(int counter=0;counter<=array.length-1;counter++){
    print(array[counter]);
  }
  print("---------------------------");
  //Solution 4
  double minValue = min(number1, min(number2, number3));
  double maxValue = max(number1, max(number2, number3));
  double midValue = (number1 + number2 + number3) - minValue - maxValue;
  print("$minValue\n$midValue\n$maxValue");
}