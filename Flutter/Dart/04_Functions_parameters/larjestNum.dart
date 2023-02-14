// Write a dart code to find the maximum number from two numbers

import 'dart:io';

void main() {
  stdout.write("Enter the Number 1 = ");
  double? num1 = double.parse(stdin.readLineSync()!);
  stdout.write("Enter the Number 2 = ");
  double? num2 = double.parse(stdin.readLineSync()!);

  findInterest(num1, num2);
}

void findInterest(double num1, num2) {
  print(num1 > num2
      ? "Larjest Number form $num1 and $num2 = $num1"
      : "Larjest Number form $num1 and $num2 = $num2");
}
