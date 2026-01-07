void main() {
  List<int> array = [ 1, 0, 3, 6, 2, 5 ];
  print(bubbleSort(array));

}
void printWelcomeMessage() {
  print(
      "Welcome to my program\n"
          "This program show bubble sort\n"
          "Do you want to enter the group?\n"
          "Enter y for yes or n for no"
  );
}
List<int> bubbleSort(List<int> array) {
  for (int j = 0; j < array.length; j++) {
    bool swapped=false;
    for (int i = 0; i < array.length - 1-j ; i++) {
      if (array[i] > array[i + 1]) {
        int temp = array[i];
        array[i] = array[i + 1];
        array[i + 1] = temp;
        swapped =true;
      }
    }
    if (!swapped ) break;
  }
  return array;
}