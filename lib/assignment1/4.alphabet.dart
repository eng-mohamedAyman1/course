import "dart:io";

void main() {
  print("please enter a letter");
  String input = stdin.readLineSync()!;
  String letter=input[0];
  if (letter == 'a' ||letter == 'A'||
      letter == 'e' ||letter == 'E'||
      letter == 'i' ||letter == 'I'||
      letter == 'o' ||letter == 'O'||
      letter == 'u' ||letter == 'U'
  ) {
    print("The alphabet is a Vowel");
  } else {
    print("The alphabet is a Consonant");
  }
}
