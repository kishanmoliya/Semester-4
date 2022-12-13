// Write a dart code that prompts the user to enter 5 numbers, stores them in a List, and displays
// them in increasing order.

import 'dart:io';

void main() {
  List list = [];

  for (int i = 0; i < 5; i++) {
    stdout.write("ENter the value of number ${i + 1} = ");
    list.add(stdin.readLineSync()!);
  }

  list.sort();
  print(list);
}
