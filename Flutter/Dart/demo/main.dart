import 'dart:io';

import 'students.dart';

void main(List<String> args) {
  Students student = Students();
  //student.getStudentDetails();

  stdout.write("Enter Choice = ");
  int choice = int.parse(stdin.readLineSync()!);
  for (int i = 0; i < choice; i++) {
    student.getStudentDetails();
  }
  //student.displayStudentDetails();

  // stdout.write("Can you find any student! y/n = ");
  // String flag = stdin.readLineSync()!;
  // if (flag == "y") {
  //   stdout.write("Enter the Student Id = ");
  //   int id = int.parse(stdin.readLineSync()!);
  //   student.getById(id);
  // } else {
  //   print("Ok No Problem");
  // }

  // stdout.write("Can you Delete any student! y/n = ");
  // String temp = stdin.readLineSync()!;
  // if (temp == "y") {
  //   stdout.write("Enter the Student Id = ");
  //   int id = int.parse(stdin.readLineSync()!);
  //   student.delete(id);
  //   student.displayStudentDetails();
  // } else {
  //   print("Ok No Problem");
  // }

  bool flag = true;
  while (flag) {
    print(
        "1) Display Student \n2) Find One Student \n3) Delete Student \n4) Exit");
    stdout.write("Enter Operation = ");
    int operation = int.parse(stdin.readLineSync()!);

    switch (operation) {
      case 1:
        {
          student.displayStudentDetails();
        }
        break;

      case 2:
        {
          // if (flag == "y") {
          stdout.write("Enter the Student Id = ");
          int id = int.parse(stdin.readLineSync()!);
          student.getById(id);
          // } else {
          //   print("Ok No Problem");
          // }
        }
        break;

      case 3:
        {
          // if (temp == "y") {
          stdout.write("Enter the Student Id = ");
          int id = int.parse(stdin.readLineSync()!);
          student.delete(id);
          student.displayStudentDetails();
          // } else {
          //   print("Ok No Problem");
          // }
        }
        break;

      case 4:
        {
          flag = false;
        }
    }
  }
}
