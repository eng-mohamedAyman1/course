class Holiday{
   String name;
   int month;
   int day;
  Holiday(this.name,this.day,this.month){}
  static bool inSameMonth(Holiday class1,Holiday class2){
    return class1.month==class2.month;

  }
  static double avgDate(List<Holiday>array){
    int sum=0;
    if(array.isEmpty) return 0;
    for(var element in array){
      sum+=element.day;
    }
    return sum/ array.length;;
    }
}