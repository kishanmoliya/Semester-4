import 'dart:io';

class Students {
  int? student_id, student_age;
  String? student_name;

  List<Map<String, dynamic>> stuList = [];

  dynamic getStudentDetails({Students}) {
    Map<String, dynamic> stu = {};

    stdout.write("Enter the Student ID = ");
    stu['student_id'] = int.parse(stdin.readLineSync()!);
    stdout.write("Enter the Student Name = ");
    stu["student_name"] = (stdin.readLineSync()!);
    stdout.write("Enter the Student Age = ");
    stu["student_age"] = int.parse(stdin.readLineSync()!);
    print("\n");

    stuList.add(stu);
  }

  void displayStudentDetails() {
    print("   Student Details");
    for (int i = 0; i < stuList.length; i++) {
      Map<String, dynamic> stu = stuList[i];

      print("Student Id : ${stu['student_id']}");
      print("Student Name : ${stu['student_name']}");
      print("Student Age : ${stu['student_age']}\n");
    }
  }

  getById(id) {
    Map<String, dynamic> stu = stuList[(id - 1)];
    if (stu['student_id'] == id) {
      print("Student Id : ${stu['student_id']}");
      print("Student Name : ${stu['student_name']}");
      print("Student Age : ${stu['student_age']}\n");
    } else {
      print("Student Not Found!");
    }
  }

  delete(id) {
    Map<String, dynamic> stu = stuList[(id - 1)];
    if (stu['student_id'] == id) {
      stuList.remove(stuList[id]);
    } else {
      print("Student Not Found");
    }
  }
}
