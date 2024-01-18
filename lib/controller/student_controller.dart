import 'package:core_courses/model/student.dart';
import 'package:get/get.dart';

class StudentController extends GetxController {
  RxList<Rx<Student>> studentList = [
    Student(id: 1, name: 'Andrew', grade: 'A').obs,
    Student(id: 2, name: 'Brian', grade: 'B').obs,
    Student(id: 3, name: 'Catherine', grade: 'C').obs,
  ].obs;
  // RxList<Rx<Student>> studentList = RxList.empty();

  List<String> newStudentNameList = ['Andrew', 'Brian', 'Catherine'];
  List<String> newStudentGradeList = ['A+', 'B+', 'C+'];

  void updateName(int index, String name) {
    studentList[index].update((val) => val?.name = name);
  }

  void updateGrade(int index, String grade) {
    studentList[index].update((val) => val?.grade = grade);
  }
}
