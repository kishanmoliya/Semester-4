// Write a dart code to find out the largest number from the given 3 numbers using the conditional
// operator.

import 'dart:io';

void main() {
  stdout.write("Enter num1 = ");
  int num1 = int.parse(stdin.readLineSync()!);

  stdout.write("Enter num2 = ");
  int num2 = int.parse(stdin.readLineSync()!);

  stdout.write("Enter num3 = ");
  int num3 = int.parse(stdin.readLineSync()!);

  if (num1 > num2 && num1 > num3) {
    print("Larjest Number from $num1, $num2, $num3 = $num1");
  } else if (num2 > num1 && num2 > num3) {
    print("Larjest Number from $num1, $num2, $num3 = $num2");
  } else {
    print("Larjest Number from $num1, $num2, $num3 = $num3");
  }
}
