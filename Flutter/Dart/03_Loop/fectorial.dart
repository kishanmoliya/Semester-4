// Write a dart code to find the factorial of the given number.

import 'dart:io';

void main() {
  stdout.write("Enter the Number = ");
  int? numb = int.parse(stdin.readLineSync()!);

  int factorial = 1;
  for (int i = 1; i <= numb; i++) {
    factorial *= i;
  }

  if (numb != 0)
    print("Factorial of $numb = $factorial");
  else
    print("Factorial of $numb = 0");
}
