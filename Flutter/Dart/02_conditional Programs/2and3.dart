// Write a dart code to print numbers between two given numbers which are divisible by 2 but not
// divisible by 3.

import 'dart:io';

void main() {
  stdout.write("Enter num1 = ");
  int? num1 = int.parse(stdin.readLineSync()!);

  stdout.write("Enter num2 = ");
  int? num2 = int.parse(stdin.readLineSync()!);

  if (num1 % 2 == 0 && num1 % 3 != 0) {
    print("Number is = $num1");
  }
  if (num2 % 2 == 0 && num2 % 3 != 0) {
    print("Number is = $num2");
  } else {
    print("No any Number!");
  }
}
