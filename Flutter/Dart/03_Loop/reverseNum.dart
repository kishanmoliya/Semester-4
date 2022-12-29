// Write a dart code to print a given number in reverse order.

import 'dart:io';

void main() {
  stdout.write("Enter the Number = ");
  int numb = int.parse(stdin.readLineSync()!);

  int rem;
  int reverse = 0;
  while (numb > 0) {
    rem = numb % 10;
    reverse = reverse * 10 + rem;
    numb = numb ~/ 10;
  }
  print(reverse);
}

