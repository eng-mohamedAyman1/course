import 'dart:io';
void main(){
  print("please enter number to cal factorial");
  int input=int.parse(stdin.readLineSync()!);
  int factorial=1;
  for(int i=1;i<=input;i++){
    factorial*=i;
  }
  print("Factorial of $input equals $factorial");
}