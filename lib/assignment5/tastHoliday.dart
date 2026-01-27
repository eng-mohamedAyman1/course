import 'HolidayClass.dart';

void main(){
  Holiday day1=Holiday("day1", 5, 1);
  Holiday day2=Holiday("day2", 25, 1);
  List<Holiday> holidays = [
    day1,
    day2,
    Holiday("day3", 1, 7),
  ];
  print("Same month? ${Holiday.inSameMonth(day1,day2)}");
  print("Average day: ${Holiday.avgDate(holidays)}");

}