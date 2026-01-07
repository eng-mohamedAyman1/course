import"dart:io";
void main(){
  print("please enter 3 number \nnumber 1=" );
  int  number1=int.parse(stdin.readLineSync()!);
  print("number 2=" );
  int  number2=int.parse(stdin.readLineSync()!);
  print("number 3=" );
  int  number3=int.parse(stdin.readLineSync()!);
  int max = (number1 >= number2)?
            (number1 >= number3 ? number1 : number3):
            (number2 >= number3 ? number2 : number3);

  int min = (number1 <= number2)?
            (number1 <= number3 ? number1 : number3):
            (number2 <= number3 ? number2 : number3);
  print("Max = $max\nMin = $min");

}