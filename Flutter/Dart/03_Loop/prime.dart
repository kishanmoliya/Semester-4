// Write a dart code to find whether the given number is prime or not.

import 'dart:io';

void main(List<String> args) {
  stdout.write("Enter the Number = ");
  int? numb = int.parse(stdin.readLineSync()!);

  bool flage = true;
  for (int i = 2; i <= numb / 2; i++) {
    if (numb % i == 0) {
      flage = false;
      break;
    }
  }

  print(flage && numb != 0 && numb != 1
      ? "Number is Prime"
      : "Number is Not Prime");
}
