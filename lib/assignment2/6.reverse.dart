import 'dart:io';
void main(){
  print("please enter number ");
  int input=int.parse(stdin.readLineSync()!);
  int reverse=0;
  int digit=0;
  while(input!=0){
    digit=input%10;
    input=input~/10;
    reverse=reverse*10+digit;
  }
  print("Reverse equals $reverse");

}