// Write a dart code to generate a Fibonacci series of N given numbers using

import 'dart:io';

void main() {
  stdout.write("Enter the Number = ");
  int? n = int.parse(stdin.readLineSync()!);

  findFibonacci(n);
}

void findFibonacci(int n) {
  int a = 0, b = 1, temp = 0;

  for (int i = 0; i < n; i++) {
    stdout.write("$a ");
    temp = a + b;
    a = b;
    b = temp;
  }
}
