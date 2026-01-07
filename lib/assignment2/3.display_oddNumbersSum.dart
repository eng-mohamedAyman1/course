import 'dart:io';
void main(){
  print ("please enter number");
  int input=int.parse(stdin.readLineSync()!);
  // solution 1
  int sum =0;
  print('The first $input natural number is :');
  for(int counter=1;counter<=input*2;counter+=2){
    stdout.write('$counter ');
    sum+=counter;
  }
  print('\nThe Sum of Natural Number upto $input terms : $sum');
  print("---------------------------------------------------------");
  // solution 2
  sum =0;
  int counter=1;
  print('The first $input natural number is :');
  while (counter<=input*2){
    sum+=counter;
    stdout.write('$counter ');
    counter+=2;
  }
  print('\nThe Sum of Natural Number upto $input terms : $sum');
  print("---------------------------------------------------------");
  // solution 3
  sum =0;
  counter=1;
  print('The first $input natural number is :');
  do{
    stdout.write('$counter ');
    sum+=counter;
    counter+=2;
  } while (counter<=input*2);
  print('\nThe Sum of Natural Number upto $input terms : $sum');
  print("---------------------------------------------------------");

}