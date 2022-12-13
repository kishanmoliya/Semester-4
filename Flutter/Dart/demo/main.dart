import 'dart:io';

import 'students.dart';

void main(List<String> args) {
  Students student = Students();
  // student.getStudentDetails();
  // student.displayStudentDetails();

  stdout.write("Enter Choice = ");
  int choice = int.parse(stdin.readLineSync()!);
  for (int i = 0; i < choice; i++) {
    student.getStudentDetails();
  }
  student.displayStudentDetails();

  stdout.write("Can you find any student! y/n = ");
  String flag = stdin.readLineSync()!;
  if (flag == "y") {
    stdout.write("Enter the Student Id = ");
    int id = int.parse(stdin.readLineSync()!);
    student.getById(id);
  } else {
    print("Ok No Problem");
  }
}
