import 'personClass.dart';

class Student extends Person {
  int numCourses = 0;
  List<String> courses = [];
  List<int> grades = [];

  Student(String name, String address) : super(name, address);

  void addCourseGrade(String course, int grade) {
    courses.add(course);
    grades.add(grade);
    numCourses++;
  }

  void printGrades() {
    for (int i = 0; i < courses.length; i++) {
      print("${courses[i]}: ${grades[i]}");
    }
  }

  double getAverageGrades() {
    int sum = 0;
    for (var g in grades) {
      sum += g;
    }
    return grades.isEmpty ? 0 : sum / grades.length;
  }

  @override
  String toString() {
    return "Student: name = $name, address = $address";
  }
}
