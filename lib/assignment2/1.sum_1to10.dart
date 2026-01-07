
void main (){
  // solution 1
  int n = 10;
  int sum = n * (n + 1) ~/ 2;
  printResult(sum);
  // solution 2
   sum =0;
  for(int counter=1;counter<=10;counter++){
    sum+=counter;
  }
  printResult(sum);
  // solution 3
  sum =0;
  int counter=1;
  while (counter<=10){
    sum+=counter;
    counter++;
  }

  // solution 4
  sum =0;
  counter=1;
 do{
    sum+=counter;
    counter++;
  } while (counter<=10);
  printResult(sum);
}
void printResult(int sum){
  print("result of sum for 1 to 10 equal $sum");
  print("------------------------------------------");
}