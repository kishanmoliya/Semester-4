// Write a dart code to check whether the given number is positive or negative

import 'dart:io';

void main() {
  stdout.write("Enter the Number = ");
  int num = int.parse(stdin.readLineSync()!);

  print(num >= 0 ? "Positive" : "Negative");
}
