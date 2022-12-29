// Write a dart code to accept a number and check whether the number is prime or not. Use
// method name check (int n). The method returns 1, if the number is prime otherwise, it returns
// 0

import 'dart:io';

void main(List<String> args) {
  stdout.write("Enter the Number = ");
  int? n = int.parse(stdin.readLineSync()!);

  primeNum pr = primeNum();

  pr.check(n);
  print(pr.temp == 1 && n != 0 && n != 1
      ? "$n is a Prime Number"
      : "$n is Not a Prime Number");
}

class primeNum {
  int temp = 1;

  int check(int n) {
    for (int i = 2; i <= n / 2; i++) {
      if (n % i == 0) {
        this.temp = 0;
        break;
      }
    }
    return this.temp;
  }
}
