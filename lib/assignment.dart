void main() {
  List<int> array = [10, 50, 80, 30];
  //int index =array.indexOf(800);
  //print(index);
  print(bubbleSort(array));

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
List<int> binarySort(List<int> array) {
  for (int j = 0; j < array.length; j++) {
    for (int i = 0; i < array.length - 1 ; i++) {
      if (array[i] > array[i + 1]) {
        int temp = array[i];
        array[i] = array[i + 1];
        array[i + 1] = temp;
      }
    }
  }
  return array;
}
