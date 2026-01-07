
import "dart:io";
void main (){
  print("please enter a number ");
  var input=int.parse(stdin.readLineSync()!);
  //Solution 1
  if (input%2==0){
    print("yes");
  }else{
    print("no");
  }
  //Solution 2
  print("---------------------");
  var result= (input%2==0)?"yes":"no";
  print(result);
  //solution 3
  print("---------------------");
  print((input%2==0)?"yes":"no");
  //solution 4
  print("---------------------");
  switch (input%2) {
    case 0:
      print("yes");
      break;
    case 1:
      print("no");
      break;
    default:
      print("yes");
  }
}