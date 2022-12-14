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

  getById(name) {
    for (int i = 0; i < stuList.length; i++) {
      Map<String, dynamic> stu = stuList[i];

      if (name.toString().toLowerCase() ==
          stu["student_name"].toString().toLowerCase()) {
        print("Student Id : ${stu['student_id']}");
        print("Student Name : ${stu['student_name']}");
        print("Student Age : ${stu['student_age']}\n");
      } else {
        print("Student Not Found!");
      }
    }
  }

  delete(name) {
    for (int i = 0; i < stuList.length; i++) {
      Map<String, dynamic> stu = stuList[i];

      if (name.toString().toLowerCase() ==
          stu["student_name"].toString().toLowerCase()) {
        stuList.remove(stuList[i]);
      } else {
        print("Student Not Found");
      }
    }
  }

  update(name) {
    for (int i = 0; i < stuList.length; i++) {
      Map<String, dynamic> stu = stuList[i];

      if (name.toString().toLowerCase() ==
          stu["student_name"].toString().toLowerCase()) {
        stdout.write("Enter the Id : ");
        stu["student_id"] = stdin.readLineSync();
        stdout.write("Enter the Name : ");
        stu["student_name"] = stdin.readLineSync();
        stdout.write("Enter the Age : ");
        stu["student_age"] = stdin.readLineSync();
      } else {
        print("Student Not Found!");
      }
    }
  }
}
