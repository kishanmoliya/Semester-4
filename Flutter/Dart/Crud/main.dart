import 'dart:io';

import 'students.dart';

void main(List<String> args) {
  Students student = Students();

  stdout.write("Enter Choice = ");
  int choice = int.parse(stdin.readLineSync()!);
  for (int i = 0; i < choice; i++) {
    student.getStudentDetails();
  }

  bool flag = true;
  while (flag) {
    print(
        "1) Display Student \n2) Find One Student \n3) Delete Student\n4) Update Student \n5) Exit");
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
          stdout.write("Enter Student Name You want find = ");
          String name = stdin.readLineSync()!;
          student.getById(name);
        }
        break;

      case 3:
        {
          stdout.write("Enter Student Name You want Delete = ");
          String name = stdin.readLineSync()!;
          student.delete(name);
        }
        break;

      case 4:
        {
          stdout.write("Enter Student Name You want Update = ");
          String name = stdin.readLineSync()!;
          student.update(name);
        }
        break;

      case 5:
        {
          flag = false;
        }
    }
  }
}
