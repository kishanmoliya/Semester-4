// Write a dart code to read 2 lists and return a list that contains only the elements that are
// common between them.

import 'dart:io';

import '../03_Functions/primeFunction.dart';

void main(List<String> args) {
  List l1 = [];
  List l2 = [];
  List l3 = [];

  stdout.write("Enter List 1 Size = ");
  int? l1Size = int.parse(stdin.readLineSync()!);
  stdout.write("Enter List 2 Size = ");
  int? l2Size = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < l1Size; i++) {
    stdout.write("Enter the List 2 Element ${i + 1} = ");
    l1.add(stdin.readLineSync()!);
  }

  for (int i = 0; i < l2Size; i++) {
    stdout.write("Enter the List 2 Element ${i + 1} = ");
    l2.add(stdin.readLineSync()!);
  }

  for (int i = 0; i < l1Size; i++) {
    if (l2.contains(l1[i])) {
      l3.add(l1[i]);
    }
  }
  print(l3);
}
